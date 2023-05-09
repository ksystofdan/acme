<?php namespace Anomaly\Streams\Platform\Model\News;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class NewsCategoriesEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'news_categories_translations';
}
