<?php namespace Anomaly\Streams\Platform\Model\Search;

use Anomaly\Streams\Platform\Entry\EntryModel;

class SearchItemsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'search_items';

    protected $titleName = 'title';

    protected $rules = [
        'title' => '',
        'description' => '',
        'keywords' => '',
        'entry' => 'required',
        'stream' => 'required',
        'locale' => 'required',
        'searchable' => '',
];

    protected $fields = [
        'title',
        'description',
        'keywords',
        'entry',
        'stream',
        'locale',
        'searchable',
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['entry', 'stream'];

    

    

    

    protected $stream = [
'id' => '24',
'sort_order' => '',
'namespace' => 'search',
'slug' => 'items',
'prefix' => 'search_',
'title_column' => 'title',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '0',
'searchable' => '0',
'trashable' => '0',
'translatable' => '0',
'versionable' => '0',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 167,
'sort_order' => 166,
'stream_id' => 24,
'field_id' => 149,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '149',
'namespace' => 'search',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 149,
'field_id' => 149,
'locale' => 'en',
'name' => 'anomaly.module.search::field.title.name',
'placeholder' => 'anomaly.module.search::field.title.placeholder',
'warning' => 'anomaly.module.search::field.title.warning',
'instructions' => 'anomaly.module.search::field.title.instructions',
],
],
],
'translations' => [
[
'id' => 167,
'assignment_id' => 167,
'locale' => 'en',
'label' => 'anomaly.module.search::field.title.label.items',
'warning' => 'anomaly.module.search::field.title.warning.items',
'placeholder' => 'anomaly.module.search::field.title.placeholder.items',
'instructions' => 'anomaly.module.search::field.title.instructions.items',
],
],
],
[
'id' => 168,
'sort_order' => 167,
'stream_id' => 24,
'field_id' => 151,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '151',
'namespace' => 'search',
'slug' => 'description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 151,
'field_id' => 151,
'locale' => 'en',
'name' => 'anomaly.module.search::field.description.name',
'placeholder' => 'anomaly.module.search::field.description.placeholder',
'warning' => 'anomaly.module.search::field.description.warning',
'instructions' => 'anomaly.module.search::field.description.instructions',
],
],
],
'translations' => [
[
'id' => 168,
'assignment_id' => 168,
'locale' => 'en',
'label' => 'anomaly.module.search::field.description.label.items',
'warning' => 'anomaly.module.search::field.description.warning.items',
'placeholder' => 'anomaly.module.search::field.description.placeholder.items',
'instructions' => 'anomaly.module.search::field.description.instructions.items',
],
],
],
[
'id' => 169,
'sort_order' => 168,
'stream_id' => 24,
'field_id' => 154,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '154',
'namespace' => 'search',
'slug' => 'keywords',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:1:{s:7:"storage";s:4:"json";}',
'locked' => '1',
'translations' => [
[
'id' => 154,
'field_id' => 154,
'locale' => 'en',
'name' => 'anomaly.module.search::field.keywords.name',
'placeholder' => 'anomaly.module.search::field.keywords.placeholder',
'warning' => 'anomaly.module.search::field.keywords.warning',
'instructions' => 'anomaly.module.search::field.keywords.instructions',
],
],
],
'translations' => [
[
'id' => 169,
'assignment_id' => 169,
'locale' => 'en',
'label' => 'anomaly.module.search::field.keywords.label.items',
'warning' => 'anomaly.module.search::field.keywords.warning.items',
'placeholder' => 'anomaly.module.search::field.keywords.placeholder.items',
'instructions' => 'anomaly.module.search::field.keywords.instructions.items',
],
],
],
[
'id' => 170,
'sort_order' => 169,
'stream_id' => 24,
'field_id' => 152,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '152',
'namespace' => 'search',
'slug' => 'entry',
'type' => 'anomaly.field_type.polymorphic',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 152,
'field_id' => 152,
'locale' => 'en',
'name' => 'anomaly.module.search::field.entry.name',
'placeholder' => 'anomaly.module.search::field.entry.placeholder',
'warning' => 'anomaly.module.search::field.entry.warning',
'instructions' => 'anomaly.module.search::field.entry.instructions',
],
],
],
'translations' => [
[
'id' => 170,
'assignment_id' => 170,
'locale' => 'en',
'label' => 'anomaly.module.search::field.entry.label.items',
'warning' => 'anomaly.module.search::field.entry.warning.items',
'placeholder' => 'anomaly.module.search::field.entry.placeholder.items',
'instructions' => 'anomaly.module.search::field.entry.instructions.items',
],
],
],
[
'id' => 171,
'sort_order' => 170,
'stream_id' => 24,
'field_id' => 153,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '153',
'namespace' => 'search',
'slug' => 'stream',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:2:{s:4:"mode";s:6:"search";s:7:"related";s:43:"Anomaly\Streams\Platform\Stream\StreamModel";}',
'locked' => '1',
'translations' => [
[
'id' => 153,
'field_id' => 153,
'locale' => 'en',
'name' => 'anomaly.module.search::field.stream.name',
'placeholder' => 'anomaly.module.search::field.stream.placeholder',
'warning' => 'anomaly.module.search::field.stream.warning',
'instructions' => 'anomaly.module.search::field.stream.instructions',
],
],
],
'translations' => [
[
'id' => 171,
'assignment_id' => 171,
'locale' => 'en',
'label' => 'anomaly.module.search::field.stream.label.items',
'warning' => 'anomaly.module.search::field.stream.warning.items',
'placeholder' => 'anomaly.module.search::field.stream.placeholder.items',
'instructions' => 'anomaly.module.search::field.stream.instructions.items',
],
],
],
[
'id' => 172,
'sort_order' => 171,
'stream_id' => 24,
'field_id' => 150,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '150',
'namespace' => 'search',
'slug' => 'locale',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 150,
'field_id' => 150,
'locale' => 'en',
'name' => 'anomaly.module.search::field.locale.name',
'placeholder' => 'anomaly.module.search::field.locale.placeholder',
'warning' => 'anomaly.module.search::field.locale.warning',
'instructions' => 'anomaly.module.search::field.locale.instructions',
],
],
],
'translations' => [
[
'id' => 172,
'assignment_id' => 172,
'locale' => 'en',
'label' => 'anomaly.module.search::field.locale.label.items',
'warning' => 'anomaly.module.search::field.locale.warning.items',
'placeholder' => 'anomaly.module.search::field.locale.placeholder.items',
'instructions' => 'anomaly.module.search::field.locale.instructions.items',
],
],
],
[
'id' => 173,
'sort_order' => 172,
'stream_id' => 24,
'field_id' => 155,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '155',
'namespace' => 'search',
'slug' => 'searchable',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:1:{s:7:"storage";s:4:"json";}',
'locked' => '1',
'translations' => [
[
'id' => 155,
'field_id' => 155,
'locale' => 'en',
'name' => 'anomaly.module.search::field.searchable.name',
'placeholder' => 'anomaly.module.search::field.searchable.placeholder',
'warning' => 'anomaly.module.search::field.searchable.warning',
'instructions' => 'anomaly.module.search::field.searchable.instructions',
],
],
],
'translations' => [
[
'id' => 173,
'assignment_id' => 173,
'locale' => 'en',
'label' => 'anomaly.module.search::field.searchable.label.items',
'warning' => 'anomaly.module.search::field.searchable.warning.items',
'placeholder' => 'anomaly.module.search::field.searchable.placeholder.items',
'instructions' => 'anomaly.module.search::field.searchable.instructions.items',
],
],
],
],
'translations' => [
[
'id' => 24,
'stream_id' => 24,
'locale' => 'en',
'name' => 'anomaly.module.search::stream.items.name',
'description' => 'anomaly.module.search::stream.items.description',
],
],
];

    
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
     * The stream relation
     *
     * @return Relation
     */
    public function stream()
    {
        return $this->getFieldType('stream')->getRelation();
    }

}
