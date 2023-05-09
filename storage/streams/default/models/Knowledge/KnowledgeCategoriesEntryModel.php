<?php namespace Anomaly\Streams\Platform\Model\Knowledge;

use Anomaly\Streams\Platform\Entry\EntryModel;

class KnowledgeCategoriesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = true;

    protected $table = 'knowledge_categories';

    protected $titleName = 'title';

    protected $rules = [
        'title' => '',
        'slug' => '',
];

    protected $fields = [
        'title',
        'slug',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Knowledge\KnowledgeCategoriesEntryTranslationsModel';

    protected $stream = [
'id' => '88',
'sort_order' => '',
'namespace' => 'knowledge',
'slug' => 'categories',
'prefix' => 'knowledge_',
'title_column' => 'title',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '1',
'trashable' => '1',
'translatable' => '1',
'versionable' => '1',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'assignments' => [
[
'id' => 349,
'sort_order' => 330,
'stream_id' => 88,
'field_id' => 264,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '264',
'namespace' => 'knowledge',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 543,
'field_id' => 264,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 544,
'field_id' => 264,
'locale' => 'en',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 545,
'field_id' => 264,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 546,
'field_id' => 264,
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
'id' => 817,
'assignment_id' => 349,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 818,
'assignment_id' => 349,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 819,
'assignment_id' => 349,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 820,
'assignment_id' => 349,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 350,
'sort_order' => 331,
'stream_id' => 88,
'field_id' => 265,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '265',
'namespace' => 'knowledge',
'slug' => 'slug',
'type' => 'anomaly.field_type.slug',
'config' => 'a:5:{s:4:"type";s:1:"_";s:7:"slugify";s:5:"title";s:9:"lowercase";b:1;s:3:"min";N;s:3:"max";N;}',
'locked' => '0',
'translations' => [
[
'id' => 547,
'field_id' => 265,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 548,
'field_id' => 265,
'locale' => 'en',
'name' => 'Slug',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 549,
'field_id' => 265,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 550,
'field_id' => 265,
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
'id' => 821,
'assignment_id' => 350,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 822,
'assignment_id' => 350,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 823,
'assignment_id' => 350,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 824,
'assignment_id' => 350,
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
'id' => 229,
'stream_id' => 88,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 230,
'stream_id' => 88,
'locale' => 'en',
'name' => 'Categories',
'description' => '',
],
[
'id' => 231,
'stream_id' => 88,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 232,
'stream_id' => 88,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
