<?php namespace Anomaly\Streams\Platform\Model\Knowledge;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class KnowledgeCategoriesEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'knowledge_categories_translations';
}
