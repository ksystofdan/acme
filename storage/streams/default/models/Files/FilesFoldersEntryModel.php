<?php namespace Anomaly\Streams\Platform\Model\Files;

use Anomaly\Streams\Platform\Entry\EntryModel;

class FilesFoldersEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'files_folders';

    protected $titleName = 'name';

    protected $rules = [
        'disk' => 'required',
        'name' => 'required',
        'slug' => 'required|unique:files_folders,slug',
        'description' => '',
        'allowed_types' => '',
        'str_id' => 'required|unique:files_folders,str_id',
];

    protected $fields = [
        'disk',
        'name',
        'slug',
        'description',
        'allowed_types',
        'str_id',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['disk'];

    protected $translatedAttributes = ['name', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Files\FilesFoldersEntryTranslationsModel';

    protected $stream = [
'id' => '20',
'sort_order' => '',
'namespace' => 'files',
'slug' => 'folders',
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
'id' => 136,
'sort_order' => 135,
'stream_id' => 20,
'field_id' => 125,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '125',
'namespace' => 'files',
'slug' => 'disk',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:1:{s:7:"related";s:34:"Anomaly\FilesModule\Disk\DiskModel";}',
'locked' => '1',
'translations' => [
[
'id' => 125,
'field_id' => 125,
'locale' => 'en',
'name' => 'anomaly.module.files::field.disk.name',
'placeholder' => 'anomaly.module.files::field.disk.placeholder',
'warning' => 'anomaly.module.files::field.disk.warning',
'instructions' => 'anomaly.module.files::field.disk.instructions',
],
],
],
'translations' => [
[
'id' => 136,
'assignment_id' => 136,
'locale' => 'en',
'label' => 'anomaly.module.files::field.disk.label.folders',
'warning' => 'anomaly.module.files::field.disk.warning.folders',
'placeholder' => 'anomaly.module.files::field.disk.placeholder.folders',
'instructions' => 'anomaly.module.files::field.disk.instructions.folders',
],
],
],
[
'id' => 137,
'sort_order' => 136,
'stream_id' => 20,
'field_id' => 121,
'config' => 'a:1:{s:3:"max";i:50;}',
'unique' => 0,
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
'id' => 137,
'assignment_id' => 137,
'locale' => 'en',
'label' => 'anomaly.module.files::field.name.label.folders',
'warning' => 'anomaly.module.files::field.name.warning.folders',
'placeholder' => 'anomaly.module.files::field.name.placeholder.folders',
'instructions' => 'anomaly.module.files::field.name.instructions.folders',
],
],
],
[
'id' => 138,
'sort_order' => 137,
'stream_id' => 20,
'field_id' => 122,
'config' => 'a:1:{s:3:"max";i:50;}',
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
'id' => 138,
'assignment_id' => 138,
'locale' => 'en',
'label' => 'anomaly.module.files::field.slug.label.folders',
'warning' => 'anomaly.module.files::field.slug.warning.folders',
'placeholder' => 'anomaly.module.files::field.slug.placeholder.folders',
'instructions' => 'anomaly.module.files::field.slug.instructions.folders',
],
],
],
[
'id' => 139,
'sort_order' => 138,
'stream_id' => 20,
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
'id' => 139,
'assignment_id' => 139,
'locale' => 'en',
'label' => 'anomaly.module.files::field.description.label.folders',
'warning' => 'anomaly.module.files::field.description.warning.folders',
'placeholder' => 'anomaly.module.files::field.description.placeholder.folders',
'instructions' => 'anomaly.module.files::field.description.instructions.folders',
],
],
],
[
'id' => 140,
'sort_order' => 139,
'stream_id' => 20,
'field_id' => 128,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '128',
'namespace' => 'files',
'slug' => 'allowed_types',
'type' => 'anomaly.field_type.tags',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 128,
'field_id' => 128,
'locale' => 'en',
'name' => 'anomaly.module.files::field.allowed_types.name',
'placeholder' => 'anomaly.module.files::field.allowed_types.placeholder',
'warning' => 'anomaly.module.files::field.allowed_types.warning',
'instructions' => 'anomaly.module.files::field.allowed_types.instructions',
],
],
],
'translations' => [
[
'id' => 140,
'assignment_id' => 140,
'locale' => 'en',
'label' => 'anomaly.module.files::field.allowed_types.label.folders',
'warning' => 'anomaly.module.files::field.allowed_types.warning.folders',
'placeholder' => 'anomaly.module.files::field.allowed_types.placeholder.folders',
'instructions' => 'anomaly.module.files::field.allowed_types.instructions.folders',
],
],
],
[
'id' => 156,
'sort_order' => 155,
'stream_id' => 20,
'field_id' => 138,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '138',
'namespace' => 'files',
'slug' => 'str_id',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 138,
'field_id' => 138,
'locale' => 'en',
'name' => 'anomaly.module.files::field.str_id.name',
'placeholder' => 'anomaly.module.files::field.str_id.placeholder',
'warning' => 'anomaly.module.files::field.str_id.warning',
'instructions' => 'anomaly.module.files::field.str_id.instructions',
],
],
],
'translations' => [
[
'id' => 156,
'assignment_id' => 156,
'locale' => 'en',
'label' => 'anomaly.module.files::field.str_id.label.folders',
'warning' => 'anomaly.module.files::field.str_id.warning.folders',
'placeholder' => 'anomaly.module.files::field.str_id.placeholder.folders',
'instructions' => 'anomaly.module.files::field.str_id.instructions.folders',
],
],
],
],
'translations' => [
[
'id' => 20,
'stream_id' => 20,
'locale' => 'en',
'name' => 'anomaly.module.files::stream.folders.name',
'description' => 'anomaly.module.files::stream.folders.description',
],
],
];

    
    /**
     * The disk relation
     *
     * @return Relation
     */
    public function disk()
    {
        return $this->getFieldType('disk')->getRelation();
    }

}
