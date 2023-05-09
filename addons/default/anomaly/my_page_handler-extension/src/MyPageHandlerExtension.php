<?php namespace Anomaly\MyPageHandlerExtension;

use Anomaly\MyPageHandlerExtension\Command\MakePage;
use Anomaly\PagesModule\Page\Contract\PageInterface;
use Anomaly\MyPageHandlerExtension\Page\Handler\PageHandlerExtension;
//use Anomaly\PagesModule\Page\Handler\PageHandlerExtension;

/**
 * Class DefaultPageHandlerExtension
 *
 * @link          http://pyrocms.com/
 * @author        PyroCMS, Inc. <support@pyrocms.com>
 * @author        Ryan Thompson <ryan@pyrocms.com>
 */
class MyPageHandlerExtension extends PageHandlerExtension
{

    /**
     * This extension provides the default
     * page handler for the Pages module.
     *
     * @var string
     */
    protected $provides = 'anomaly.module.pages::handler.my';

    /**
     * Make the page's response.
     *
     * @param PageInterface $page
     */
    public function make(PageInterface $page)
    {
        $this->dispatch(new MakePage($page));
    }
}
