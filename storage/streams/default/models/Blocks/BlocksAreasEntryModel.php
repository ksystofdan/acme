<?php namespace Anomaly\Streams\Platform\Model\Blocks;

use Anomaly\Streams\Platform\Entry\EntryModel;

class BlocksAreasEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'blocks_areas';

    protected $titleName = 'name';

    protected $rules = [
        'name' => 'required',
        'slug' => 'required|unique:blocks_areas,slug',
        'description' => '',
        'blocks' => '',
];

    protected $fields = [
        'name',
        'slug',
        'description',
        'blocks',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['blocks'];

    protected $translatedAttributes = ['name', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Blocks\BlocksAreasEntryTranslationsModel';

    protected $stream = [
'id' => '15',
'sort_order' => '',
'namespace' => 'blocks',
'slug' => 'areas',
'prefix' => 'blocks_',
'title_column' => 'name',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '0',
'searchable' => '0',
'trashable' => '0',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 112,
'sort_order' => 111,
'stream_id' => 15,
'field_id' => 104,
'config' => 'a:0:{}',
'unique' => 0,
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
'id' => 112,
'assignment_id' => 112,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.name.label.areas',
'warning' => 'anomaly.module.blocks::field.name.warning.areas',
'placeholder' => 'anomaly.module.blocks::field.name.placeholder.areas',
'instructions' => 'anomaly.module.blocks::field.name.instructions.areas',
],
],
],
[
'id' => 113,
'sort_order' => 112,
'stream_id' => 15,
'field_id' => 106,
'config' => 'a:0:{}',
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
'id' => 113,
'assignment_id' => 113,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.slug.label.areas',
'warning' => 'anomaly.module.blocks::field.slug.warning.areas',
'placeholder' => 'anomaly.module.blocks::field.slug.placeholder.areas',
'instructions' => 'anomaly.module.blocks::field.slug.instructions.areas',
],
],
],
[
'id' => 114,
'sort_order' => 113,
'stream_id' => 15,
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
'id' => 114,
'assignment_id' => 114,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.description.label.areas',
'warning' => 'anomaly.module.blocks::field.description.warning.areas',
'placeholder' => 'anomaly.module.blocks::field.description.placeholder.areas',
'instructions' => 'anomaly.module.blocks::field.description.instructions.areas',
],
],
],
[
'id' => 115,
'sort_order' => 114,
'stream_id' => 15,
'field_id' => 111,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '111',
'namespace' => 'blocks',
'slug' => 'blocks',
'type' => 'anomaly.field_type.blocks',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 111,
'field_id' => 111,
'locale' => 'en',
'name' => 'anomaly.module.blocks::field.blocks.name',
'placeholder' => 'anomaly.module.blocks::field.blocks.placeholder',
'warning' => 'anomaly.module.blocks::field.blocks.warning',
'instructions' => 'anomaly.module.blocks::field.blocks.instructions',
],
],
],
'translations' => [
[
'id' => 115,
'assignment_id' => 115,
'locale' => 'en',
'label' => 'anomaly.module.blocks::field.blocks.label.areas',
'warning' => 'anomaly.module.blocks::field.blocks.warning.areas',
'placeholder' => 'anomaly.module.blocks::field.blocks.placeholder.areas',
'instructions' => 'anomaly.module.blocks::field.blocks.instructions.areas',
],
],
],
],
'translations' => [
[
'id' => 15,
'stream_id' => 15,
'locale' => 'en',
'name' => 'anomaly.module.blocks::stream.areas.name',
'description' => 'anomaly.module.blocks::stream.areas.description',
],
],
];

    
    /**
     * The blocks relation
     *
     * @return Relation
     */
    public function blocks()
    {
        return $this->getFieldType('blocks')->getRelation();
    }

}
