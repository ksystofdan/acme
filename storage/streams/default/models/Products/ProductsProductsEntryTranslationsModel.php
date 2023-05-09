<?php namespace Anomaly\Streams\Platform\Model\Products;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class ProductsProductsEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'products_products_translations';
}
