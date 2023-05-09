<?php namespace Anomaly\Streams\Platform\Model\Dashboard;

use Anomaly\Streams\Platform\Entry\EntryModel;

class DashboardDashboardsEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'dashboard_dashboards';

    protected $titleName = 'name';

    protected $rules = [
        'name' => 'required',
        'slug' => 'required|unique:dashboard_dashboards,slug',
        'description' => '',
        'layout' => 'required',
        'allowed_roles' => '',
];

    protected $fields = [
        'name',
        'slug',
        'description',
        'layout',
        'allowed_roles',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['allowed_roles'];

    protected $translatedAttributes = ['name', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Dashboard\DashboardDashboardsEntryTranslationsModel';

    protected $stream = [
'id' => '7',
'sort_order' => '',
'namespace' => 'dashboard',
'slug' => 'dashboards',
'prefix' => 'dashboard_',
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
'id' => 51,
'sort_order' => 50,
'stream_id' => 7,
'field_id' => 49,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '49',
'namespace' => 'dashboard',
'slug' => 'name',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 49,
'field_id' => 49,
'locale' => 'en',
'name' => 'anomaly.module.dashboard::field.name.name',
'placeholder' => 'anomaly.module.dashboard::field.name.placeholder',
'warning' => 'anomaly.module.dashboard::field.name.warning',
'instructions' => 'anomaly.module.dashboard::field.name.instructions',
],
],
],
'translations' => [
[
'id' => 51,
'assignment_id' => 51,
'locale' => 'en',
'label' => 'anomaly.module.dashboard::field.name.label.dashboards',
'warning' => 'anomaly.module.dashboard::field.name.warning.dashboards',
'placeholder' => 'anomaly.module.dashboard::field.name.placeholder.dashboards',
'instructions' => 'anomaly.module.dashboard::field.name.instructions.dashboards',
],
],
],
[
'id' => 52,
'sort_order' => 51,
'stream_id' => 7,
'field_id' => 50,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '50',
'namespace' => 'dashboard',
'slug' => 'slug',
'type' => 'anomaly.field_type.slug',
'config' => 'a:1:{s:7:"slugify";s:4:"name";}',
'locked' => '1',
'translations' => [
[
'id' => 50,
'field_id' => 50,
'locale' => 'en',
'name' => 'anomaly.module.dashboard::field.slug.name',
'placeholder' => 'anomaly.module.dashboard::field.slug.placeholder',
'warning' => 'anomaly.module.dashboard::field.slug.warning',
'instructions' => 'anomaly.module.dashboard::field.slug.instructions',
],
],
],
'translations' => [
[
'id' => 52,
'assignment_id' => 52,
'locale' => 'en',
'label' => 'anomaly.module.dashboard::field.slug.label.dashboards',
'warning' => 'anomaly.module.dashboard::field.slug.warning.dashboards',
'placeholder' => 'anomaly.module.dashboard::field.slug.placeholder.dashboards',
'instructions' => 'anomaly.module.dashboard::field.slug.instructions.dashboards',
],
],
],
[
'id' => 53,
'sort_order' => 52,
'stream_id' => 7,
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
'id' => 53,
'assignment_id' => 53,
'locale' => 'en',
'label' => 'anomaly.module.dashboard::field.description.label.dashboards',
'warning' => 'anomaly.module.dashboard::field.description.warning.dashboards',
'placeholder' => 'anomaly.module.dashboard::field.description.placeholder.dashboards',
'instructions' => 'anomaly.module.dashboard::field.description.instructions.dashboards',
],
],
],
[
'id' => 54,
'sort_order' => 53,
'stream_id' => 7,
'field_id' => 52,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '52',
'namespace' => 'dashboard',
'slug' => 'layout',
'type' => 'anomaly.field_type.select',
'config' => 'a:1:{s:7:"options";a:9:{i:24;s:48:"anomaly.module.dashboard::field.layout.option.24";s:5:"12-12";s:51:"anomaly.module.dashboard::field.layout.option.12-12";s:4:"16-8";s:50:"anomaly.module.dashboard::field.layout.option.16-8";s:4:"8-16";s:50:"anomaly.module.dashboard::field.layout.option.8-16";s:5:"8-8-8";s:51:"anomaly.module.dashboard::field.layout.option.8-8-8";s:6:"6-12-6";s:52:"anomaly.module.dashboard::field.layout.option.6-12-6";s:6:"12-6-6";s:52:"anomaly.module.dashboard::field.layout.option.12-6-6";s:6:"6-6-12";s:52:"anomaly.module.dashboard::field.layout.option.6-6-12";s:7:"6-6-6-6";s:53:"anomaly.module.dashboard::field.layout.option.6-6-6-6";}}',
'locked' => '1',
'translations' => [
[
'id' => 52,
'field_id' => 52,
'locale' => 'en',
'name' => 'anomaly.module.dashboard::field.layout.name',
'placeholder' => 'anomaly.module.dashboard::field.layout.placeholder',
'warning' => 'anomaly.module.dashboard::field.layout.warning',
'instructions' => 'anomaly.module.dashboard::field.layout.instructions',
],
],
],
'translations' => [
[
'id' => 54,
'assignment_id' => 54,
'locale' => 'en',
'label' => 'anomaly.module.dashboard::field.layout.label.dashboards',
'warning' => 'anomaly.module.dashboard::field.layout.warning.dashboards',
'placeholder' => 'anomaly.module.dashboard::field.layout.placeholder.dashboards',
'instructions' => 'anomaly.module.dashboard::field.layout.instructions.dashboards',
],
],
],
[
'id' => 55,
'sort_order' => 54,
'stream_id' => 7,
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
'id' => 55,
'assignment_id' => 55,
'locale' => 'en',
'label' => 'anomaly.module.dashboard::field.allowed_roles.label.dashboards',
'warning' => 'anomaly.module.dashboard::field.allowed_roles.warning.dashboards',
'placeholder' => 'anomaly.module.dashboard::field.allowed_roles.placeholder.dashboards',
'instructions' => 'anomaly.module.dashboard::field.allowed_roles.instructions.dashboards',
],
],
],
],
'translations' => [
[
'id' => 7,
'stream_id' => 7,
'locale' => 'en',
'name' => 'anomaly.module.dashboard::stream.dashboards.name',
'description' => 'anomaly.module.dashboard::stream.dashboards.description',
],
],
];

    
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
