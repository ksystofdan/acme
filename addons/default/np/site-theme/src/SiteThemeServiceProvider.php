<?php namespace Np\SiteTheme;

use Anomaly\Streams\Platform\Addon\Addon;
use Anomaly\Streams\Platform\Addon\AddonServiceProvider;
use Anomaly\Streams\Platform\Http\Controller\VersionsController;
use Anomaly\Streams\Platform\Version\VersionRouter;
use Illuminate\Pagination\AbstractPaginator;
use Illuminate\Routing\Router;
use Np\PsiModule\Http\Controller\Admin\ProductsVersionsController;

class SiteThemeServiceProvider extends AddonServiceProvider
{

    /**
     * Additional addon plugins.
     *
     * @type array|null
     */
    protected $plugins = [
        SiteThemePlugin::class
    ];

    /**
     * The addon Artisan commands.
     *
     * @type array|null
     */
    protected $commands = [];

    /**
     * The addon's scheduled commands.
     *
     * @type array|null
     */
    protected $schedules = [];

    /**
     * The addon API routes.
     *
     * @type array|null
     */
    protected $api = [];

    /**
     * The addon routes.
     *
     * @type array|null
     */
    protected $routes = [
        // 'admin/news' => [
        //    'uses' => 'Np\PsiModule\Http\Controller\Admin\NewsController@index',
        //    'streams::addon' => 'anomaly.module.news',
        //    'anomaly.module.streams::stream.id' => '54',
        //    'anomaly.module.streams::group.id' => '5',
        // ]

        'admin/products/versions/{id}' => [
           'uses' => 'Np\PsiModule\Http\Controller\Admin\ProductsVersionsController@index',
           'as' => 'anomaly.module.products::versions.index',
           'streams::addon' => 'anomaly.module.products',
           'anomaly.module.streams::stream.id' => '44',
           'anomaly.module.streams::group.id' => '3',
        ]
    ];

    /**
     * The addon middleware.
     *
     * @type array|null
     */
    protected $middleware = [
        //Np\SiteTheme\Http\Middleware\ExampleMiddleware::class
    ];

    /**
     * Addon group middleware.
     *
     * @var array
     */
    protected $groupMiddleware = [
        //'web' => [
        //    Np\SiteTheme\Http\Middleware\ExampleMiddleware::class,
        //],
    ];

    /**
     * Addon route middleware.
     *
     * @type array|null
     */
    protected $routeMiddleware = [];

    /**
     * The addon event listeners.
     *
     * @type array|null
     */
    protected $listeners = [
        //Np\SiteTheme\Event\ExampleEvent::class => [
        //    Np\SiteTheme\Listener\ExampleListener::class,
        //],
    ];

    /**
     * The addon alias bindings.
     *
     * @type array|null
     */
    protected $aliases = [
        //'Example' => Np\SiteTheme\Example::class
    ];

    /**
     * The addon class bindings.
     *
     * @type array|null
     */
    protected $bindings = [];

    /**
     * The addon singleton bindings.
     *
     * @type array|null
     */
    protected $singletons = [];

    /**
     * Additional service providers.
     *
     * @type array|null
     */
    protected $providers = [
        //\ExamplePackage\Provider\ExampleProvider::class
    ];

    /**
     * The addon view overrides.
     *
     * @type array|null
     */
    protected $overrides = [
        //'streams::errors/404' => 'module::errors/404',
        //'streams::errors/500' => 'module::errors/500',
    ];

    /**
     * The addon mobile-only view overrides.
     *
     * @type array|null
     */
    protected $mobile = [
        //'streams::errors/404' => 'module::mobile/errors/404',
        //'streams::errors/500' => 'module::mobile/errors/500',
    ];

    /**
     * Register the addon.
     */
    public function register()
    {
        // Run extra pre-boot registration logic here.
        // Use method injection or commands to bring in services.
        if (\Request::segment(1) !== 'admin' and \Request::segment(1) !== 'streams') {
            AbstractPaginator::$defaultView = 'theme::partials/pagination';
        }

    }

    /**
     * Boot the addon.
     */
    public function boot()
    {
        // Run extra post-boot registration logic here.
        // Use method injection or commands to bring in services.
    }

    /**
     * Map additional addon routes.
     *
     * @param Router $router
     */
    public function map(Router $router, VersionRouter $versions)
    {

        $addon = new Addon();
        $addon->setType('module');
        $addon->setSlug('products');
        $addon->setVendor('anomaly');
        $addon->getNamespace();

        //$versions->route($addon, ProductsVersionsController::class, 'admin/products');

        //$router->route($addon, ProductsVersionsController::class, 'admin/news');

        //dd( $versions->routes );
        // dd($addon);
        // dd($this->addon);
        //dd($versionRouter);
        // Register dynamic routes here for example.
        // Use method injection or commands to bring in services.
    }

}
