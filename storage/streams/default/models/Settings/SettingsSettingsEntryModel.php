<?php namespace Anomaly\Streams\Platform\Model\Settings;

use Anomaly\Streams\Platform\Entry\EntryModel;

class SettingsSettingsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'settings_settings';

    protected $titleName = 'id';

    protected $rules = [
        'key' => 'required|unique:settings_settings,key',
        'value' => '',
];

    protected $fields = [
        'key',
        'value',
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    

    

    

    protected $stream = [
'id' => '14',
'sort_order' => '',
'namespace' => 'settings',
'slug' => 'settings',
'prefix' => 'settings_',
'title_column' => 'id',
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
'id' => 110,
'sort_order' => 109,
'stream_id' => 14,
'field_id' => 102,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '102',
'namespace' => 'settings',
'slug' => 'key',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 102,
'field_id' => 102,
'locale' => 'en',
'name' => 'anomaly.module.settings::field.key.name',
'placeholder' => 'anomaly.module.settings::field.key.placeholder',
'warning' => 'anomaly.module.settings::field.key.warning',
'instructions' => 'anomaly.module.settings::field.key.instructions',
],
],
],
'translations' => [
[
'id' => 110,
'assignment_id' => 110,
'locale' => 'en',
'label' => 'anomaly.module.settings::field.key.label.settings',
'warning' => 'anomaly.module.settings::field.key.warning.settings',
'placeholder' => 'anomaly.module.settings::field.key.placeholder.settings',
'instructions' => 'anomaly.module.settings::field.key.instructions.settings',
],
],
],
[
'id' => 111,
'sort_order' => 110,
'stream_id' => 14,
'field_id' => 103,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '103',
'namespace' => 'settings',
'slug' => 'value',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 103,
'field_id' => 103,
'locale' => 'en',
'name' => 'anomaly.module.settings::field.value.name',
'placeholder' => 'anomaly.module.settings::field.value.placeholder',
'warning' => 'anomaly.module.settings::field.value.warning',
'instructions' => 'anomaly.module.settings::field.value.instructions',
],
],
],
'translations' => [
[
'id' => 111,
'assignment_id' => 111,
'locale' => 'en',
'label' => 'anomaly.module.settings::field.value.label.settings',
'warning' => 'anomaly.module.settings::field.value.warning.settings',
'placeholder' => 'anomaly.module.settings::field.value.placeholder.settings',
'instructions' => 'anomaly.module.settings::field.value.instructions.settings',
],
],
],
],
'translations' => [
[
'id' => 14,
'stream_id' => 14,
'locale' => 'en',
'name' => 'anomaly.module.settings::stream.settings.name',
'description' => 'anomaly.module.settings::stream.settings.description',
],
],
];

    
}
