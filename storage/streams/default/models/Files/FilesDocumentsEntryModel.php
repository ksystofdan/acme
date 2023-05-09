<?php namespace Anomaly\Streams\Platform\Model\Files;

use Anomaly\Streams\Platform\Entry\EntryModel;

class FilesDocumentsEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'files_documents';

    protected $titleName = 'id';

    protected $rules = [
];

    protected $fields = [
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Files\FilesDocumentsEntryTranslationsModel';

    protected $stream = [
'id' => '34',
'sort_order' => '',
'namespace' => 'files',
'slug' => 'documents',
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
'id' => 34,
'stream_id' => 34,
'locale' => 'en',
'name' => 'Documents',
'description' => 'A folder for documents.',
],
],
];

    
}
