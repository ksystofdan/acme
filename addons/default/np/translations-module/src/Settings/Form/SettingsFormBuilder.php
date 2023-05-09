<?php namespace Np\TranslationsModule\Settings\Form;

use Anomaly\SitesModule\Domain\Form\Validation\UniqueDomain;
use Anomaly\SitesModule\Site\SiteModel;
use Anomaly\Streams\Platform\Ui\Form\FormBuilder;

/**
 * Class DomainFormBuilder
 *
 * @link          http://pyrocms.com/
 * @author        PyroCMS, Inc. <support@pyrocms.com>
 * @author        Ryan Thompson <ryan@pyrocms.com>
 * @package       Anomaly\SitesModule\Domain\Form
 */
class SettingsFormBuilder extends FormBuilder
{

    /**
     * The form fields.
     *
     * @var array
     */
    protected $fields = [
        'name' => [
            'required' => true,
            'type' => 'anomaly.field_type.text',
            'label' => 'np.module.translations::field.name.name',
            'instructions' => 'np.module.translations::field.name.instructions',
        ],

        'slug' => [
            'required' => true,
            'type' => 'anomaly.field_type.text',
            'label' => 'np.module.translations::field.slug.name',
            'instructions' => 'np.module.translations::field.slug.instructions',
        ],
        'is_active' => [
            'required' => true,
            'type' => 'anomaly.field_type.select',
            'label' => 'np.module.translations::field.show_in_menu.name',
            'options' => ["1" => "Enabled", "0" => "Disabled"]
        ]

    ];
}
