<?php

namespace Np\PsiModule\Http\Controller;

use Anomaly\Streams\Platform\Http\Controller\PublicController;
use Np\PsiModule\News\NewsCategoriesModel;
use Np\PsiModule\News\NewsModel;

class NewsController extends PublicController
{

    function index($category = false) {
        $categories = NewsCategoriesModel::all();
        $items = NewsModel::select('*')
            ->live()
            ->locale(app()->getLocale());

        $totalItems =  $items->count();
        if (!$category) {
            $currentCategory = 'all';

        } else {
            $tmp = explode('-', $category);
            $itemId = array_pop( $tmp );
            $currentCategory = $itemId;

            $items =  $items->where('category_id', $itemId);
        }
        $items =  $items->paginate(18);

        //dd($items);
        return $this->view->make('module::news/index', compact('items', 'categories', 'currentCategory', 'totalItems'));
    }

    function view($category, $slug) {
        $tmp = explode('-', $slug);
        $itemId = array_pop( $tmp );


        if(!$item = NewsModel::where('id', $itemId )->live()->first()){
            abort(404);
        }

        $content = '';
        $jumpToLinks = [];
        foreach( $item->content as $blockNum => $section) {

            $entry = $section->getEntry();
            $template = $entry->getStreamSlug();
            $content .= $this->view->make("module::news/sections/{$template}", compact('entry', 'blockNum'))->render();

            if ( $template == 'text' ) {
                if($entry->title){
                    $jumpToLinks[] = [
                        'title' => $entry->title,
                        'blockNum' => $blockNum
                    ];
                }
            }
        }

        $breadcrums = [
           'url' => url('news'),
           'parent' => 'news',
           'current' => $item->title
        ];

        $categories = NewsCategoriesModel::all();

        $jumpToBlock = $this->view->make("module::news/sections/jumpto", compact('jumpToLinks'))->render();

        $sidebar = $this->view->make("module::news/plugin/sidebar_news", compact('categories'))->render();

        return $this->view->make('module::news/view', compact('item', 'content', 'jumpToBlock', 'sidebar', 'breadcrums'));

    }
}
