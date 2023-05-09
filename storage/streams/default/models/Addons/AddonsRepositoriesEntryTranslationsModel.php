<?php namespace Anomaly\Streams\Platform\Model\Addons;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class AddonsRepositoriesEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'addons_repositories_translations';
}
