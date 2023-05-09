<?php namespace Anomaly\Streams\Platform\Model\Blocks;

use Anomaly\Streams\Platform\Entry\EntryModel;

class BlocksBlocksEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'blocks_blocks';

    protected $titleName = 'type';

    protected $rules = [
        'title' => '',
        'area' => 'required',
        'field' => 'required',
        'extension' => 'required',
        'entry' => '',
        'display_title' => '',
        'type' => '',
];

    protected $fields = [
        'title',
        'area',
        'field',
        'extension',
        'entry',
        'display_title',
        'type',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['area', 'field', 'entry', 'type'];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Blocks\BlocksBlocksEntryTranslationsModel';

    protected $stream = [
'id' => '16',
'sort_order' => '',
'namespace' => 'blocks',
'slug' => 'blocks',
'prefix' => 'blocks_',
'title_column' => 'type',
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
'id' => 116,
'sort_order' => 115,
'stream_id' => 16,
'field_id' => 107,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '107',
'namespace' => 'blocks',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 107,
'field_id' => 107,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.title.name',
'placeholder' => 'anomaly.module.blocks::field.title.placeholder',
'warning' => 'anomaly.module.blocks::field.title.warning',
'instructions' => 'anomaly.module.blocks::field.title.instructions',
],
],
],
'translations' => [
[
'id' => 116,
'assignment_id' => 116,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.title.label.blocks',
'warning' => 'anomaly.module.blocks::field.title.warning.blocks',
'placeholder' => 'anomaly.module.blocks::field.title.placeholder.blocks',
'instructions' => 'anomaly.module.blocks::field.title.instructions.blocks',
],
],
],
[
'id' => 117,
'sort_order' => 116,
'stream_id' => 16,
'field_id' => 109,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '109',
'namespace' => 'blocks',
'slug' => 'area',
'type' => 'anomaly.field_type.polymorphic',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 109,
'field_id' => 109,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.area.name',
'placeholder' => 'anomaly.module.blocks::field.area.placeholder',
'warning' => 'anomaly.module.blocks::field.area.warning',
'instructions' => 'anomaly.module.blocks::field.area.instructions',
],
],
],
'translations' => [
[
'id' => 117,
'assignment_id' => 117,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.area.label.blocks',
'warning' => 'anomaly.module.blocks::field.area.warning.blocks',
'placeholder' => 'anomaly.module.blocks::field.area.placeholder.blocks',
'instructions' => 'anomaly.module.blocks::field.area.instructions.blocks',
],
],
],
[
'id' => 118,
'sort_order' => 117,
'stream_id' => 16,
'field_id' => 108,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '108',
'namespace' => 'blocks',
'slug' => 'field',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:2:{s:4:"mode";s:6:"lookup";s:7:"related";s:41:"Anomaly\Streams\Platform\Field\FieldModel";}',
'locked' => '1',
'translations' => [
[
'id' => 108,
'field_id' => 108,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.field.name',
'placeholder' => 'anomaly.module.blocks::field.field.placeholder',
'warning' => 'anomaly.module.blocks::field.field.warning',
'instructions' => 'anomaly.module.blocks::field.field.instructions',
],
],
],
'translations' => [
[
'id' => 118,
'assignment_id' => 118,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.field.label.blocks',
'warning' => 'anomaly.module.blocks::field.field.warning.blocks',
'placeholder' => 'anomaly.module.blocks::field.field.placeholder.blocks',
'instructions' => 'anomaly.module.blocks::field.field.instructions.blocks',
],
],
],
[
'id' => 119,
'sort_order' => 118,
'stream_id' => 16,
'field_id' => 112,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '112',
'namespace' => 'blocks',
'slug' => 'extension',
'type' => 'anomaly.field_type.addon',
'config' => 'a:2:{s:4:"type";s:10:"extensions";s:6:"search";s:30:"anomaly.module.blocks::block.*";}',
'locked' => '1',
'translations' => [
[
'id' => 112,
'field_id' => 112,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.extension.name',
'placeholder' => 'anomaly.module.blocks::field.extension.placeholder',
'warning' => 'anomaly.module.blocks::field.extension.warning',
'instructions' => 'anomaly.module.blocks::field.extension.instructions',
],
],
],
'translations' => [
[
'id' => 119,
'assignment_id' => 119,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.extension.label.blocks',
'warning' => 'anomaly.module.blocks::field.extension.warning.blocks',
'placeholder' => 'anomaly.module.blocks::field.extension.placeholder.blocks',
'instructions' => 'anomaly.module.blocks::field.extension.instructions.blocks',
],
],
],
[
'id' => 120,
'sort_order' => 119,
'stream_id' => 16,
'field_id' => 110,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '110',
'namespace' => 'blocks',
'slug' => 'entry',
'type' => 'anomaly.field_type.polymorphic',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 110,
'field_id' => 110,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.entry.name',
'placeholder' => 'anomaly.module.blocks::field.entry.placeholder',
'warning' => 'anomaly.module.blocks::field.entry.warning',
'instructions' => 'anomaly.module.blocks::field.entry.instructions',
],
],
],
'translations' => [
[
'id' => 120,
'assignment_id' => 120,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.entry.label.blocks',
'warning' => 'anomaly.module.blocks::field.entry.warning.blocks',
'placeholder' => 'anomaly.module.blocks::field.entry.placeholder.blocks',
'instructions' => 'anomaly.module.blocks::field.entry.instructions.blocks',
],
],
],
[
'id' => 121,
'sort_order' => 120,
'stream_id' => 16,
'field_id' => 113,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '113',
'namespace' => 'blocks',
'slug' => 'display_title',
'type' => 'anomaly.field_type.boolean',
'config' => 'a:3:{s:13:"default_value";b:1;s:4:"mode";s:8:"checkbox";s:5:"label";s:48:"anomaly.module.blocks::field.display_title.label";}',
'locked' => '1',
'translations' => [
[
'id' => 113,
'field_id' => 113,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.display_title.name',
'placeholder' => 'anomaly.module.blocks::field.display_title.placeholder',
'warning' => 'anomaly.module.blocks::field.display_title.warning',
'instructions' => 'anomaly.module.blocks::field.display_title.instructions',
],
],
],
'translations' => [
[
'id' => 121,
'assignment_id' => 121,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.display_title.label.blocks',
'warning' => 'anomaly.module.blocks::field.display_title.warning.blocks',
'placeholder' => 'anomaly.module.blocks::field.display_title.placeholder.blocks',
'instructions' => 'anomaly.module.blocks::field.display_title.instructions.blocks',
],
],
],
[
'id' => 128,
'sort_order' => 127,
'stream_id' => 16,
'field_id' => 117,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '117',
'namespace' => 'blocks',
'slug' => 'type',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:1:{s:7:"related";s:35:"Anomaly\BlocksModule\Type\TypeModel";}',
'locked' => '1',
'translations' => [
[
'id' => 117,
'field_id' => 117,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.type.name',
'placeholder' => 'anomaly.module.blocks::field.type.placeholder',
'warning' => 'anomaly.module.blocks::field.type.warning',
'instructions' => 'anomaly.module.blocks::field.type.instructions',
],
],
],
'translations' => [
[
'id' => 128,
'assignment_id' => 128,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.type.label.blocks',
'warning' => 'anomaly.module.blocks::field.type.warning.blocks',
'placeholder' => 'anomaly.module.blocks::field.type.placeholder.blocks',
'instructions' => 'anomaly.module.blocks::field.type.instructions.blocks',
],
],
],
],
'translations' => [
[
'id' => 16,
'stream_id' => 16,
'locale' => 'en',
'name' => 'anomaly.module.blocks::stream.blocks.name',
'description' => 'anomaly.module.blocks::stream.blocks.description',
],
],
];

    
    /**
     * The area relation
     *
     * @return Relation
     */
    public function area()
    {
        return $this->getFieldType('area')->getRelation();
    }

    /**
     * The field relation
     *
     * @return Relation
     */
    public function field()
    {
        return $this->getFieldType('field')->getRelation();
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

    /**
     * The type relation
     *
     * @return Relation
     */
    public function type()
    {
        return $this->getFieldType('type')->getRelation();
    }

}
