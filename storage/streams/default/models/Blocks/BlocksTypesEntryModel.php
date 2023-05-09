<?php namespace Anomaly\Streams\Platform\Model\Blocks;

use Anomaly\Streams\Platform\Entry\EntryModel;

class BlocksTypesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'blocks_types';

    protected $titleName = 'name';

    protected $rules = [
        'category' => 'required',
        'name' => 'required|unique:blocks_types,name',
        'slug' => 'required|unique:blocks_types,slug',
        'description' => '',
        'content_layout' => 'required',
        'wrapper_layout' => 'required',
];

    protected $fields = [
        'category',
        'name',
        'slug',
        'description',
        'content_layout',
        'wrapper_layout',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['name', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Blocks\BlocksTypesEntryTranslationsModel';

    protected $stream = [
'id' => '17',
'sort_order' => '',
'namespace' => 'blocks',
'slug' => 'types',
'prefix' => 'blocks_',
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
'id' => 122,
'sort_order' => 121,
'stream_id' => 17,
'field_id' => 114,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '114',
'namespace' => 'blocks',
'slug' => 'category',
'type' => 'anomaly.field_type.select',
'config' => 'a:1:{s:7:"handler";s:66:"Anomaly\BlocksModule\Block\Support\SelectFieldType\CategoryOptions";}',
'locked' => '1',
'translations' => [
[
'id' => 114,
'field_id' => 114,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.category.name',
'placeholder' => 'anomaly.module.blocks::field.category.placeholder',
'warning' => 'anomaly.module.blocks::field.category.warning',
'instructions' => 'anomaly.module.blocks::field.category.instructions',
],
],
],
'translations' => [
[
'id' => 122,
'assignment_id' => 122,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.category.label.types',
'warning' => 'anomaly.module.blocks::field.category.warning.types',
'placeholder' => 'anomaly.module.blocks::field.category.placeholder.types',
'instructions' => 'anomaly.module.blocks::field.category.instructions.types',
],
],
],
[
'id' => 123,
'sort_order' => 122,
'stream_id' => 17,
'field_id' => 104,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '104',
'namespace' => 'blocks',
'slug' => 'name',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 104,
'field_id' => 104,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.name.name',
'placeholder' => 'anomaly.module.blocks::field.name.placeholder',
'warning' => 'anomaly.module.blocks::field.name.warning',
'instructions' => 'anomaly.module.blocks::field.name.instructions',
],
],
],
'translations' => [
[
'id' => 123,
'assignment_id' => 123,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.name.label.types',
'warning' => 'anomaly.module.blocks::field.name.warning.types',
'placeholder' => 'anomaly.module.blocks::field.name.placeholder.types',
'instructions' => 'anomaly.module.blocks::field.name.instructions.types',
],
],
],
[
'id' => 124,
'sort_order' => 123,
'stream_id' => 17,
'field_id' => 106,
'config' => 'a:2:{s:7:"slugify";s:4:"name";s:4:"type";s:1:"_";}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '106',
'namespace' => 'blocks',
'slug' => 'slug',
'type' => 'anomaly.field_type.slug',
'config' => 'a:2:{s:4:"type";s:1:"-";s:7:"slugify";s:4:"name";}',
'locked' => '1',
'translations' => [
[
'id' => 106,
'field_id' => 106,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.slug.name',
'placeholder' => 'anomaly.module.blocks::field.slug.placeholder',
'warning' => 'anomaly.module.blocks::field.slug.warning',
'instructions' => 'anomaly.module.blocks::field.slug.instructions',
],
],
],
'translations' => [
[
'id' => 124,
'assignment_id' => 124,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.slug.label.types',
'warning' => 'anomaly.module.blocks::field.slug.warning.types',
'placeholder' => 'anomaly.module.blocks::field.slug.placeholder.types',
'instructions' => 'anomaly.module.blocks::field.slug.instructions.types',
],
],
],
[
'id' => 125,
'sort_order' => 124,
'stream_id' => 17,
'field_id' => 105,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '105',
'namespace' => 'blocks',
'slug' => 'description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 105,
'field_id' => 105,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.description.name',
'placeholder' => 'anomaly.module.blocks::field.description.placeholder',
'warning' => 'anomaly.module.blocks::field.description.warning',
'instructions' => 'anomaly.module.blocks::field.description.instructions',
],
],
],
'translations' => [
[
'id' => 125,
'assignment_id' => 125,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.description.label.types',
'warning' => 'anomaly.module.blocks::field.description.warning.types',
'placeholder' => 'anomaly.module.blocks::field.description.placeholder.types',
'instructions' => 'anomaly.module.blocks::field.description.instructions.types',
],
],
],
[
'id' => 126,
'sort_order' => 125,
'stream_id' => 17,
'field_id' => 115,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '115',
'namespace' => 'blocks',
'slug' => 'content_layout',
'type' => 'anomaly.field_type.editor',
'config' => 'a:2:{s:4:"mode";s:4:"twig";s:13:"default_value";s:29:"<p>{{ block.field_slug }}</p>";}',
'locked' => '1',
'translations' => [
[
'id' => 115,
'field_id' => 115,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.content_layout.name',
'placeholder' => 'anomaly.module.blocks::field.content_layout.placeholder',
'warning' => 'anomaly.module.blocks::field.content_layout.warning',
'instructions' => 'anomaly.module.blocks::field.content_layout.instructions',
],
],
],
'translations' => [
[
'id' => 126,
'assignment_id' => 126,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.content_layout.label.types',
'warning' => 'anomaly.module.blocks::field.content_layout.warning.types',
'placeholder' => 'anomaly.module.blocks::field.content_layout.placeholder.types',
'instructions' => 'anomaly.module.blocks::field.content_layout.instructions.types',
],
],
],
[
'id' => 127,
'sort_order' => 126,
'stream_id' => 17,
'field_id' => 116,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '116',
'namespace' => 'blocks',
'slug' => 'wrapper_layout',
'type' => 'anomaly.field_type.editor',
'config' => 'a:2:{s:4:"mode";s:4:"twig";s:13:"default_value";s:52:"{% extends "anomaly.module.blocks::types.wrapper" %}";}',
'locked' => '1',
'translations' => [
[
'id' => 116,
'field_id' => 116,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.wrapper_layout.name',
'placeholder' => 'anomaly.module.blocks::field.wrapper_layout.placeholder',
'warning' => 'anomaly.module.blocks::field.wrapper_layout.warning',
'instructions' => 'anomaly.module.blocks::field.wrapper_layout.instructions',
],
],
],
'translations' => [
[
'id' => 127,
'assignment_id' => 127,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.wrapper_layout.label.types',
'warning' => 'anomaly.module.blocks::field.wrapper_layout.warning.types',
'placeholder' => 'anomaly.module.blocks::field.wrapper_layout.placeholder.types',
'instructions' => 'anomaly.module.blocks::field.wrapper_layout.instructions.types',
],
],
],
],
'translations' => [
[
'id' => 17,
'stream_id' => 17,
'locale' => 'en',
'name' => 'anomaly.module.blocks::stream.types.name',
'description' => 'anomaly.module.blocks::stream.types.description',
],
],
];

    
}
