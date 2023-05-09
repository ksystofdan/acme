<?php namespace Anomaly\Streams\Platform\Model\Blocks;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class BlocksAreasEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'blocks_areas_translations';
}
