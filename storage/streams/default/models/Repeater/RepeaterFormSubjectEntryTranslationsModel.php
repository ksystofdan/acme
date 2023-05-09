<?php namespace Anomaly\Streams\Platform\Model\Repeater;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class RepeaterFormSubjectEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'repeater_form_subject_translations';
}
