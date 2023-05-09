<?php
namespace Np\SiteTheme\Navigation\Command;


use Anomaly\Streams\Platform\Support\Collection;
use Illuminate\Contracts\View\Factory;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Np\PsiModule\ComponentsGroups\ComponentsGroupsModel;
use Np\PsiModule\Industries\IndustriesCombinedModel;
use Np\PsiModule\Solutions\SolutionsModel;
use Np\PsiModule\Products\ProductsModel;


class RenderNavigation {

    use DispatchesJobs;

    /**
     * The rendering options.
     *
     * @var Collection
     */
    protected $options;

    /**
     * Create a new RenderNavigation instance.
     *
     * @param Collection $options
     */
    function __construct(Collection $options)
    {
        $this->options = $options;
    }


    /**
     * Handle the command.
     *
     * @param  Factory $view
     * @return null|string
     */
    public function handle( Factory $view ) {

        $solutions = SolutionsModel::all();
        $solutions = $solutions->toArray();
        $solutionsCount = count($solutions);

        array_unshift($solutions, [
            'title' => trans('np.module.psi::theme.all_solutions')." ({$solutionsCount})",
            'public_url' => url('solutions')
        ]);


        $industries = IndustriesCombinedModel::all();
        $industriesGrouped = $industries->sortBy('market_approach.sort_order')->groupBy('market_approach_id')->toArray();
      
        
        $components = ComponentsGroupsModel::all()->sortBy('title')->toArray();
        $componentsCount = count($components);

        $components = array_slice($components, 0, 6);

        array_unshift($components, [
            'title' => trans('np.module.psi::theme.all_components')." ({$componentsCount})",
            'public_url' => url('components')
        ]);


        $template = "theme::plugin/{$this->options->get('view', 'navigation')}";
        
    //    $services = ProductsModel::all()->sortBy('title')->toArray();
        
        return $view->make(
            $template,
            [
                'solutionsLinks' => $solutions,
                'componentsLinks' => $components,
                'industriesGrouped' => $industriesGrouped,
            //    'servicesLinks' => $services,
                // 'options' => $this->options,
            ]
        )->render();

    }
}
