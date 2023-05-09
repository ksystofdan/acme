<?php namespace Anomaly\Streams\Platform\Model\Navigation;

use Anomaly\Streams\Platform\Entry\EntryModel;

class NavigationLinksEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'navigation_links';

    protected $titleName = 'id';

    protected $rules = [
        'menu' => 'required',
        'type' => 'required',
        'entry' => 'required',
        'target' => 'required',
        'class' => '',
        'parent' => '',
        'allowed_roles' => '',
];

    protected $fields = [
        'menu',
        'type',
        'entry',
        'target',
        'class',
        'parent',
        'allowed_roles',
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['menu', 'entry', 'parent', 'allowed_roles'];

    

    

    

    protected $stream = [
'id' => '23',
'sort_order' => '',
'namespace' => 'navigation',
'slug' => 'links',
'prefix' => 'navigation_',
'title_column' => 'id',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '0',
'trashable' => '1',
'translatable' => '0',
'versionable' => '0',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 160,
'sort_order' => 159,
'stream_id' => 23,
'field_id' => 144,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '144',
'namespace' => 'navigation',
'slug' => 'menu',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:1:{s:7:"related";s:39:"Anomaly\NavigationModule\Menu\MenuModel";}',
'locked' => '1',
'translations' => [
[
'id' => 144,
'field_id' => 144,
'locale' => 'en',
'name' => 'anomaly.module.navigation::field.menu.name',
'placeholder' => 'anomaly.module.navigation::field.menu.placeholder',
'warning' => 'anomaly.module.navigation::field.menu.warning',
'instructions' => 'anomaly.module.navigation::field.menu.instructions',
],
],
],
'translations' => [
[
'id' => 160,
'assignment_id' => 160,
'locale' => 'en',
'label' => 'anomaly.module.navigation::field.menu.label.links',
'warning' => 'anomaly.module.navigation::field.menu.warning.links',
'placeholder' => 'anomaly.module.navigation::field.menu.placeholder.links',
'instructions' => 'anomaly.module.navigation::field.menu.instructions.links',
],
],
],
[
'id' => 161,
'sort_order' => 160,
'stream_id' => 23,
'field_id' => 147,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '147',
'namespace' => 'navigation',
'slug' => 'type',
'type' => 'anomaly.field_type.addon',
'config' => 'a:2:{s:4:"type";s:9:"extension";s:6:"search";s:38:"anomaly.module.navigation::link_type.*";}',
'locked' => '1',
'translations' => [
[
'id' => 147,
'field_id' => 147,
'locale' => 'en',
'name' => 'anomaly.module.navigation::field.type.name',
'placeholder' => 'anomaly.module.navigation::field.type.placeholder',
'warning' => 'anomaly.module.navigation::field.type.warning',
'instructions' => 'anomaly.module.navigation::field.type.instructions',
],
],
],
'translations' => [
[
'id' => 161,
'assignment_id' => 161,
'locale' => 'en',
'label' => 'anomaly.module.navigation::field.type.label.links',
'warning' => 'anomaly.module.navigation::field.type.warning.links',
'placeholder' => 'anomaly.module.navigation::field.type.placeholder.links',
'instructions' => 'anomaly.module.navigation::field.type.instructions.links',
],
],
],
[
'id' => 162,
'sort_order' => 161,
'stream_id' => 23,
'field_id' => 142,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '142',
'namespace' => 'navigation',
'slug' => 'entry',
'type' => 'anomaly.field_type.polymorphic',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 142,
'field_id' => 142,
'locale' => 'en',
'name' => 'anomaly.module.navigation::field.entry.name',
'placeholder' => 'anomaly.module.navigation::field.entry.placeholder',
'warning' => 'anomaly.module.navigation::field.entry.warning',
'instructions' => 'anomaly.module.navigation::field.entry.instructions',
],
],
],
'translations' => [
[
'id' => 162,
'assignment_id' => 162,
'locale' => 'en',
'label' => 'anomaly.module.navigation::field.entry.label.links',
'warning' => 'anomaly.module.navigation::field.entry.warning.links',
'placeholder' => 'anomaly.module.navigation::field.entry.placeholder.links',
'instructions' => 'anomaly.module.navigation::field.entry.instructions.links',
],
],
],
[
'id' => 163,
'sort_order' => 162,
'stream_id' => 23,
'field_id' => 148,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '148',
'namespace' => 'navigation',
'slug' => 'target',
'type' => 'anomaly.field_type.select',
'config' => 'a:2:{s:13:"default_value";s:5:"_self";s:7:"options";a:2:{s:5:"_self";s:51:"anomaly.module.navigation::field.target.option.self";s:6:"_blank";s:52:"anomaly.module.navigation::field.target.option.blank";}}',
'locked' => '1',
'translations' => [
[
'id' => 148,
'field_id' => 148,
'locale' => 'en',
'name' => 'anomaly.module.navigation::field.target.name',
'placeholder' => 'anomaly.module.navigation::field.target.placeholder',
'warning' => 'anomaly.module.navigation::field.target.warning',
'instructions' => 'anomaly.module.navigation::field.target.instructions',
],
],
],
'translations' => [
[
'id' => 163,
'assignment_id' => 163,
'locale' => 'en',
'label' => 'anomaly.module.navigation::field.target.label.links',
'warning' => 'anomaly.module.navigation::field.target.warning.links',
'placeholder' => 'anomaly.module.navigation::field.target.placeholder.links',
'instructions' => 'anomaly.module.navigation::field.target.instructions.links',
],
],
],
[
'id' => 164,
'sort_order' => 163,
'stream_id' => 23,
'field_id' => 140,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '140',
'namespace' => 'navigation',
'slug' => 'class',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 140,
'field_id' => 140,
'locale' => 'en',
'name' => 'anomaly.module.navigation::field.class.name',
'placeholder' => 'anomaly.module.navigation::field.class.placeholder',
'warning' => 'anomaly.module.navigation::field.class.warning',
'instructions' => 'anomaly.module.navigation::field.class.instructions',
],
],
],
'translations' => [
[
'id' => 164,
'assignment_id' => 164,
'locale' => 'en',
'label' => 'anomaly.module.navigation::field.class.label.links',
'warning' => 'anomaly.module.navigation::field.class.warning.links',
'placeholder' => 'anomaly.module.navigation::field.class.placeholder.links',
'instructions' => 'anomaly.module.navigation::field.class.instructions.links',
],
],
],
[
'id' => 165,
'sort_order' => 164,
'stream_id' => 23,
'field_id' => 145,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '145',
'namespace' => 'navigation',
'slug' => 'parent',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:1:{s:7:"related";s:39:"Anomaly\NavigationModule\Link\LinkModel";}',
'locked' => '1',
'translations' => [
[
'id' => 145,
'field_id' => 145,
'locale' => 'en',
'name' => 'anomaly.module.navigation::field.parent.name',
'placeholder' => 'anomaly.module.navigation::field.parent.placeholder',
'warning' => 'anomaly.module.navigation::field.parent.warning',
'instructions' => 'anomaly.module.navigation::field.parent.instructions',
],
],
],
'translations' => [
[
'id' => 165,
'assignment_id' => 165,
'locale' => 'en',
'label' => 'anomaly.module.navigation::field.parent.label.links',
'warning' => 'anomaly.module.navigation::field.parent.warning.links',
'placeholder' => 'anomaly.module.navigation::field.parent.placeholder.links',
'instructions' => 'anomaly.module.navigation::field.parent.instructions.links',
],
],
],
[
'id' => 166,
'sort_order' => 165,
'stream_id' => 23,
'field_id' => 146,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '146',
'namespace' => 'navigation',
'slug' => 'allowed_roles',
'type' => 'anomaly.field_type.multiple',
'config' => 'a:1:{s:7:"related";s:34:"Anomaly\UsersModule\Role\RoleModel";}',
'locked' => '1',
'translations' => [
[
'id' => 146,
'field_id' => 146,
'locale' => 'en',
'name' => 'anomaly.module.navigation::field.allowed_roles.name',
'placeholder' => 'anomaly.module.navigation::field.allowed_roles.placeholder',
'warning' => 'anomaly.module.navigation::field.allowed_roles.warning',
'instructions' => 'anomaly.module.navigation::field.allowed_roles.instructions',
],
],
],
'translations' => [
[
'id' => 166,
'assignment_id' => 166,
'locale' => 'en',
'label' => 'anomaly.module.navigation::field.allowed_roles.label.links',
'warning' => 'anomaly.module.navigation::field.allowed_roles.warning.links',
'placeholder' => 'anomaly.module.navigation::field.allowed_roles.placeholder.links',
'instructions' => 'anomaly.module.navigation::field.allowed_roles.instructions.links',
],
],
],
],
'translations' => [
[
'id' => 23,
'stream_id' => 23,
'locale' => 'en',
'name' => 'anomaly.module.navigation::stream.links.name',
'description' => 'anomaly.module.navigation::stream.links.description',
],
],
];

    
    /**
     * The menu relation
     *
     * @return Relation
     */
    public function menu()
    {
        return $this->getFieldType('menu')->getRelation();
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
     * The parent relation
     *
     * @return Relation
     */
    public function parent()
    {
        return $this->getFieldType('parent')->getRelation();
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
