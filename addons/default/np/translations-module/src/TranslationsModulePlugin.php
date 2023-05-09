<?php namespace Np\TranslationsModule;

use Anomaly\Streams\Platform\Addon\Plugin\Plugin;

use Anomaly\Streams\Platform\Support\Decorator;
use Np\TranslationsModule\Translations\Command\GetTranslation;
use Np\TranslationsModule\Translations\Contract\TranslationsRepositoryInterface;
use Np\TranslationsModule\Translations\TranslationsModel;
use Np\TranslationsModule\Settings\SettingsModel;

/**
 * Class HelperPlugin
 *
 * @link          http://pyrocms.com/
 * @author        PyroCMS, Inc. <support@pyrocms.com>
 * @author        Ryan Thompson <ryan@pyrocms.com>
 */
class TranslationsModulePlugin extends Plugin
{

    /**
     * Available helper functions.
     *
     * @var array
     */
    protected $functions = [
        't' => [
            'is_safe' => ['html'],
        ],
        'home_page_url' => [
            'is_safe' => ['html'],
        ]
    ];

    /**
     * Return plugin functions.
     *
     * @return array
     */
    public function getFunctions()
    {
        return array(
            new \Twig_SimpleFunction(
                't',
                function ($key) {
                    return (new Decorator())->decorate($this->dispatch(new GetTranslation($key)));
                },
                array('is_safe' => array('html'))
            ),
            new \Twig_SimpleFunction(
                'home_page_url',
                function () {
                    return home_page_url();
                },
                array('is_safe' => array('html'))
            ),

            new \Twig_SimpleFunction(
                'language_select',
                function ($view = null) {
                    $view = $view ? : 'np.module.translations::plugins/language_select';

                    $items = (new SettingsModel())
                        ->newQuery()
                        ->where('is_active', 1)
                        ->get();
                    //dd($items);
                    return view($view, [
                        'items' => $items,
                    ]);
                },
                ['is_safe' => ['html']]
            ),
            
            //new \Twig_SimpleFunction('t', array($this, 'translate'), array('is_safe' => array('html'))),
        );
    }

    public function translate($value)
    {

        return $value;
    }
}
