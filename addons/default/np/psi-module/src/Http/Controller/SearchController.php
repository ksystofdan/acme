<?php
namespace Np\PsiModule\Http\Controller;

use Anomaly\Streams\Platform\Http\Controller\PublicController;
use Anomaly\PagesModule\Page\PageModel;
use Anomaly\Streams\Platform\Image\Command\MakeImageInstance;
use Np\PsiModule\Solutions\SolutionsModel;
use Illuminate\Http\Request;
use Np\PsiModule\Products\ProductsModel;
use Np\PsiModule\News\NewsModel;
use Np\PsiModule\Knowledge\KnowledgeModel;

class SearchController extends PublicController
{
	function index() {
		// $items = SolutionsModel::all();
			
		$breadcrums = [
			'url' => url('/'),
			'parent' => 'theme::homepage',
			'current' => 'Search'
		];
			
		return $this->view->make('module::search/index', compact('breadcrums') );
		// return $this->view->make('module::search/index', compact('items') );
	}

	function result(Request $request) {
		$term = $request->get('term');
		
		$breadcrums = [
			'url' => url('/'),
			'parent' => 'theme::homepage',
			'current' => 'Search for:' . $term
		];
		
		$pages = collect(PageModel::search($term)->toArray())->keyBy('id');
		$products = collect(ProductsModel::search($term)->toArray())->keyBy('id')->where('enabled', 1);
		$news = collect(NewsModel::search($term)->toArray())->keyBy('id')->where('enabled', 1);
		$knowledge = collect(KnowledgeModel::search($term)->toArray())->keyBy('id')->where('enabled', 1)->where('k_hidden', 0);
		$emptyState = null;
		if(!count($pages) && !count($products) && !count($news) && !count($knowledge)){
			$emptyState = true;
		}
		
		return $this->view->make('module::search/search', compact('breadcrums', 'term', 'pages', 'products', 'knowledge', 'news', 'emptyState') );
		
		dd( $request->all() );
// 		$tmp = explode('-', $term);
// 		$id = array_pop( $tmp );
// 
// 		if(!$item = SolutionsModel::where('id', $id )->first()){
// 			abort(404);
// 		}
// 		
// 		$needs = $item->needs->toArray();
// 	  
// 		
// 		$breadcrums = [
// 		   'url' => url('solutions'),
// 		   'parent' => 'theme::products-services',
// 		   'current' => $item->title
// 		];
// 		
// 		return $this->view->make('module::solutions/view',  compact('item', 'breadcrums', 'needs') );
	}
}
