<?php namespace Anomaly\Streams\Platform\Model\Files;

use Anomaly\Streams\Platform\Entry\EntryModel;

class FilesProductsGalleryEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'files_products_gallery';

    protected $titleName = 'id';

    protected $rules = [
];

    protected $fields = [
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Files\FilesProductsGalleryEntryTranslationsModel';

    protected $stream = [
'id' => '45',
'sort_order' => '',
'namespace' => 'files',
'slug' => 'products_gallery',
'prefix' => 'files_',
'title_column' => 'id',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '0',
'searchable' => '0',
'trashable' => '1',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:0:{}',
'assignments' => [
],
'translations' => [
[
'id' => 75,
'stream_id' => 45,
'locale' => 'en',
'name' => 'Products gallery',
'description' => '',
],
],
];

    
}
