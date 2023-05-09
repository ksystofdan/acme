<?php namespace Np\TranslationsModule\Settings\Table;

use Anomaly\Streams\Platform\Ui\Table\TableBuilder;

/**
 * Class DomainTableBuilder
 *
 * @link   http://pyrocms.com/
 * @author PyroCMS, Inc. <support@pyrocms.com>
 * @author Ryan Thompson <ryan@pyrocms.com>
 */
class SettingsTableBuilder extends TableBuilder
{

    /**
     * The table columns.
     *
     * @var array
     */
    protected $columns = [

        'entry.name' => [
            'heading' => 'np.module.translations::field.name.name',
        ],
        'entry.slug' => [
            'heading' => 'np.module.translations::field.slug.name',
        ],
        'entry.is_active' => [
            'heading' => 'np.module.translations::field.show_in_menu.name',
            //'value' => 'entry.is_active.label'
        ]
    ];

    /**
     * The table buttons.
     *
     * @var array
     */
    protected $buttons = [
        'edit',
        /*
        'view' => [
            'href'   => 'http://{entry.domain}',
            'target' => '_blank',
        ],
     */
    ];

    /**
     * The table actions.
     *
     * @var array
     */
    protected $actions = [
        'delete',
    ];

    /**
     * The table options.
     *
     * @var array
     */
    protected $options = [
        'order_by' => [
            'order' => 'ASC',
        ],
    ];
}
