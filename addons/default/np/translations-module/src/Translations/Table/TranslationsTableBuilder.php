<?php namespace Np\TranslationsModule\Translations\Table;

use Anomaly\Streams\Platform\Ui\Table\Table;
use Anomaly\Streams\Platform\Ui\Table\TableBuilder;
use Np\TranslationsModule\Settings\Contract\SettingsRepositoryInterface;
// use Anomaly\Streams\Platform\Ui\Table\Component\Row\RowCollection;
use Np\TranslationsModule\Translations\Table\Filter\SearchKeyFilter;
use Np\TranslationsModule\Translations\Table\Filter\SearchValueFilter;

/**
 * Class DomainTableBuilder
 *
 * @link   http://pyrocms.com/
 * @author PyroCMS, Inc. <support@pyrocms.com>
 * @author Ryan Thompson <ryan@pyrocms.com>
 */
class TranslationsTableBuilder extends TableBuilder
{

    /**
     * The table columns.
     *
     * @var array
     */
    /*
    protected $columns = [

        'entry.key'           => [
            'heading' => 'np.module.translations::field.name.name',
        ],

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
    
    
    protected $filters = [
        'key' => [
            'filter'      => 'input',
            'query'       => SearchKeyFilter::class,
            'placeholder' => 'Search For Key',
        ],
        'value' => [
            'filter'      => 'input',
            'query'       => SearchValueFilter::class,
            'placeholder' => 'Search For Translations',
        ],
    ];

    /**
     * The table options.
     *
     * @var array
     */
    protected $options = [
        'order_by' => [
            'key' => 'ASC',
        ],
    ];

    public function __construct(Table $table, SettingsRepositoryInterface $settings)
    {
        parent::__construct($table);
        
        $columns = [
            'entry.key'           => [
                'heading' => 'np.module.translations::field.key.name',
            ],
        ];
        
        $langs = $settings->all()->pluck('slug')->toArray();
        foreach ($langs as $lang){
            $langSlug = 'entry.value_'.$lang;
            $columns[$langSlug] = [
                'heading' => strtoupper($lang)
            ];
        }
        $this->setColumns($columns);
    }

}
