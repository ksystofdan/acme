<?php namespace Anomaly\Streams\Platform\Model\News;

use Anomaly\Streams\Platform\Entry\EntryModel;

class NewsCategoriesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = false;

    protected $table = 'news_categories';

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

    protected $translatedAttributes = ['title', 'slug'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\News\NewsCategoriesEntryTranslationsModel';

    protected $stream = [
'id' => '60',
'sort_order' => '',
'namespace' => 'news',
'slug' => 'categories',
'prefix' => 'news_',
'title_column' => 'title',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '1',
'trashable' => '1',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'assignments' => [
[
'id' => 255,
'sort_order' => 251,
'stream_id' => 60,
'field_id' => 204,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '204',
'namespace' => 'news',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 303,
'field_id' => 204,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 304,
'field_id' => 204,
'locale' => 'en',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 305,
'field_id' => 204,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 306,
'field_id' => 204,
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
'id' => 444,
'assignment_id' => 255,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 445,
'assignment_id' => 255,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 446,
'assignment_id' => 255,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 447,
'assignment_id' => 255,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 256,
'sort_order' => 252,
'stream_id' => 60,
'field_id' => 205,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '205',
'namespace' => 'news',
'slug' => 'slug',
'type' => 'anomaly.field_type.slug',
'config' => 'a:5:{s:4:"type";s:1:"-";s:7:"slugify";s:5:"title";s:9:"lowercase";b:1;s:3:"min";N;s:3:"max";N;}',
'locked' => '0',
'translations' => [
[
'id' => 307,
'field_id' => 205,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 308,
'field_id' => 205,
'locale' => 'en',
'name' => 'Slug',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 309,
'field_id' => 205,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 310,
'field_id' => 205,
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
'id' => 448,
'assignment_id' => 256,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 449,
'assignment_id' => 256,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 450,
'assignment_id' => 256,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 451,
'assignment_id' => 256,
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
'id' => 126,
'stream_id' => 60,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 127,
'stream_id' => 60,
'locale' => 'en',
'name' => 'Categories',
'description' => '',
],
[
'id' => 128,
'stream_id' => 60,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 129,
'stream_id' => 60,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
