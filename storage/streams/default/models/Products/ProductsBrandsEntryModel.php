<?php namespace Anomaly\Streams\Platform\Model\Products;

use Anomaly\Streams\Platform\Entry\EntryModel;

class ProductsBrandsEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = false;

    protected $table = 'products_brands';

    protected $titleName = 'title';

    protected $rules = [
        'title' => '',
];

    protected $fields = [
        'title',
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    

    

    

    protected $stream = [
'id' => '41',
'sort_order' => '5',
'namespace' => 'products',
'slug' => 'brands',
'prefix' => 'products_',
'title_column' => 'title',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '1',
'trashable' => '1',
'translatable' => '0',
'versionable' => '0',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'assignments' => [
[
'id' => 199,
'sort_order' => 197,
'stream_id' => 41,
'field_id' => 174,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '174',
'namespace' => 'products',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 186,
'field_id' => 174,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 187,
'field_id' => 174,
'locale' => 'en',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 188,
'field_id' => 174,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 189,
'field_id' => 174,
'locale' => 'es',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 220,
'assignment_id' => 199,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 221,
'assignment_id' => 199,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 222,
'assignment_id' => 199,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 223,
'assignment_id' => 199,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
],
'translations' => [
[
'id' => 59,
'stream_id' => 41,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 60,
'stream_id' => 41,
'locale' => 'en',
'name' => 'Brands',
'description' => '',
],
[
'id' => 61,
'stream_id' => 41,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 62,
'stream_id' => 41,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
