<?php namespace Np\TranslationsModule\Settings\Form;

use Anomaly\Streams\Platform\Message\MessageBag;
use Illuminate\Support\Facades\Schema;

/**
 * Class SiteFormHandler
 *
 * @link          http://pyrocms.com/
 * @author        PyroCMS, Inc. <support@pyrocms.com>
 * @author        Ryan Thompson <ryan@pyrocms.com>
 * @package       Anomaly\SitesModule\Site\Form
 */
class SettingsFormHandler
{

    /**
     * Handle the form.
     *
     * @param SiteFormBuilder $builder
     *
     */
    public function handle(SettingsFormBuilder $builder, MessageBag $messages)
    {
        if (!$builder->canSave()) {
            return;
        }

        if ($builder->getFormMode() == 'create') {

            $fieldSlug = 'value_' . $builder->getFormValue('slug');
            Schema::connection('core')->table('translations', function($table) use($fieldSlug)
            {
                $table->text($fieldSlug)->nullable()->default('');
            });
        }

        $builder->saveForm();
    }
}
