<?php namespace Anomaly\Streams\Platform\Model\Preferences;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PreferencesPreferencesEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'preferences_preferences';

    protected $titleName = 'id';

    protected $rules = [
        'user' => 'required',
        'key' => 'required',
        'value' => '',
];

    protected $fields = [
        'user',
        'key',
        'value',
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['user'];

    

    

    

    protected $stream = [
'id' => '2',
'sort_order' => '',
'namespace' => 'preferences',
'slug' => 'preferences',
'prefix' => 'preferences_',
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
'id' => 6,
'sort_order' => 6,
'stream_id' => 2,
'field_id' => 6,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '6',
'namespace' => 'preferences',
'slug' => 'user',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:2:{s:4:"mode";s:6:"lookup";s:7:"related";s:34:"Anomaly\UsersModule\User\UserModel";}',
'locked' => '1',
'translations' => [
[
'id' => 6,
'field_id' => 6,
'locale' => 'en',
'name' => 'anomaly.module.preferences::field.user.name',
'placeholder' => 'anomaly.module.preferences::field.user.placeholder',
'warning' => 'anomaly.module.preferences::field.user.warning',
'instructions' => 'anomaly.module.preferences::field.user.instructions',
],
],
],
'translations' => [
[
'id' => 6,
'assignment_id' => 6,
'locale' => 'en',
'label' => 'anomaly.module.preferences::field.user.label.preferences',
'warning' => 'anomaly.module.preferences::field.user.warning.preferences',
'placeholder' => 'anomaly.module.preferences::field.user.placeholder.preferences',
'instructions' => 'anomaly.module.preferences::field.user.instructions.preferences',
],
],
],
[
'id' => 7,
'sort_order' => 7,
'stream_id' => 2,
'field_id' => 7,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '7',
'namespace' => 'preferences',
'slug' => 'key',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 7,
'field_id' => 7,
'locale' => 'en',
'name' => 'anomaly.module.preferences::field.key.name',
'placeholder' => 'anomaly.module.preferences::field.key.placeholder',
'warning' => 'anomaly.module.preferences::field.key.warning',
'instructions' => 'anomaly.module.preferences::field.key.instructions',
],
],
],
'translations' => [
[
'id' => 7,
'assignment_id' => 7,
'locale' => 'en',
'label' => 'anomaly.module.preferences::field.key.label.preferences',
'warning' => 'anomaly.module.preferences::field.key.warning.preferences',
'placeholder' => 'anomaly.module.preferences::field.key.placeholder.preferences',
'instructions' => 'anomaly.module.preferences::field.key.instructions.preferences',
],
],
],
[
'id' => 8,
'sort_order' => 8,
'stream_id' => 2,
'field_id' => 8,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '8',
'namespace' => 'preferences',
'slug' => 'value',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 8,
'field_id' => 8,
'locale' => 'en',
'name' => 'anomaly.module.preferences::field.value.name',
'placeholder' => 'anomaly.module.preferences::field.value.placeholder',
'warning' => 'anomaly.module.preferences::field.value.warning',
'instructions' => 'anomaly.module.preferences::field.value.instructions',
],
],
],
'translations' => [
[
'id' => 8,
'assignment_id' => 8,
'locale' => 'en',
'label' => 'anomaly.module.preferences::field.value.label.preferences',
'warning' => 'anomaly.module.preferences::field.value.warning.preferences',
'placeholder' => 'anomaly.module.preferences::field.value.placeholder.preferences',
'instructions' => 'anomaly.module.preferences::field.value.instructions.preferences',
],
],
],
],
'translations' => [
[
'id' => 2,
'stream_id' => 2,
'locale' => 'en',
'name' => 'anomaly.module.preferences::stream.preferences.name',
'description' => 'anomaly.module.preferences::stream.preferences.description',
],
],
];

    
    /**
     * The user relation
     *
     * @return Relation
     */
    public function user()
    {
        return $this->getFieldType('user')->getRelation();
    }

}
