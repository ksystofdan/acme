<?php
namespace Np\PsiModule\Http\Controller;

use Anomaly\Streams\Platform\Http\Controller\PublicController;
use Anomaly\Streams\Platform\Image\Command\MakeImageInstance;
use Np\PsiModule\Solutions\SolutionsModel;

class SolutionsController extends PublicController
{
    function index() {
        $items = SolutionsModel::all();

        return $this->view->make('module::solutions/index', compact('items') );
    }

    function view($slug) {
        $tmp = explode('-', $slug);
        $id = array_pop( $tmp );

        if(!$item = SolutionsModel::where('id', $id )->first()){
            abort(404);
        }
        
        $needs = $item->needs->toArray();
        
        $case_study = $item->knowledges()->where('category_id', 1)->get();
        $buyers_guides = $item->knowledges()->where('category_id', 2)->get();
        $videos = $item->knowledges()->where('category_id', 3)->get();
        $whitepapers = $item->knowledges()->where('category_id', 4)->get();
        $brochures = $item->knowledges()->where('category_id', 5)->get();
        $knowledges = [
            'case_study' => $case_study,
            'buyers_guides' => $buyers_guides,
            'videos' => $videos,
            'whitepapers' => $whitepapers,
            'brochures' =>$brochures
        ];
        
        $breadcrums = [
           'url' => url('solutions'),
           'parent' => 'theme::products-services',
           'current' => $item->title
        ];
        
        return $this->view->make('module::solutions/view',  compact('item', 'breadcrums', 'needs', 'knowledges') );
    }
}
