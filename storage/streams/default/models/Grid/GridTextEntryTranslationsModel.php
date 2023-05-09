<?php namespace Anomaly\Streams\Platform\Model\Grid;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class GridTextEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'grid_text_translations';
}
