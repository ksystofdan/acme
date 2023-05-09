<?php namespace Anomaly\Streams\Platform\Model\Files;

use Anomaly\Streams\Platform\Entry\EntryModel;

class FilesDisksEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'files_disks';

    protected $titleName = 'name';

    protected $rules = [
        'name' => 'required|unique:files_disks,name',
        'slug' => 'required|unique:files_disks,slug',
        'adapter' => 'required',
        'description' => '',
];

    protected $fields = [
        'name',
        'slug',
        'adapter',
        'description',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['name', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Files\FilesDisksEntryTranslationsModel';

    protected $stream = [
'id' => '19',
'sort_order' => '',
'namespace' => 'files',
'slug' => 'disks',
'prefix' => 'files_',
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
'id' => 132,
'sort_order' => 131,
'stream_id' => 19,
'field_id' => 121,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '121',
'namespace' => 'files',
'slug' => 'name',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 121,
'field_id' => 121,
'locale' => 'en',
'name' => 'anomaly.module.files::field.name.name',
'placeholder' => 'anomaly.module.files::field.name.placeholder',
'warning' => 'anomaly.module.files::field.name.warning',
'instructions' => 'anomaly.module.files::field.name.instructions',
],
],
],
'translations' => [
[
'id' => 132,
'assignment_id' => 132,
'locale' => 'en',
'label' => 'anomaly.module.files::field.name.label.disks',
'warning' => 'anomaly.module.files::field.name.warning.disks',
'placeholder' => 'anomaly.module.files::field.name.placeholder.disks',
'instructions' => 'anomaly.module.files::field.name.instructions.disks',
],
],
],
[
'id' => 133,
'sort_order' => 132,
'stream_id' => 19,
'field_id' => 122,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '122',
'namespace' => 'files',
'slug' => 'slug',
'type' => 'anomaly.field_type.slug',
'config' => 'a:1:{s:7:"slugify";s:4:"name";}',
'locked' => '1',
'translations' => [
[
'id' => 122,
'field_id' => 122,
'locale' => 'en',
'name' => 'anomaly.module.files::field.slug.name',
'placeholder' => 'anomaly.module.files::field.slug.placeholder',
'warning' => 'anomaly.module.files::field.slug.warning',
'instructions' => 'anomaly.module.files::field.slug.instructions',
],
],
],
'translations' => [
[
'id' => 133,
'assignment_id' => 133,
'locale' => 'en',
'label' => 'anomaly.module.files::field.slug.label.disks',
'warning' => 'anomaly.module.files::field.slug.warning.disks',
'placeholder' => 'anomaly.module.files::field.slug.placeholder.disks',
'instructions' => 'anomaly.module.files::field.slug.instructions.disks',
],
],
],
[
'id' => 134,
'sort_order' => 133,
'stream_id' => 19,
'field_id' => 123,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '123',
'namespace' => 'files',
'slug' => 'adapter',
'type' => 'anomaly.field_type.addon',
'config' => 'a:2:{s:4:"type";s:10:"extensions";s:6:"search";s:31:"anomaly.module.files::adapter.*";}',
'locked' => '1',
'translations' => [
[
'id' => 123,
'field_id' => 123,
'locale' => 'en',
'name' => 'anomaly.module.files::field.adapter.name',
'placeholder' => 'anomaly.module.files::field.adapter.placeholder',
'warning' => 'anomaly.module.files::field.adapter.warning',
'instructions' => 'anomaly.module.files::field.adapter.instructions',
],
],
],
'translations' => [
[
'id' => 134,
'assignment_id' => 134,
'locale' => 'en',
'label' => 'anomaly.module.files::field.adapter.label.disks',
'warning' => 'anomaly.module.files::field.adapter.warning.disks',
'placeholder' => 'anomaly.module.files::field.adapter.placeholder.disks',
'instructions' => 'anomaly.module.files::field.adapter.instructions.disks',
],
],
],
[
'id' => 135,
'sort_order' => 134,
'stream_id' => 19,
'field_id' => 127,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '127',
'namespace' => 'files',
'slug' => 'description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 127,
'field_id' => 127,
'locale' => 'en',
'name' => 'anomaly.module.files::field.description.name',
'placeholder' => 'anomaly.module.files::field.description.placeholder',
'warning' => 'anomaly.module.files::field.description.warning',
'instructions' => 'anomaly.module.files::field.description.instructions',
],
],
],
'translations' => [
[
'id' => 135,
'assignment_id' => 135,
'locale' => 'en',
'label' => 'anomaly.module.files::field.description.label.disks',
'warning' => 'anomaly.module.files::field.description.warning.disks',
'placeholder' => 'anomaly.module.files::field.description.placeholder.disks',
'instructions' => 'anomaly.module.files::field.description.instructions.disks',
],
],
],
],
'translations' => [
[
'id' => 19,
'stream_id' => 19,
'locale' => 'en',
'name' => 'anomaly.module.files::stream.disks.name',
'description' => 'anomaly.module.files::stream.disks.description',
],
],
];

    
}
