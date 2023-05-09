<?php namespace Np\TranslationsModule;

use Anomaly\Streams\Platform\Addon\Module\Module;

class TranslationsModule extends Module
{

    /**
     * The navigation display flag.
     *
     * @var bool
     */
    protected $navigation = true;

    /**
     * The addon icon.
     *
     * @var string
     */
    protected $icon = 'fa fa-language';

    /**
     * The module sections.
     *
     * @var array
     */
    protected $sections = [
        'translations'   => [
            'buttons' => [
                'new_translation',
            ],
        ],
        'settings' => [
            'buttons' => [
                'add_language',
            ],
        ],
    ];

}
