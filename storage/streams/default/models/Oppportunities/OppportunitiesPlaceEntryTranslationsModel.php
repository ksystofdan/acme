<?php namespace Anomaly\Streams\Platform\Model\Oppportunities;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class OppportunitiesPlaceEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'oppportunities_place_translations';
}
