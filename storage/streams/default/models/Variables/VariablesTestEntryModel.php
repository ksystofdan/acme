<?php namespace Anomaly\Streams\Platform\Model\Variables;

use Anomaly\Streams\Platform\Entry\EntryModel;

class VariablesTestEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'variables_test';

    protected $titleName = 'id';

    protected $rules = [
];

    protected $fields = [
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    

    

    

    protected $stream = [
'id' => '79',
'sort_order' => '',
'namespace' => 'variables',
'slug' => 'test',
'prefix' => 'variables_',
'title_column' => 'id',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '0',
'searchable' => '0',
'trashable' => '0',
'translatable' => '0',
'versionable' => '0',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'assignments' => [
],
'translations' => [
[
'id' => 193,
'stream_id' => 79,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 194,
'stream_id' => 79,
'locale' => 'en',
'name' => 'Test',
'description' => '',
],
[
'id' => 195,
'stream_id' => 79,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 196,
'stream_id' => 79,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
