<?php namespace Anomaly\Streams\Platform\Model\Knowledge;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class KnowledgeKnowledgeEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'knowledge_knowledge_translations';
}
