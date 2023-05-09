<?php namespace Anomaly\Streams\Platform\Model\Repeater;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class RepeaterMapUrlEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'repeater_map_url_translations';
}
