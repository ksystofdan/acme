<?php
namespace Np\PsiModule\Http\Controller;

use Anomaly\Streams\Platform\Http\Controller\PublicController;
use Anomaly\Streams\Platform\Image\Command\MakeImageInstance;
use Np\PsiModule\Command\GetComponentsGroupsSorted;
use Np\PsiModule\ComponentsGroups\ComponentsGroupsModel;
use Illuminate\Http\Request;

class ComponentsController extends PublicController
{
    function index(Request $request) {

        $categoriesGroupedSorted = $this->dispatch(new GetComponentsGroupsSorted());
        
        $comp_groups = ComponentsGroupsModel::paginate(5)->appends(['layout' =>  $request->layout]);

        $isViewTypeCategories = $request->layout == 'block' ? false : true ;
        
        $breadcrums = [
           'url' => url('components'),
           'parent' => 'theme::products-services',
           'current' => trans('Components')
        ];
            
        return $this->view->make('module::components/index', compact('isViewTypeCategories', 'categoriesGroupedSorted', 'breadcrums', 'comp_groups'));
    }

    function view($slug) {
        $tmp = explode('-', $slug);
        $id = array_pop( $tmp );

        if(!$item = ComponentsGroupsModel::where('id', $id )->first()){
            abort(404);
        }

        // if(!$item->image) {
        //     $heroImageUrl = $this->dispatch(new MakeImageInstance("theme::img/img-3.png"))->url();
        // } else {
        //     $heroImageUrl = $item->image->decorated->cropped()->url();
        // }

        $benefits = [
            'title' => $item->benefits_title,
            'benefits' => $item->benefits,
        ];

        $breadcrums = [
           'url' => url('components'),
           'parent' => 'theme::products-services',
           'current' => $item->title
        ];


        //dd($item->products->toArray());

        return $this->view->make('module::components/view', compact('item', 'benefits',  'breadcrums'));
    }
    
    function ajax(Request $request){

        $components = null;
        if($request->needs){
            $entries = ComponentsGroupsModel::find($request->needs)->componeeds()->orderBy('sort_order')->get();
            foreach($entries as $entry){
                $components[] = [
                    'id' => $entry->id,
                    'title' => $entry->title
                ];
                    
            }
        }
        
        return response()->json([
            'components' => $components
        ]);
        
    }
}
