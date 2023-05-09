<?php namespace Np\PsiModule\Http\Controller\Admin;

use Anomaly\Streams\Platform\Ui\ControlPanel\ControlPanelBuilder;
use Anomaly\Streams\Platform\Version\Contract\VersionInterface;
use Anomaly\Streams\Platform\Version\Table\VersionTableBuilder;
use Np\PsiModule\Products\ProductsModel;

/**
 * Class VersionsController
 *
 * @link   http://pyrocms.com/
 * @author PyroCMS, Inc. <support@pyrocms.com>
 * @author Ryan Thompson <ryan@pyrocms.com>
 */
class ProductsVersionsController extends \Anomaly\Streams\Platform\Http\Controller\VersionsController
{

    /**
     * The versionable model.
     *
     * @var string
     */
    protected $model = ProductsModel::class;


        /**
     * Return a list of versions for the variable group.
     *
     * @param VersionTableBuilder $table
     * @param                     $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(VersionTableBuilder $table)
    {


        /**
         * Mimic the parent controllers method.
         */
        $table
            ->setType($this->getModel())
            ->setId($this->request->route('id'));

        $versionable = $table->getVersionableInstance();

        if ($current = $versionable->getCurrentVersion()) {
            $table->setCurrent($current);
        }

        /* @var ControlPanelBuilder $controlPanel */
        $controlPanel = $this->container->make(ControlPanelBuilder::class);

        $section = $controlPanel->getControlPanelActiveSection();
        // dd($controlPanel);
        /**
         * Mimic the default table buttons handler
         * and override the href so that we edit
         * the group and not the versionable ID.
         */
        // $table->setButtons(
        //     [
        //         'load'    => [
        //             'href'     => $section->getHref(
        //                 'edit/{request.input.group}?version={entry.version}&versionable={entry.versionable_type}'
        //             ),
        //             'disabled' => function (VersionInterface $entry) use ($current) {

        //                 if ($current->getVersion() !== $entry->getVersion()) {
        //                     return false;
        //                 }

        //                 return true;
        //             },
        //         ],
        //     ]
        // );

        $table->setButtons([
            'load' => [
                'href' => 'admin/products/products/edit/{entry.versionable_id}?version={entry.version}&versionable={entry.versionable_type}',
                'disabled' => function (VersionInterface $entry) use ($current) {

                    if ($current->getVersion() !== $entry->getVersion()) {
                        return false;
                    }

                    return true;
                },
            ]
        ]);

        return $table->render();
    }


}
