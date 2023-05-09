<?php namespace Anomaly\Streams\Platform\Model\Grid;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class GridImage2EntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'grid_image2_translations';
}
