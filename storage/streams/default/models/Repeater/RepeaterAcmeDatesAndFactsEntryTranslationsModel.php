<?php namespace Anomaly\Streams\Platform\Model\Repeater;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class RepeaterAcmeDatesAndFactsEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'repeater_acme_dates_and_facts_translations';
}
