<?php

namespace Np\PsiModule\Http\Controller;

use Anomaly\Streams\Platform\Http\Controller\PublicController;
use Np\PsiModule\Knowledge\KnowledgeCategoriesModel;
use Np\PsiModule\Knowledge\KnowledgeModel;

class KnowledgeController extends PublicController
{

    function index($category = false) {
        $categories = KnowledgeCategoriesModel::all();
        $items = KnowledgeModel::select('*')
            ->live();
            // ->locale(app()->getLocale());

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
        return $this->view->make('module::knowledge/index', compact('items', 'categories', 'currentCategory', 'totalItems'));
    }

    function view($category, $slug) {
        $tmp = explode('-', $slug);
        $itemId = array_pop( $tmp );


        if(!$item = KnowledgeModel::where('id', $itemId )->live()->first()){
            abort(404);
        }
       

        $content = '';
        $jumpToLinks = [];
        
        
        if($item->category->slug == 'whitepapers'){
            $categories = KnowledgeCategoriesModel::all();
            foreach( $item->content as $blockNum => $section) {
                $entry = $section->getEntry();
                $template = $entry->getStreamSlug();
                $content .= $this->view->make("module::knowledge/sections/{$template}", compact('entry', 'blockNum'))->render();
                if ( $template == 'text' ) {
                    $jumpToLinks[] = [
                        'title' => $entry->title,
                        'blockNum' => $blockNum
                    ];
                }
            }
            $jumpToBlock = $this->view->make("module::knowledge/sections/jumpto", compact('jumpToLinks'))->render();
            $sidebar = $this->view->make("module::knowledge/plugin/sidebar_case_study", compact('categories'))->render();
            $pdf_form = null;
        }elseif(in_array($item->category->slug, ['buyers_guides', 'case_study', 'brochures'])){
        //    $categories = KnowledgeCategoriesModel::where('slug', 'buyers_guides')->first();
            $categories = KnowledgeCategoriesModel::all();
            $jumpToBlock = null;
            $pdf_list = $item->buyers_guides_pdfs;
        //    $sidebar = $this->view->make("module::knowledge/plugin/sidebar_buyers_guides", compact('categories'))->render();
            $sidebar = $this->view->make("module::knowledge/plugin/sidebar_case_study", compact('categories'))->render();
            $article_id = $item->id;
            $pdf_form = $this->view->make("module::knowledge/plugin/buyers_guides_pdf_form", compact('pdf_list', 'article_id'))->render();
            $bg_content = $item->buyers_guides_content;
            $content = $this->view->make("module::knowledge/plugin/content_buyers_guides", compact('bg_content'))->render();
        }else{
            abort(404);
            $jumpToBlock = null;
            $sidebar = null;
            $content = null;
            $pdf_form = null;
        }

        $breadcrums = [
           'url' => url('knowledge'),
           'parent' => 'knowledged',
           'current' => $item->title
        ];

        return $this->view->make('module::knowledge/view', compact('item', 'content', 'jumpToBlock', 'sidebar', 'breadcrums', 'pdf_form'));

    }
}
