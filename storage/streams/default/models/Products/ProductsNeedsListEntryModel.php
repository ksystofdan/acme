<?php namespace Anomaly\Streams\Platform\Model\Products;

use Anomaly\Streams\Platform\Entry\EntryModel;

class ProductsNeedsListEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'products_needs_list';

    protected $titleName = 'title';

    protected $rules = [
        'title' => 'required|unique:products_needs_list,title',
];

    protected $fields = [
        'title',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Products\ProductsNeedsListEntryTranslationsModel';

    protected $stream = [
'id' => '65',
'sort_order' => '4',
'namespace' => 'products',
'slug' => 'needs_list',
'prefix' => 'products_',
'title_column' => 'title',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '0',
'trashable' => '0',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:1:{i:0;s:77:"a:1:{i:0;s:59:"a:1:{i:0;s:41:"a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}";}";}";}',
'assignments' => [
[
'id' => 273,
'sort_order' => 267,
'stream_id' => 65,
'field_id' => 174,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
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
'id' => 516,
'assignment_id' => 273,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 517,
'assignment_id' => 273,
'locale' => 'en',
'label' => 'Needs Title',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 518,
'assignment_id' => 273,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 519,
'assignment_id' => 273,
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
'id' => 146,
'stream_id' => 65,
'locale' => 'ar',
'name' => 'Needs list',
'description' => '',
],
[
'id' => 147,
'stream_id' => 65,
'locale' => 'en',
'name' => 'Needs list',
'description' => '',
],
[
'id' => 148,
'stream_id' => 65,
'locale' => 'de',
'name' => 'Needs list',
'description' => '',
],
[
'id' => 149,
'stream_id' => 65,
'locale' => 'es',
'name' => 'Needs list',
'description' => '',
],
],
];

    
}
