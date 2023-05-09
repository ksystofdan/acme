<?php namespace Anomaly\Streams\Platform\Model\Products;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class ProductsCategoriesEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'products_categories_translations';
}
