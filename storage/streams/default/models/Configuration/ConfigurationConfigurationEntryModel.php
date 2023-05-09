<?php namespace Anomaly\Streams\Platform\Model\Configuration;

use Anomaly\Streams\Platform\Entry\EntryModel;

class ConfigurationConfigurationEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'configuration_configuration';

    protected $titleName = 'id';

    protected $rules = [
        'scope' => 'required',
        'key' => 'required',
        'value' => '',
];

    protected $fields = [
        'scope',
        'key',
        'value',
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    

    

    

    protected $stream = [
'id' => '18',
'sort_order' => '',
'namespace' => 'configuration',
'slug' => 'configuration',
'prefix' => 'configuration_',
'title_column' => 'id',
'order_by' => 'id',
'locked' => '1',
'hidden' => '0',
'sortable' => '0',
'searchable' => '0',
'trashable' => '0',
'translatable' => '0',
'versionable' => '0',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 129,
'sort_order' => 128,
'stream_id' => 18,
'field_id' => 118,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '118',
'namespace' => 'configuration',
'slug' => 'scope',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 118,
'field_id' => 118,
'locale' => 'en',
'name' => 'anomaly.module.configuration::field.scope.name',
'placeholder' => 'anomaly.module.configuration::field.scope.placeholder',
'warning' => 'anomaly.module.configuration::field.scope.warning',
'instructions' => 'anomaly.module.configuration::field.scope.instructions',
],
],
],
'translations' => [
[
'id' => 129,
'assignment_id' => 129,
'locale' => 'en',
'label' => 'anomaly.module.configuration::field.scope.label.configuration',
'warning' => 'anomaly.module.configuration::field.scope.warning.configuration',
'placeholder' => 'anomaly.module.configuration::field.scope.placeholder.configuration',
'instructions' => 'anomaly.module.configuration::field.scope.instructions.configuration',
],
],
],
[
'id' => 130,
'sort_order' => 129,
'stream_id' => 18,
'field_id' => 119,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '119',
'namespace' => 'configuration',
'slug' => 'key',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 119,
'field_id' => 119,
'locale' => 'en',
'name' => 'anomaly.module.configuration::field.key.name',
'placeholder' => 'anomaly.module.configuration::field.key.placeholder',
'warning' => 'anomaly.module.configuration::field.key.warning',
'instructions' => 'anomaly.module.configuration::field.key.instructions',
],
],
],
'translations' => [
[
'id' => 130,
'assignment_id' => 130,
'locale' => 'en',
'label' => 'anomaly.module.configuration::field.key.label.configuration',
'warning' => 'anomaly.module.configuration::field.key.warning.configuration',
'placeholder' => 'anomaly.module.configuration::field.key.placeholder.configuration',
'instructions' => 'anomaly.module.configuration::field.key.instructions.configuration',
],
],
],
[
'id' => 131,
'sort_order' => 130,
'stream_id' => 18,
'field_id' => 120,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '120',
'namespace' => 'configuration',
'slug' => 'value',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 120,
'field_id' => 120,
'locale' => 'en',
'name' => 'anomaly.module.configuration::field.value.name',
'placeholder' => 'anomaly.module.configuration::field.value.placeholder',
'warning' => 'anomaly.module.configuration::field.value.warning',
'instructions' => 'anomaly.module.configuration::field.value.instructions',
],
],
],
'translations' => [
[
'id' => 131,
'assignment_id' => 131,
'locale' => 'en',
'label' => 'anomaly.module.configuration::field.value.label.configuration',
'warning' => 'anomaly.module.configuration::field.value.warning.configuration',
'placeholder' => 'anomaly.module.configuration::field.value.placeholder.configuration',
'instructions' => 'anomaly.module.configuration::field.value.instructions.configuration',
],
],
],
],
'translations' => [
[
'id' => 18,
'stream_id' => 18,
'locale' => 'en',
'name' => 'anomaly.module.configuration::stream.configuration.name',
'description' => 'anomaly.module.configuration::stream.configuration.description',
],
],
];

    
}
