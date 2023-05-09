<?php namespace Anomaly\Streams\Platform\Model\Blocks;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class BlocksBlocksEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'blocks_blocks_translations';
}
