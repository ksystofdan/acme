<?php namespace Np\TranslationsModule;

use Anomaly\Streams\Platform\Addon\AddonServiceProvider;
use Illuminate\Routing\Router;
use Np\TranslationsModule\Settings\Contract\SettingsRepositoryInterface;
use Np\TranslationsModule\Settings\SettingsRepository;
use Np\TranslationsModule\Translations\Contract\TranslationsRepositoryInterface;
use Np\TranslationsModule\Translations\TranslationsRepository;

class TranslationsModuleServiceProvider extends AddonServiceProvider
{

    /**
     * Additional addon plugins.
     *
     * @type array|null
     */
    protected $plugins = [
        'Np\TranslationsModule\TranslationsModulePlugin',
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
        'admin/translations'                    => 'Np\TranslationsModule\Http\Controller\Admin\TranslationsController@index',
        'admin/translations/create'             => 'Np\TranslationsModule\Http\Controller\Admin\TranslationsController@create',
        'admin/translations/edit/{id}'          => 'Np\TranslationsModule\Http\Controller\Admin\TranslationsController@edit',
        'admin/translations/settings'           => 'Np\TranslationsModule\Http\Controller\Admin\TranslationsSettingsController@index',
        'admin/translations/settings/create'    => 'Np\TranslationsModule\Http\Controller\Admin\TranslationsSettingsController@create',
        'admin/translations/settings/edit/{id}' => 'Np\TranslationsModule\Http\Controller\Admin\TranslationsSettingsController@edit',
    ];

    /**
     * The addon middleware.
     *
     * @type array|null
     */
    protected $middleware = [
        //Np\TranslationsModule\Http\Middleware\ExampleMiddleware::class
    ];

    /**
     * The addon route middleware.
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
        //Np\TranslationsModule\Event\ExampleEvent::class => [
        //    Np\TranslationsModule\Listener\ExampleListener::class,
        //],
    ];

    /**
     * The addon alias bindings.
     *
     * @type array|null
     */
    protected $aliases = [
        //'Example' => Np\TranslationsModule\Example::class
    ];

    /**
     * The addon class bindings.
     *
     * @type array|null
     */
    protected $bindings = [
        SettingsRepositoryInterface::class => SettingsRepository::class,
        TranslationsRepositoryInterface::class => TranslationsRepository::class,
    ];

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
    public function map(Router $router)
    {
        // Register dynamic routes here for example.
        // Use method injection or commands to bring in services.
    }

}
