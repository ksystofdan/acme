<?php namespace Anomaly\Streams\Platform\Model\Files;

use Anomaly\Streams\Platform\Entry\EntryModel;

class FilesImagesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'files_images';

    protected $titleName = 'id';

    protected $rules = [
];

    protected $fields = [
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Files\FilesImagesEntryTranslationsModel';

    protected $stream = [
'id' => '33',
'sort_order' => '',
'namespace' => 'files',
'slug' => 'images',
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
'id' => 33,
'stream_id' => 33,
'locale' => 'en',
'name' => 'Images',
'description' => 'A folder for images.',
],
],
];

    
}
