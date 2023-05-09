<?php namespace Anomaly\Streams\Platform\Model\Posts;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PostsCategoriesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'posts_categories';

    protected $titleName = 'name';

    protected $rules = [
        'name' => 'required|unique:posts_categories,name',
        'slug' => 'required|unique:posts_categories,slug',
        'description' => '',
        'meta_title' => '',
        'meta_description' => '',
];

    protected $fields = [
        'name',
        'slug',
        'description',
        'meta_title',
        'meta_description',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['name', 'description', 'meta_title', 'meta_description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Posts\PostsCategoriesEntryTranslationsModel';

    protected $stream = [
'id' => '9',
'sort_order' => '',
'namespace' => 'posts',
'slug' => 'categories',
'prefix' => 'posts_',
'title_column' => 'name',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '0',
'trashable' => '1',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 63,
'sort_order' => 62,
'stream_id' => 9,
'field_id' => 60,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '60',
'namespace' => 'posts',
'slug' => 'name',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 60,
'field_id' => 60,
'locale' => 'en',
'name' => 'anomaly.module.posts::field.name.name',
'placeholder' => 'anomaly.module.posts::field.name.placeholder',
'warning' => 'anomaly.module.posts::field.name.warning',
'instructions' => 'anomaly.module.posts::field.name.instructions',
],
],
],
'translations' => [
[
'id' => 63,
'assignment_id' => 63,
'locale' => 'en',
'label' => 'anomaly.module.posts::field.name.label.categories',
'warning' => 'anomaly.module.posts::field.name.warning.categories',
'placeholder' => 'anomaly.module.posts::field.name.placeholder.categories',
'instructions' => 'anomaly.module.posts::field.name.instructions.categories',
],
],
],
[
'id' => 64,
'sort_order' => 63,
'stream_id' => 9,
'field_id' => 62,
'config' => 'a:1:{s:7:"slugify";s:4:"name";}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '62',
'namespace' => 'posts',
'slug' => 'slug',
'type' => 'anomaly.field_type.slug',
'config' => 'a:2:{s:7:"slugify";s:5:"title";s:4:"type";s:1:"-";}',
'locked' => '1',
'translations' => [
[
'id' => 62,
'field_id' => 62,
'locale' => 'en',
'name' => 'anomaly.module.posts::field.slug.name',
'placeholder' => 'anomaly.module.posts::field.slug.placeholder',
'warning' => 'anomaly.module.posts::field.slug.warning',
'instructions' => 'anomaly.module.posts::field.slug.instructions',
],
],
],
'translations' => [
[
'id' => 64,
'assignment_id' => 64,
'locale' => 'en',
'label' => 'anomaly.module.posts::field.slug.label.categories',
'warning' => 'anomaly.module.posts::field.slug.warning.categories',
'placeholder' => 'anomaly.module.posts::field.slug.placeholder.categories',
'instructions' => 'anomaly.module.posts::field.slug.instructions.categories',
],
],
],
[
'id' => 65,
'sort_order' => 64,
'stream_id' => 9,
'field_id' => 67,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '67',
'namespace' => 'posts',
'slug' => 'description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 67,
'field_id' => 67,
'locale' => 'en',
'name' => 'anomaly.module.posts::field.description.name',
'placeholder' => 'anomaly.module.posts::field.description.placeholder',
'warning' => 'anomaly.module.posts::field.description.warning',
'instructions' => 'anomaly.module.posts::field.description.instructions',
],
],
],
'translations' => [
[
'id' => 65,
'assignment_id' => 65,
'locale' => 'en',
'label' => 'anomaly.module.posts::field.description.label.categories',
'warning' => 'anomaly.module.posts::field.description.warning.categories',
'placeholder' => 'anomaly.module.posts::field.description.placeholder.categories',
'instructions' => 'anomaly.module.posts::field.description.instructions.categories',
],
],
],
[
'id' => 85,
'sort_order' => 84,
'stream_id' => 9,
'field_id' => 75,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '75',
'namespace' => 'posts',
'slug' => 'meta_title',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 75,
'field_id' => 75,
'locale' => 'en',
'name' => 'anomaly.module.posts::field.meta_title.name',
'placeholder' => 'anomaly.module.posts::field.meta_title.placeholder',
'warning' => 'anomaly.module.posts::field.meta_title.warning',
'instructions' => 'anomaly.module.posts::field.meta_title.instructions',
],
],
],
'translations' => [
[
'id' => 85,
'assignment_id' => 85,
'locale' => 'en',
'label' => 'anomaly.module.posts::field.meta_title.label.categories',
'warning' => 'anomaly.module.posts::field.meta_title.warning.categories',
'placeholder' => 'anomaly.module.posts::field.meta_title.placeholder.categories',
'instructions' => 'anomaly.module.posts::field.meta_title.instructions.categories',
],
],
],
[
'id' => 86,
'sort_order' => 85,
'stream_id' => 9,
'field_id' => 76,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '76',
'namespace' => 'posts',
'slug' => 'meta_description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 76,
'field_id' => 76,
'locale' => 'en',
'name' => 'anomaly.module.posts::field.meta_description.name',
'placeholder' => 'anomaly.module.posts::field.meta_description.placeholder',
'warning' => 'anomaly.module.posts::field.meta_description.warning',
'instructions' => 'anomaly.module.posts::field.meta_description.instructions',
],
],
],
'translations' => [
[
'id' => 86,
'assignment_id' => 86,
'locale' => 'en',
'label' => 'anomaly.module.posts::field.meta_description.label.categories',
'warning' => 'anomaly.module.posts::field.meta_description.warning.categories',
'placeholder' => 'anomaly.module.posts::field.meta_description.placeholder.categories',
'instructions' => 'anomaly.module.posts::field.meta_description.instructions.categories',
],
],
],
],
'translations' => [
[
'id' => 9,
'stream_id' => 9,
'locale' => 'en',
'name' => 'anomaly.module.posts::stream.categories.name',
'description' => 'anomaly.module.posts::stream.categories.description',
],
],
];

    
}
