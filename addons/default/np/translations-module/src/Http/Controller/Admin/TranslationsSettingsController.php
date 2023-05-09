<?php namespace Np\TranslationsModule\Http\Controller\Admin;

use Anomaly\Streams\Platform\Http\Controller\AdminController;
use Np\TranslationsModule\Settings\Form\SettingsFormBuilder;
use Np\TranslationsModule\Settings\Table\SettingsTableBuilder;

/**
 * Class DomainsController
 *
 * @link          http://pyrocms.com/
 * @author        PyroCMS, Inc. <support@pyrocms.com>
 * @author        Ryan Thompson <ryan@pyrocms.com>
 * @package       Anomaly\Streams\Platform\Site\Http\Controller\Admin
 */
class TranslationsSettingsController extends AdminController
{

    /**
     * Return an index of domains.
     *
     * @param DomainTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(SettingsTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new domain.
     *
     * @param DomainFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(SettingsFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing domain.
     *
     * @param DomainFormBuilder      $form
     * @param                        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(SettingsFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
