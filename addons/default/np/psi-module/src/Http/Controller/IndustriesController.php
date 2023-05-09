<?php
namespace Np\PsiModule\Http\Controller;

use Anomaly\Streams\Platform\Http\Controller\PublicController;
use Np\PsiModule\Industries\IndustriesCombinedModel;

class IndustriesController extends PublicController
{
    function view($slug) {
        $tmp = explode('-', $slug);
        $id = array_pop( $tmp );

        if(!$item = IndustriesCombinedModel::where('id', $id )->first()){
            abort(404);
        }
        
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
        // dd($knowledges['videos']);
        $breadcrums = [
           'url' => '/#industries-section',
           'parent' => 'theme::industries',
           'current' => $item->title
        ];

        return $this->view->make('module::industries/view', compact('item', 'breadcrums', 'knowledges'));
    }

}
