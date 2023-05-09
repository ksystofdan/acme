<?php namespace Np\DashboardLinksWidgetExtension;

use Anomaly\DashboardModule\Widget\Contract\WidgetInterface;
use Anomaly\DashboardModule\Widget\Extension\WidgetExtension;
use Anomaly\Streams\Platform\Addon\Extension\Extension;

class DashboardLinksWidgetExtension extends WidgetExtension
{

    /**
     * This extension provides...
     *
     * This should contain the dot namespace
     * of the addon this extension is for followed
     * by the purpose.variation of the extension.
     *
     * For example anomaly.module.store::gateway.stripe
     *
     * @var null|string
     */
    protected $provides = 'anomaly.module.dashboard::widget.dashboard_links';


    /**
     * Load the widget data.
     *
     * @param WidgetInterface $widget
     */
    protected function load(WidgetInterface $widget)
    {
    }

    protected function content(WidgetInterface $widget) {
        $dashboard_links = [
            ['title' => 'Pages', 'url' => url('admin/pages'), 'icon' => 'laptop'],
            ['title' => 'News', 'url' => url('admin/news '), 'icon' => 'newspaper-o'],
            ['title' => 'Industries', 'url' => url('admin/industries '), 'icon' => 'industry'],
            ['title' => 'Products', 'url' => url('admin/products'), 'icon' => 'product-hunt'],
            ['title' => 'Links', 'url' => url('admin/links'), 'icon' => 'link'],
            ['title' => 'Files', 'url' => url('admin/files'), 'icon' => 'file-image-o'],
            ['title' => 'Translates', 'url' => url('admin/translations'), 'icon' => 'language'],
            ['title' => 'Users', 'url' => url('admin/users'), 'icon' => 'user']
        ];

        $widget->setContent(view('np.extension.dashboard_links_widget::template', compact('dashboard_links')  ));
    }
}
