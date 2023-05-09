<?php namespace Np\PsiModule;

use Anomaly\Streams\Platform\Addon\AddonServiceProvider;
use Anomaly\Streams\Platform\Model\Industries\IndustriesIndustriesCombinedEntryModel;
use Anomaly\Streams\Platform\Model\News\NewsCategoriesEntryModel;
use Anomaly\Streams\Platform\Model\News\NewsNewsEntryModel;
use Anomaly\Streams\Platform\Model\Knowledge\KnowledgeCategoriesEntryModel;
use Anomaly\Streams\Platform\Model\Knowledge\KnowledgeKnowledgeEntryModel;
use Illuminate\Routing\Router;

use Anomaly\Streams\Platform\Model\Products\ProductsBrandsEntryModel;
use Anomaly\Streams\Platform\Model\Products\ProductsComponentsGroupsEntryModel;
use Anomaly\Streams\Platform\Model\Products\ProductsProductsEntryModel;
use Anomaly\Streams\Platform\Model\Products\ProductsSolutionsEntryModel;
use Anomaly\Streams\Platform\Model\Repeater\RepeaterProductSpecificationsEntryModel;
use Anomaly\Streams\Platform\Model\Repeater\RepeaterProductVariationsEntryModel;
use Np\PsiModule\Brands\BrandsModel;
use Np\PsiModule\ComponentsGroups\ComponentsGroupsModel;
use Np\PsiModule\Industries\IndustriesCombinedModel;
use Np\PsiModule\News\NewsCategoriesModel;
use Np\PsiModule\News\NewsModel;
use Np\PsiModule\Knowledge\KnowledgeCategoriesModel;
use Np\PsiModule\Knowledge\KnowledgeModel;
use Np\PsiModule\Products\ProductsModel;
use Np\PsiModule\Products\ProductSpecificationMode;
use Np\PsiModule\Products\ProductVariationsModel;
use Np\PsiModule\Solutions\SolutionsModel;

class PsiModuleServiceProvider extends AddonServiceProvider
{

    /**
     * Additional addon plugins.
     *
     * @type array|null
     */
    protected $plugins = [];

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
    protected $api = [
        
        
    ];

    /**
     * The addon routes.
     *
     * @type array|null
     */
    protected $routes = [
        'psi' => 'Np\PsiModule\Http\Controller\PsiController@index',

        'product/{slug}' => 'Np\PsiModule\Http\Controller\ProductsController@view',

        'solutions' => 'Np\PsiModule\Http\Controller\SolutionsController@index',
        'solutions/{slug}' => 'Np\PsiModule\Http\Controller\SolutionsController@view',
        
        'search' => [
            'as' => 'np.module.psi::search.index',
            'uses' => 'Np\PsiModule\Http\Controller\SearchController@index',
        ],
        
        'search/result' => [
            'as' => 'np.module.psi::search.result',
            'uses' => 'Np\PsiModule\Http\Controller\SearchController@result',
        ],
        
        'components' => 'Np\PsiModule\Http\Controller\ComponentsController@index',
        'components/{slug}' => 'Np\PsiModule\Http\Controller\ComponentsController@view',

        'industries/{slug}' => 'Np\PsiModule\Http\Controller\IndustriesController@view',

        'news/{cetegory}/{slug}' => 'Np\PsiModule\Http\Controller\NewsController@view',

        'news/{category}/{slug}' => 'Np\PsiModule\Http\Controller\NewsController@view',
        'news/{category?}' => 'Np\PsiModule\Http\Controller\NewsController@index',
        
        'knowledge/{cetegory}/{slug}' => 'Np\PsiModule\Http\Controller\KnowledgeController@view',
        
        'knowledge/{category}/{slug}' => 'Np\PsiModule\Http\Controller\KnowledgeController@view',
        'knowledge/{category?}' => 'Np\PsiModule\Http\Controller\KnowledgeController@index',
        
        'ajax/get/components' => [
            'verb' => 'GET',
            'as' => 'np.module.psi::needs.ajax',
            'uses' => 'Np\PsiModule\Http\Controller\ComponentsController@ajax',
        ],
        'ajax/get/products' => [
            'verb' => 'GET',
            'as' => 'np.module.psi::components.ajax',
            'uses' => 'Np\PsiModule\Http\Controller\ProductsController@ajax',
        ],
        'ajax/filter/products' => [
            'verb' => 'GET',
            'as' => 'np.module.psi::components.filter',
            'uses' => 'Np\PsiModule\Http\Controller\ProductsController@filter',
        ],
        'ajax/enquire/submit' => [
            'verb' => 'POST',
            'as' => 'np.module.psi::form.contacts',
            'uses' => 'Np\PsiModule\Http\Controller\AjaxController@enquire',
        ],
        'ajax/knowledge/submit' => [
            'verb' => 'POST',
            'as' => 'np.module.psi::form.buyers_guide',
            'uses' => 'Np\PsiModule\Http\Controller\AjaxController@buyers_guide',
        ],
        'ajax/newsletter/submit' => [
            'verb' => 'POST',
            'as' => 'np.module.psi::form.newsletter',
            'uses' => 'Np\PsiModule\Http\Controller\AjaxController@newsletter',
        ],
        'ajax/oppo/submit' => [
            'verb' => 'POST',
            'as' => 'np.module.psi::form.oppo',
            'uses' => 'Np\PsiModule\Http\Controller\AjaxController@oppo',
        ],

    ];

    /**
     * The addon middleware.
     *
     * @type array|null
     */
    protected $middleware = [
        //Np\PsiModule\Http\Middleware\ExampleMiddleware::class
    ];

    /**
     * Addon group middleware.
     *
     * @var array
     */
    protected $groupMiddleware = [
        //'web' => [
        //    Np\PsiModule\Http\Middleware\ExampleMiddleware::class,
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
        //Np\PsiModule\Event\ExampleEvent::class => [
        //    Np\PsiModule\Listener\ExampleListener::class,
        //],
    ];

    /**
     * The addon alias bindings.
     *
     * @type array|null
     */
    protected $aliases = [
        //'Example' => Np\PsiModule\Example::class
    ];

    /**
     * The addon class bindings.
     *
     * @type array|null
     */
    protected $bindings = [
        ProductsProductsEntryModel::class => ProductsModel::class,
        ProductsBrandsEntryModel::class => BrandsModel::class,
        RepeaterProductVariationsEntryModel::class => ProductVariationsModel::class,
        RepeaterProductSpecificationsEntryModel::class => ProductSpecificationMode::class,
        ProductsComponentsGroupsEntryModel::class => ComponentsGroupsModel::class,
        ProductsSolutionsEntryModel::class => SolutionsModel::class,
        IndustriesIndustriesCombinedEntryModel::class => IndustriesCombinedModel::class,
        NewsNewsEntryModel::class => NewsModel::class,
        NewsCategoriesEntryModel::class => NewsCategoriesModel::class,
        KnowledgeKnowledgeEntryModel::class => KnowledgeModel::class,
        KnowledgeCategoriesEntryModel::class => KnowledgeCategoriesModel::class,
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
