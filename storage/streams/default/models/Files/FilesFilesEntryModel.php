<?php namespace Anomaly\Streams\Platform\Model\Files;

use Anomaly\Streams\Platform\Entry\EntryModel;

class FilesFilesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = false;

    protected $table = 'files_files';

    protected $titleName = 'name';

    protected $rules = [
        'name' => 'required',
        'disk' => 'required',
        'folder' => 'required',
        'extension' => 'required',
        'size' => 'required',
        'mime_type' => 'required',
        'entry' => '',
        'keywords' => '',
        'height' => '',
        'width' => '',
        'alt_text' => '',
        'title' => '',
        'caption' => '',
        'description' => '',
        'str_id' => 'required|unique:files_files,str_id',
];

    protected $fields = [
        'name',
        'disk',
        'folder',
        'extension',
        'size',
        'mime_type',
        'entry',
        'keywords',
        'height',
        'width',
        'alt_text',
        'title',
        'caption',
        'description',
        'str_id',
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['disk', 'folder', 'entry'];

    

    

    

    protected $stream = [
'id' => '21',
'sort_order' => '',
'namespace' => 'files',
'slug' => 'files',
'prefix' => 'files_',
'title_column' => 'name',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '0',
'searchable' => '1',
'trashable' => '1',
'translatable' => '0',
'versionable' => '0',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 141,
'sort_order' => 140,
'stream_id' => 21,
'field_id' => 121,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
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
'id' => 141,
'assignment_id' => 141,
'locale' => 'en',
'label' => 'anomaly.module.files::field.name.label.files',
'warning' => 'anomaly.module.files::field.name.warning.files',
'placeholder' => 'anomaly.module.files::field.name.placeholder.files',
'instructions' => 'anomaly.module.files::field.name.instructions.files',
],
],
],
[
'id' => 142,
'sort_order' => 141,
'stream_id' => 21,
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
'id' => 142,
'assignment_id' => 142,
'locale' => 'en',
'label' => 'anomaly.module.files::field.disk.label.files',
'warning' => 'anomaly.module.files::field.disk.warning.files',
'placeholder' => 'anomaly.module.files::field.disk.placeholder.files',
'instructions' => 'anomaly.module.files::field.disk.instructions.files',
],
],
],
[
'id' => 143,
'sort_order' => 142,
'stream_id' => 21,
'field_id' => 124,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '124',
'namespace' => 'files',
'slug' => 'folder',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:1:{s:7:"related";s:38:"Anomaly\FilesModule\Folder\FolderModel";}',
'locked' => '1',
'translations' => [
[
'id' => 124,
'field_id' => 124,
'locale' => 'en',
'name' => 'anomaly.module.files::field.folder.name',
'placeholder' => 'anomaly.module.files::field.folder.placeholder',
'warning' => 'anomaly.module.files::field.folder.warning',
'instructions' => 'anomaly.module.files::field.folder.instructions',
],
],
],
'translations' => [
[
'id' => 143,
'assignment_id' => 143,
'locale' => 'en',
'label' => 'anomaly.module.files::field.folder.label.files',
'warning' => 'anomaly.module.files::field.folder.warning.files',
'placeholder' => 'anomaly.module.files::field.folder.placeholder.files',
'instructions' => 'anomaly.module.files::field.folder.instructions.files',
],
],
],
[
'id' => 144,
'sort_order' => 143,
'stream_id' => 21,
'field_id' => 130,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '130',
'namespace' => 'files',
'slug' => 'extension',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 130,
'field_id' => 130,
'locale' => 'en',
'name' => 'anomaly.module.files::field.extension.name',
'placeholder' => 'anomaly.module.files::field.extension.placeholder',
'warning' => 'anomaly.module.files::field.extension.warning',
'instructions' => 'anomaly.module.files::field.extension.instructions',
],
],
],
'translations' => [
[
'id' => 144,
'assignment_id' => 144,
'locale' => 'en',
'label' => 'anomaly.module.files::field.extension.label.files',
'warning' => 'anomaly.module.files::field.extension.warning.files',
'placeholder' => 'anomaly.module.files::field.extension.placeholder.files',
'instructions' => 'anomaly.module.files::field.extension.instructions.files',
],
],
],
[
'id' => 145,
'sort_order' => 144,
'stream_id' => 21,
'field_id' => 134,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '134',
'namespace' => 'files',
'slug' => 'size',
'type' => 'anomaly.field_type.integer',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 134,
'field_id' => 134,
'locale' => 'en',
'name' => 'anomaly.module.files::field.size.name',
'placeholder' => 'anomaly.module.files::field.size.placeholder',
'warning' => 'anomaly.module.files::field.size.warning',
'instructions' => 'anomaly.module.files::field.size.instructions',
],
],
],
'translations' => [
[
'id' => 145,
'assignment_id' => 145,
'locale' => 'en',
'label' => 'anomaly.module.files::field.size.label.files',
'warning' => 'anomaly.module.files::field.size.warning.files',
'placeholder' => 'anomaly.module.files::field.size.placeholder.files',
'instructions' => 'anomaly.module.files::field.size.instructions.files',
],
],
],
[
'id' => 146,
'sort_order' => 145,
'stream_id' => 21,
'field_id' => 133,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '133',
'namespace' => 'files',
'slug' => 'mime_type',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 133,
'field_id' => 133,
'locale' => 'en',
'name' => 'anomaly.module.files::field.mime_type.name',
'placeholder' => 'anomaly.module.files::field.mime_type.placeholder',
'warning' => 'anomaly.module.files::field.mime_type.warning',
'instructions' => 'anomaly.module.files::field.mime_type.instructions',
],
],
],
'translations' => [
[
'id' => 146,
'assignment_id' => 146,
'locale' => 'en',
'label' => 'anomaly.module.files::field.mime_type.label.files',
'warning' => 'anomaly.module.files::field.mime_type.warning.files',
'placeholder' => 'anomaly.module.files::field.mime_type.placeholder.files',
'instructions' => 'anomaly.module.files::field.mime_type.instructions.files',
],
],
],
[
'id' => 147,
'sort_order' => 146,
'stream_id' => 21,
'field_id' => 126,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '126',
'namespace' => 'files',
'slug' => 'entry',
'type' => 'anomaly.field_type.polymorphic',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 126,
'field_id' => 126,
'locale' => 'en',
'name' => 'anomaly.module.files::field.entry.name',
'placeholder' => 'anomaly.module.files::field.entry.placeholder',
'warning' => 'anomaly.module.files::field.entry.warning',
'instructions' => 'anomaly.module.files::field.entry.instructions',
],
],
],
'translations' => [
[
'id' => 147,
'assignment_id' => 147,
'locale' => 'en',
'label' => 'anomaly.module.files::field.entry.label.files',
'warning' => 'anomaly.module.files::field.entry.warning.files',
'placeholder' => 'anomaly.module.files::field.entry.placeholder.files',
'instructions' => 'anomaly.module.files::field.entry.instructions.files',
],
],
],
[
'id' => 148,
'sort_order' => 147,
'stream_id' => 21,
'field_id' => 129,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '129',
'namespace' => 'files',
'slug' => 'keywords',
'type' => 'anomaly.field_type.tags',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 129,
'field_id' => 129,
'locale' => 'en',
'name' => 'anomaly.module.files::field.keywords.name',
'placeholder' => 'anomaly.module.files::field.keywords.placeholder',
'warning' => 'anomaly.module.files::field.keywords.warning',
'instructions' => 'anomaly.module.files::field.keywords.instructions',
],
],
],
'translations' => [
[
'id' => 148,
'assignment_id' => 148,
'locale' => 'en',
'label' => 'anomaly.module.files::field.keywords.label.files',
'warning' => 'anomaly.module.files::field.keywords.warning.files',
'placeholder' => 'anomaly.module.files::field.keywords.placeholder.files',
'instructions' => 'anomaly.module.files::field.keywords.instructions.files',
],
],
],
[
'id' => 149,
'sort_order' => 148,
'stream_id' => 21,
'field_id' => 132,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '132',
'namespace' => 'files',
'slug' => 'height',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 132,
'field_id' => 132,
'locale' => 'en',
'name' => 'anomaly.module.files::field.height.name',
'placeholder' => 'anomaly.module.files::field.height.placeholder',
'warning' => 'anomaly.module.files::field.height.warning',
'instructions' => 'anomaly.module.files::field.height.instructions',
],
],
],
'translations' => [
[
'id' => 149,
'assignment_id' => 149,
'locale' => 'en',
'label' => 'anomaly.module.files::field.height.label.files',
'warning' => 'anomaly.module.files::field.height.warning.files',
'placeholder' => 'anomaly.module.files::field.height.placeholder.files',
'instructions' => 'anomaly.module.files::field.height.instructions.files',
],
],
],
[
'id' => 150,
'sort_order' => 149,
'stream_id' => 21,
'field_id' => 131,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '131',
'namespace' => 'files',
'slug' => 'width',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 131,
'field_id' => 131,
'locale' => 'en',
'name' => 'anomaly.module.files::field.width.name',
'placeholder' => 'anomaly.module.files::field.width.placeholder',
'warning' => 'anomaly.module.files::field.width.warning',
'instructions' => 'anomaly.module.files::field.width.instructions',
],
],
],
'translations' => [
[
'id' => 150,
'assignment_id' => 150,
'locale' => 'en',
'label' => 'anomaly.module.files::field.width.label.files',
'warning' => 'anomaly.module.files::field.width.warning.files',
'placeholder' => 'anomaly.module.files::field.width.placeholder.files',
'instructions' => 'anomaly.module.files::field.width.instructions.files',
],
],
],
[
'id' => 151,
'sort_order' => 150,
'stream_id' => 21,
'field_id' => 135,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '135',
'namespace' => 'files',
'slug' => 'alt_text',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 135,
'field_id' => 135,
'locale' => 'en',
'name' => 'anomaly.module.files::field.alt_text.name',
'placeholder' => 'anomaly.module.files::field.alt_text.placeholder',
'warning' => 'anomaly.module.files::field.alt_text.warning',
'instructions' => 'anomaly.module.files::field.alt_text.instructions',
],
],
],
'translations' => [
[
'id' => 151,
'assignment_id' => 151,
'locale' => 'en',
'label' => 'anomaly.module.files::field.alt_text.label.files',
'warning' => 'anomaly.module.files::field.alt_text.warning.files',
'placeholder' => 'anomaly.module.files::field.alt_text.placeholder.files',
'instructions' => 'anomaly.module.files::field.alt_text.instructions.files',
],
],
],
[
'id' => 152,
'sort_order' => 151,
'stream_id' => 21,
'field_id' => 136,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '136',
'namespace' => 'files',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 136,
'field_id' => 136,
'locale' => 'en',
'name' => 'anomaly.module.files::field.title.name',
'placeholder' => 'anomaly.module.files::field.title.placeholder',
'warning' => 'anomaly.module.files::field.title.warning',
'instructions' => 'anomaly.module.files::field.title.instructions',
],
],
],
'translations' => [
[
'id' => 152,
'assignment_id' => 152,
'locale' => 'en',
'label' => 'anomaly.module.files::field.title.label.files',
'warning' => 'anomaly.module.files::field.title.warning.files',
'placeholder' => 'anomaly.module.files::field.title.placeholder.files',
'instructions' => 'anomaly.module.files::field.title.instructions.files',
],
],
],
[
'id' => 153,
'sort_order' => 152,
'stream_id' => 21,
'field_id' => 137,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '137',
'namespace' => 'files',
'slug' => 'caption',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 137,
'field_id' => 137,
'locale' => 'en',
'name' => 'anomaly.module.files::field.caption.name',
'placeholder' => 'anomaly.module.files::field.caption.placeholder',
'warning' => 'anomaly.module.files::field.caption.warning',
'instructions' => 'anomaly.module.files::field.caption.instructions',
],
],
],
'translations' => [
[
'id' => 153,
'assignment_id' => 153,
'locale' => 'en',
'label' => 'anomaly.module.files::field.caption.label.files',
'warning' => 'anomaly.module.files::field.caption.warning.files',
'placeholder' => 'anomaly.module.files::field.caption.placeholder.files',
'instructions' => 'anomaly.module.files::field.caption.instructions.files',
],
],
],
[
'id' => 154,
'sort_order' => 153,
'stream_id' => 21,
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
'id' => 154,
'assignment_id' => 154,
'locale' => 'en',
'label' => 'anomaly.module.files::field.description.label.files',
'warning' => 'anomaly.module.files::field.description.warning.files',
'placeholder' => 'anomaly.module.files::field.description.placeholder.files',
'instructions' => 'anomaly.module.files::field.description.instructions.files',
],
],
],
[
'id' => 155,
'sort_order' => 154,
'stream_id' => 21,
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
'id' => 155,
'assignment_id' => 155,
'locale' => 'en',
'label' => 'anomaly.module.files::field.str_id.label.files',
'warning' => 'anomaly.module.files::field.str_id.warning.files',
'placeholder' => 'anomaly.module.files::field.str_id.placeholder.files',
'instructions' => 'anomaly.module.files::field.str_id.instructions.files',
],
],
],
],
'translations' => [
[
'id' => 21,
'stream_id' => 21,
'locale' => 'en',
'name' => 'anomaly.module.files::stream.files.name',
'description' => 'anomaly.module.files::stream.files.description',
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

    /**
     * The folder relation
     *
     * @return Relation
     */
    public function folder()
    {
        return $this->getFieldType('folder')->getRelation();
    }

    /**
     * The entry relation
     *
     * @return Relation
     */
    public function entry()
    {
        return $this->getFieldType('entry')->getRelation();
    }

}
