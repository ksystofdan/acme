<?php namespace Np\TranslationsModule\Http\Controller\Admin;

use Anomaly\Streams\Platform\Http\Controller\AdminController;
use Np\TranslationsModule\Translations\Form\TranslationsFormBuilder;
use Np\TranslationsModule\Translations\Table\TranslationsTableBuilder;

/**
 * Class SitesController
 *
 * @link          http://pyrocms.com/
 * @author        PyroCMS, Inc. <support@pyrocms.com>
 * @author        Ryan Thompson <ryan@pyrocms.com>
 * @package       Anomaly\Streams\Platform\Site\Http\Controller\Admin
 */
class TranslationsController extends AdminController
{

    /**
     * Return an index of sites.
     *
     * @param TranslationsTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(TranslationsTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new site.
     *
     * @param TranslationsFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(TranslationsFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing site.
     *
     * @param TranslationsFormBuilder        $form
     * @param                        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(TranslationsFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
