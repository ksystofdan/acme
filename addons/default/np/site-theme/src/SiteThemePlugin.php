<?php namespace Np\SiteTheme;

use Anomaly\Streams\Platform\Addon\Plugin\Plugin;
use Anomaly\Streams\Platform\Addon\Plugin\PluginCriteria;
use Anomaly\Streams\Platform\Support\Collection;
use Anomaly\Streams\Platform\Support\Decorator;
use Np\SiteTheme\Navigation\Command\RenderNavigation;

/**
 * Class SiteThemePlugin
 *
 * @link          http://pyrocms.com/
 * @author        PyroCMS, Inc. <support@pyrocms.com>
 * @author        Ryan Thompson <ryan@pyrocms.com>
 */
class SiteThemePlugin extends Plugin
{

    /**
     * Get the plugin functions.
     *
     * @return array
     */
    public function getFunctions()
    {
        return [
            new \Twig_SimpleFunction(
                'renderTopNavigationLinks',
                function ($template = 'navigation') {
                    return new PluginCriteria(
                        'render',
                        function (Collection $options) use ($template) {

                            return $this->dispatch(new RenderNavigation($options->put('view', $template )));
                        }
                    );
                },
                [
                    'is_safe' => ['html'],
                ]
            )
        ];
    }
}
