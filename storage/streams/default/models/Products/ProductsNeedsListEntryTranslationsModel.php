<?php namespace Anomaly\Streams\Platform\Model\Products;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class ProductsNeedsListEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'products_needs_list_translations';
}
