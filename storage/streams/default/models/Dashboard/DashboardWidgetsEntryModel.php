<?php namespace Anomaly\Streams\Platform\Model\Dashboard;

use Anomaly\Streams\Platform\Entry\EntryModel;

class DashboardWidgetsEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'dashboard_widgets';

    protected $titleName = 'title';

    protected $rules = [
        'title' => 'required',
        'description' => '',
        'extension' => 'required',
        'column' => 'required',
        'dashboard' => 'required',
        'allowed_roles' => '',
        'pinned' => '',
];

    protected $fields = [
        'title',
        'description',
        'extension',
        'column',
        'dashboard',
        'allowed_roles',
        'pinned',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['dashboard', 'allowed_roles'];

    protected $translatedAttributes = ['title', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Dashboard\DashboardWidgetsEntryTranslationsModel';

    protected $stream = [
'id' => '8',
'sort_order' => '',
'namespace' => 'dashboard',
'slug' => 'widgets',
'prefix' => 'dashboard_',
'title_column' => 'title',
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
'id' => 56,
'sort_order' => 55,
'stream_id' => 8,
'field_id' => 53,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '53',
'namespace' => 'dashboard',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 53,
'field_id' => 53,
'locale' => 'en',
'name' => 'anomaly.module.dashboard::field.title.name',
'placeholder' => 'anomaly.module.dashboard::field.title.placeholder',
'warning' => 'anomaly.module.dashboard::field.title.warning',
'instructions' => 'anomaly.module.dashboard::field.title.instructions',
],
],
],
'translations' => [
[
'id' => 56,
'assignment_id' => 56,
'locale' => 'en',
'label' => 'anomaly.module.dashboard::field.title.label.widgets',
'warning' => 'anomaly.module.dashboard::field.title.warning.widgets',
'placeholder' => 'anomaly.module.dashboard::field.title.placeholder.widgets',
'instructions' => 'anomaly.module.dashboard::field.title.instructions.widgets',
],
],
],
[
'id' => 57,
'sort_order' => 56,
'stream_id' => 8,
'field_id' => 51,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '51',
'namespace' => 'dashboard',
'slug' => 'description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 51,
'field_id' => 51,
'locale' => 'en',
'name' => 'anomaly.module.dashboard::field.description.name',
'placeholder' => 'anomaly.module.dashboard::field.description.placeholder',
'warning' => 'anomaly.module.dashboard::field.description.warning',
'instructions' => 'anomaly.module.dashboard::field.description.instructions',
],
],
],
'translations' => [
[
'id' => 57,
'assignment_id' => 57,
'locale' => 'en',
'label' => 'anomaly.module.dashboard::field.description.label.widgets',
'warning' => 'anomaly.module.dashboard::field.description.warning.widgets',
'placeholder' => 'anomaly.module.dashboard::field.description.placeholder.widgets',
'instructions' => 'anomaly.module.dashboard::field.description.instructions.widgets',
],
],
],
[
'id' => 58,
'sort_order' => 57,
'stream_id' => 8,
'field_id' => 54,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '54',
'namespace' => 'dashboard',
'slug' => 'extension',
'type' => 'anomaly.field_type.addon',
'config' => 'a:2:{s:4:"type";s:9:"extension";s:6:"search";s:34:"anomaly.module.dashboard::widget.*";}',
'locked' => '1',
'translations' => [
[
'id' => 54,
'field_id' => 54,
'locale' => 'en',
'name' => 'anomaly.module.dashboard::field.extension.name',
'placeholder' => 'anomaly.module.dashboard::field.extension.placeholder',
'warning' => 'anomaly.module.dashboard::field.extension.warning',
'instructions' => 'anomaly.module.dashboard::field.extension.instructions',
],
],
],
'translations' => [
[
'id' => 58,
'assignment_id' => 58,
'locale' => 'en',
'label' => 'anomaly.module.dashboard::field.extension.label.widgets',
'warning' => 'anomaly.module.dashboard::field.extension.warning.widgets',
'placeholder' => 'anomaly.module.dashboard::field.extension.placeholder.widgets',
'instructions' => 'anomaly.module.dashboard::field.extension.instructions.widgets',
],
],
],
[
'id' => 59,
'sort_order' => 58,
'stream_id' => 8,
'field_id' => 55,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '55',
'namespace' => 'dashboard',
'slug' => 'column',
'type' => 'anomaly.field_type.integer',
'config' => 'a:2:{s:3:"min";i:1;s:13:"default_value";i:1;}',
'locked' => '1',
'translations' => [
[
'id' => 55,
'field_id' => 55,
'locale' => 'en',
'name' => 'anomaly.module.dashboard::field.column.name',
'placeholder' => 'anomaly.module.dashboard::field.column.placeholder',
'warning' => 'anomaly.module.dashboard::field.column.warning',
'instructions' => 'anomaly.module.dashboard::field.column.instructions',
],
],
],
'translations' => [
[
'id' => 59,
'assignment_id' => 59,
'locale' => 'en',
'label' => 'anomaly.module.dashboard::field.column.label.widgets',
'warning' => 'anomaly.module.dashboard::field.column.warning.widgets',
'placeholder' => 'anomaly.module.dashboard::field.column.placeholder.widgets',
'instructions' => 'anomaly.module.dashboard::field.column.instructions.widgets',
],
],
],
[
'id' => 60,
'sort_order' => 59,
'stream_id' => 8,
'field_id' => 57,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '57',
'namespace' => 'dashboard',
'slug' => 'dashboard',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:1:{s:7:"related";s:48:"Anomaly\DashboardModule\Dashboard\DashboardModel";}',
'locked' => '1',
'translations' => [
[
'id' => 57,
'field_id' => 57,
'locale' => 'en',
'name' => 'anomaly.module.dashboard::field.dashboard.name',
'placeholder' => 'anomaly.module.dashboard::field.dashboard.placeholder',
'warning' => 'anomaly.module.dashboard::field.dashboard.warning',
'instructions' => 'anomaly.module.dashboard::field.dashboard.instructions',
],
],
],
'translations' => [
[
'id' => 60,
'assignment_id' => 60,
'locale' => 'en',
'label' => 'anomaly.module.dashboard::field.dashboard.label.widgets',
'warning' => 'anomaly.module.dashboard::field.dashboard.warning.widgets',
'placeholder' => 'anomaly.module.dashboard::field.dashboard.placeholder.widgets',
'instructions' => 'anomaly.module.dashboard::field.dashboard.instructions.widgets',
],
],
],
[
'id' => 61,
'sort_order' => 60,
'stream_id' => 8,
'field_id' => 58,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '58',
'namespace' => 'dashboard',
'slug' => 'allowed_roles',
'type' => 'anomaly.field_type.multiple',
'config' => 'a:1:{s:7:"related";s:34:"Anomaly\UsersModule\Role\RoleModel";}',
'locked' => '1',
'translations' => [
[
'id' => 58,
'field_id' => 58,
'locale' => 'en',
'name' => 'anomaly.module.dashboard::field.allowed_roles.name',
'placeholder' => 'anomaly.module.dashboard::field.allowed_roles.placeholder',
'warning' => 'anomaly.module.dashboard::field.allowed_roles.warning',
'instructions' => 'anomaly.module.dashboard::field.allowed_roles.instructions',
],
],
],
'translations' => [
[
'id' => 61,
'assignment_id' => 61,
'locale' => 'en',
'label' => 'anomaly.module.dashboard::field.allowed_roles.label.widgets',
'warning' => 'anomaly.module.dashboard::field.allowed_roles.warning.widgets',
'placeholder' => 'anomaly.module.dashboard::field.allowed_roles.placeholder.widgets',
'instructions' => 'anomaly.module.dashboard::field.allowed_roles.instructions.widgets',
],
],
],
[
'id' => 62,
'sort_order' => 61,
'stream_id' => 8,
'field_id' => 56,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '56',
'namespace' => 'dashboard',
'slug' => 'pinned',
'type' => 'anomaly.field_type.boolean',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 56,
'field_id' => 56,
'locale' => 'en',
'name' => 'anomaly.module.dashboard::field.pinned.name',
'placeholder' => 'anomaly.module.dashboard::field.pinned.placeholder',
'warning' => 'anomaly.module.dashboard::field.pinned.warning',
'instructions' => 'anomaly.module.dashboard::field.pinned.instructions',
],
],
],
'translations' => [
[
'id' => 62,
'assignment_id' => 62,
'locale' => 'en',
'label' => 'anomaly.module.dashboard::field.pinned.label.widgets',
'warning' => 'anomaly.module.dashboard::field.pinned.warning.widgets',
'placeholder' => 'anomaly.module.dashboard::field.pinned.placeholder.widgets',
'instructions' => 'anomaly.module.dashboard::field.pinned.instructions.widgets',
],
],
],
],
'translations' => [
[
'id' => 8,
'stream_id' => 8,
'locale' => 'en',
'name' => 'anomaly.module.dashboard::stream.widgets.name',
'description' => 'anomaly.module.dashboard::stream.widgets.description',
],
],
];

    
    /**
     * The dashboard relation
     *
     * @return Relation
     */
    public function dashboard()
    {
        return $this->getFieldType('dashboard')->getRelation();
    }

    /**
     * The allowed roles relation
     *
     * @return Relation
     */
    public function allowedRoles()
    {
        return $this->getFieldType('allowed_roles')->getRelation();
    }

}
