<?php
namespace Np\PsiModule\Http\Controller;

use Anomaly\Streams\Platform\Http\Controller\PublicController;
use Np\PsiModule\Products\ProductsModel;
use Illuminate\Http\Request;
use Anomaly\Streams\Platform\Image\Command\MakeImageInstance;
use Np\PsiModule\ComponentsGroups\ComponentsGroupsModel;

class ProductsController extends PublicController
{
    // function index() {
    //   return $this->view->make('module::products/index');
    // }

    function view($slug) {
        $tmp = explode('-', $slug);
        $productId = array_pop( $tmp );

        if(!$item = ProductsModel::where('id', $productId )->live()->first()){
            abort(404);
        }
        $item = $item->toArray();
        $relatedItems = ProductsModel::where('component_group_id', $item['component_group_id'])->where('id', '!=' ,$productId)->limit(4)->inRandomOrder()->live()->get()->toArray();
        
        return $this->view->make('module::products/view', compact('item', 'relatedItems'));
    }
    
    function ajax(Request $request){
        
        $products = null;
        if($request->components){
            $entries = ProductsModel::where('component_group_id', $request->components )->live()->limit(3)->inRandomOrder()->get();
            $comp = ComponentsGroupsModel::where('id', $request->components )->first();
            foreach($entries as $entry){
                $image_url = $entry->gallery()->first() ? 
                $this->dispatch(new MakeImageInstance( $entry->gallery()->first() ))->fit(100,100)->url() : $this->dispatch(new MakeImageInstance("np.theme.site::img/no-image.png"))->fit(100,100)->url() ;
                $products[] = [
                    'id'        => $entry->id,
                    'title'     => $entry->title,
                    'slug'      => $entry->slug,
                    'image'     => $image_url,
                    'brand'     => $entry->brand()->first()->title 
                ]; 
            }
        }
        return response()->json([
            'products' => $products,
            'comp_desc' => $comp->description,
            'comp_slug' => '/components/'.$comp->slug.'-'.$request->components
        ]);
    }
    
    function filter(Request $request){
        
        $categories = $request->categories;
        $brands = $request->brands;
        $component = $request->component;
        $search = $request->search;
        $products = array();
        if($search){
            $entries = collect(ProductsModel::search($search)->toArray())->keyBy('id')->where('component_group_id', $component)->where('enabled', 1)->pluck('id');
            $entries = ProductsModel::whereIn('id', $entries)->get();
        }else{
            $entries = ProductsModel::where('component_group_id', $component)->live()->get();
        }
        if($categories){
            $entries = $entries->whereIn('category_id', $categories );
        }
        if($brands){
            $entries = $entries->whereIn('brand_id', $brands );
        }
        foreach($entries as $entry){
            $image_url = $entry->gallery()->first() ? 
            $this->dispatch(new MakeImageInstance( $entry->gallery()->first() ))->fit(400,400)->url() : $this->dispatch(new MakeImageInstance("np.theme.site::img/no-image.png"))->fit(400,400)->url() ;
            $products[] = [
                'id'        => $entry->id,
                'title'     => $entry->title,
                'slug'      => $entry->slug,
                'image'     => $image_url,
                'brand'     => $entry->brand()->first()->title 
            ]; 
        }
        return response()->json([
            'products'  => $products,
            'count'     => count($entries)
        ]);
    }
}
