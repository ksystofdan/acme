<?php namespace Anomaly\Streams\Platform\Model\Users;

use Anomaly\Streams\Platform\Entry\EntryModel;

class UsersRolesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'users_roles';

    protected $titleName = 'name';

    protected $rules = [
        'name' => 'required',
        'slug' => 'required|unique:users_roles,slug',
        'description' => '',
        'permissions' => '',
];

    protected $fields = [
        'name',
        'slug',
        'description',
        'permissions',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['name', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Users\UsersRolesEntryTranslationsModel';

    protected $stream = [
'id' => '13',
'sort_order' => '',
'namespace' => 'users',
'slug' => 'roles',
'prefix' => 'users_',
'title_column' => 'name',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '0',
'searchable' => '0',
'trashable' => '1',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 105,
'sort_order' => 104,
'stream_id' => 13,
'field_id' => 91,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '91',
'namespace' => 'users',
'slug' => 'name',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 91,
'field_id' => 91,
'locale' => 'en',
'name' => 'anomaly.module.users::field.name.name',
'placeholder' => 'anomaly.module.users::field.name.placeholder',
'warning' => 'anomaly.module.users::field.name.warning',
'instructions' => 'anomaly.module.users::field.name.instructions',
],
],
],
'translations' => [
[
'id' => 105,
'assignment_id' => 105,
'locale' => 'en',
'label' => 'anomaly.module.users::field.name.label.roles',
'warning' => 'anomaly.module.users::field.name.warning.roles',
'placeholder' => 'anomaly.module.users::field.name.placeholder.roles',
'instructions' => 'anomaly.module.users::field.name.instructions.roles',
],
],
],
[
'id' => 106,
'sort_order' => 105,
'stream_id' => 13,
'field_id' => 99,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '99',
'namespace' => 'users',
'slug' => 'slug',
'type' => 'anomaly.field_type.slug',
'config' => 'a:1:{s:7:"slugify";s:4:"name";}',
'locked' => '1',
'translations' => [
[
'id' => 99,
'field_id' => 99,
'locale' => 'en',
'name' => 'anomaly.module.users::field.slug.name',
'placeholder' => 'anomaly.module.users::field.slug.placeholder',
'warning' => 'anomaly.module.users::field.slug.warning',
'instructions' => 'anomaly.module.users::field.slug.instructions',
],
],
],
'translations' => [
[
'id' => 106,
'assignment_id' => 106,
'locale' => 'en',
'label' => 'anomaly.module.users::field.slug.label.roles',
'warning' => 'anomaly.module.users::field.slug.warning.roles',
'placeholder' => 'anomaly.module.users::field.slug.placeholder.roles',
'instructions' => 'anomaly.module.users::field.slug.instructions.roles',
],
],
],
[
'id' => 107,
'sort_order' => 106,
'stream_id' => 13,
'field_id' => 92,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '92',
'namespace' => 'users',
'slug' => 'description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 92,
'field_id' => 92,
'locale' => 'en',
'name' => 'anomaly.module.users::field.description.name',
'placeholder' => 'anomaly.module.users::field.description.placeholder',
'warning' => 'anomaly.module.users::field.description.warning',
'instructions' => 'anomaly.module.users::field.description.instructions',
],
],
],
'translations' => [
[
'id' => 107,
'assignment_id' => 107,
'locale' => 'en',
'label' => 'anomaly.module.users::field.description.label.roles',
'warning' => 'anomaly.module.users::field.description.warning.roles',
'placeholder' => 'anomaly.module.users::field.description.placeholder.roles',
'instructions' => 'anomaly.module.users::field.description.instructions.roles',
],
],
],
[
'id' => 108,
'sort_order' => 107,
'stream_id' => 13,
'field_id' => 87,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '87',
'namespace' => 'users',
'slug' => 'permissions',
'type' => 'anomaly.field_type.checkboxes',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 87,
'field_id' => 87,
'locale' => 'en',
'name' => 'anomaly.module.users::field.permissions.name',
'placeholder' => 'anomaly.module.users::field.permissions.placeholder',
'warning' => 'anomaly.module.users::field.permissions.warning',
'instructions' => 'anomaly.module.users::field.permissions.instructions',
],
],
],
'translations' => [
[
'id' => 108,
'assignment_id' => 108,
'locale' => 'en',
'label' => 'anomaly.module.users::field.permissions.label.roles',
'warning' => 'anomaly.module.users::field.permissions.warning.roles',
'placeholder' => 'anomaly.module.users::field.permissions.placeholder.roles',
'instructions' => 'anomaly.module.users::field.permissions.instructions.roles',
],
],
],
],
'translations' => [
[
'id' => 13,
'stream_id' => 13,
'locale' => 'en',
'name' => 'anomaly.module.users::stream.roles.name',
'description' => 'anomaly.module.users::stream.roles.description',
],
],
];

    
}
