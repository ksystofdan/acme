<?php namespace Anomaly\Streams\Platform\Model\StreamsUtilities;

use Anomaly\Streams\Platform\Entry\EntryModel;

class StreamsUtilitiesGroupsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'streams_utilities_groups';

    protected $titleName = 'id';

    protected $rules = [
        'name' => 'required',
        'slug' => 'required|unique:streams_utilities_groups,slug',
        'description' => '',
        'virtualize' => '',
        'icon' => '',
];

    protected $fields = [
        'name',
        'slug',
        'description',
        'virtualize',
        'icon',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['name', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\StreamsUtilities\StreamsUtilitiesGroupsEntryTranslationsModel';

    protected $stream = [
'id' => '1',
'sort_order' => '',
'namespace' => 'streams_utilities',
'slug' => 'groups',
'prefix' => 'streams_utilities_',
'title_column' => 'id',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '0',
'trashable' => '0',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 1,
'sort_order' => 1,
'stream_id' => 1,
'field_id' => 1,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '1',
'namespace' => 'streams_utilities',
'slug' => 'name',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 1,
'field_id' => 1,
'locale' => 'en',
'name' => 'anomaly.module.streams::field.name.name',
'placeholder' => 'anomaly.module.streams::field.name.placeholder',
'warning' => 'anomaly.module.streams::field.name.warning',
'instructions' => 'anomaly.module.streams::field.name.instructions',
],
],
],
'translations' => [
[
'id' => 1,
'assignment_id' => 1,
'locale' => 'en',
'label' => 'anomaly.module.streams::field.name.label.groups',
'warning' => 'anomaly.module.streams::field.name.warning.groups',
'placeholder' => 'anomaly.module.streams::field.name.placeholder.groups',
'instructions' => 'anomaly.module.streams::field.name.instructions.groups',
],
],
],
[
'id' => 2,
'sort_order' => 2,
'stream_id' => 1,
'field_id' => 3,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '3',
'namespace' => 'streams_utilities',
'slug' => 'slug',
'type' => 'anomaly.field_type.slug',
'config' => 'a:1:{s:7:"slugify";s:4:"name";}',
'locked' => '1',
'translations' => [
[
'id' => 3,
'field_id' => 3,
'locale' => 'en',
'name' => 'anomaly.module.streams::field.slug.name',
'placeholder' => 'anomaly.module.streams::field.slug.placeholder',
'warning' => 'anomaly.module.streams::field.slug.warning',
'instructions' => 'anomaly.module.streams::field.slug.instructions',
],
],
],
'translations' => [
[
'id' => 2,
'assignment_id' => 2,
'locale' => 'en',
'label' => 'anomaly.module.streams::field.slug.label.groups',
'warning' => 'anomaly.module.streams::field.slug.warning.groups',
'placeholder' => 'anomaly.module.streams::field.slug.placeholder.groups',
'instructions' => 'anomaly.module.streams::field.slug.instructions.groups',
],
],
],
[
'id' => 3,
'sort_order' => 3,
'stream_id' => 1,
'field_id' => 2,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '2',
'namespace' => 'streams_utilities',
'slug' => 'description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 2,
'field_id' => 2,
'locale' => 'en',
'name' => 'anomaly.module.streams::field.description.name',
'placeholder' => 'anomaly.module.streams::field.description.placeholder',
'warning' => 'anomaly.module.streams::field.description.warning',
'instructions' => 'anomaly.module.streams::field.description.instructions',
],
],
],
'translations' => [
[
'id' => 3,
'assignment_id' => 3,
'locale' => 'en',
'label' => 'anomaly.module.streams::field.description.label.groups',
'warning' => 'anomaly.module.streams::field.description.warning.groups',
'placeholder' => 'anomaly.module.streams::field.description.placeholder.groups',
'instructions' => 'anomaly.module.streams::field.description.instructions.groups',
],
],
],
[
'id' => 4,
'sort_order' => 4,
'stream_id' => 1,
'field_id' => 4,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '4',
'namespace' => 'streams_utilities',
'slug' => 'virtualize',
'type' => 'anomaly.field_type.boolean',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 4,
'field_id' => 4,
'locale' => 'en',
'name' => 'anomaly.module.streams::field.virtualize.name',
'placeholder' => 'anomaly.module.streams::field.virtualize.placeholder',
'warning' => 'anomaly.module.streams::field.virtualize.warning',
'instructions' => 'anomaly.module.streams::field.virtualize.instructions',
],
],
],
'translations' => [
[
'id' => 4,
'assignment_id' => 4,
'locale' => 'en',
'label' => 'anomaly.module.streams::field.virtualize.label.groups',
'warning' => 'anomaly.module.streams::field.virtualize.warning.groups',
'placeholder' => 'anomaly.module.streams::field.virtualize.placeholder.groups',
'instructions' => 'anomaly.module.streams::field.virtualize.instructions.groups',
],
],
],
[
'id' => 5,
'sort_order' => 5,
'stream_id' => 1,
'field_id' => 5,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '5',
'namespace' => 'streams_utilities',
'slug' => 'icon',
'type' => 'anomaly.field_type.icon',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 5,
'field_id' => 5,
'locale' => 'en',
'name' => 'anomaly.module.streams::field.icon.name',
'placeholder' => 'anomaly.module.streams::field.icon.placeholder',
'warning' => 'anomaly.module.streams::field.icon.warning',
'instructions' => 'anomaly.module.streams::field.icon.instructions',
],
],
],
'translations' => [
[
'id' => 5,
'assignment_id' => 5,
'locale' => 'en',
'label' => 'anomaly.module.streams::field.icon.label.groups',
'warning' => 'anomaly.module.streams::field.icon.warning.groups',
'placeholder' => 'anomaly.module.streams::field.icon.placeholder.groups',
'instructions' => 'anomaly.module.streams::field.icon.instructions.groups',
],
],
],
],
'translations' => [
[
'id' => 1,
'stream_id' => 1,
'locale' => 'en',
'name' => 'anomaly.module.streams::stream.groups.name',
'description' => 'anomaly.module.streams::stream.groups.description',
],
],
];

    
}
