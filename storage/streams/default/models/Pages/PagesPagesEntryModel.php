<?php namespace Anomaly\Streams\Platform\Model\Pages;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PagesPagesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = false;

    protected $table = 'pages_pages';

    protected $titleName = 'title';

    protected $rules = [
        'str_id' => 'required',
        'title' => 'required',
        'slug' => 'required',
        'path' => 'required',
        'type' => 'required',
        'entry' => '',
        'parent' => '',
        'visible' => '',
        'enabled' => '',
        'exact' => '',
        'home' => '',
        'meta_title' => '',
        'meta_description' => '',
        'theme_layout' => '',
        'allowed_roles' => '',
        'publish_at' => '',
];

    protected $fields = [
        'str_id',
        'title',
        'slug',
        'path',
        'type',
        'entry',
        'parent',
        'visible',
        'enabled',
        'exact',
        'home',
        'meta_title',
        'meta_description',
        'theme_layout',
        'allowed_roles',
        'publish_at',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'publish_at', 'deleted_at'];

    protected $relationships = ['type', 'entry', 'parent', 'allowed_roles'];

    protected $translatedAttributes = ['title', 'slug', 'path', 'meta_title', 'meta_description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Pages\PagesPagesEntryTranslationsModel';

    protected $stream = [
'id' => '3',
'sort_order' => '',
'namespace' => 'pages',
'slug' => 'pages',
'prefix' => 'pages_',
'title_column' => 'title',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '1',
'trashable' => '1',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 9,
'sort_order' => 9,
'stream_id' => 3,
'field_id' => 9,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '9',
'namespace' => 'pages',
'slug' => 'str_id',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 9,
'field_id' => 9,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.str_id.name',
'placeholder' => 'anomaly.module.pages::field.str_id.placeholder',
'warning' => 'anomaly.module.pages::field.str_id.warning',
'instructions' => 'anomaly.module.pages::field.str_id.instructions',
],
],
],
'translations' => [
[
'id' => 9,
'assignment_id' => 9,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.str_id.label.pages',
'warning' => 'anomaly.module.pages::field.str_id.warning.pages',
'placeholder' => 'anomaly.module.pages::field.str_id.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.str_id.instructions.pages',
],
],
],
[
'id' => 10,
'sort_order' => 10,
'stream_id' => 3,
'field_id' => 10,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '10',
'namespace' => 'pages',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 10,
'field_id' => 10,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.title.name',
'placeholder' => 'anomaly.module.pages::field.title.placeholder',
'warning' => 'anomaly.module.pages::field.title.warning',
'instructions' => 'anomaly.module.pages::field.title.instructions',
],
],
],
'translations' => [
[
'id' => 10,
'assignment_id' => 10,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.title.label.pages',
'warning' => 'anomaly.module.pages::field.title.warning.pages',
'placeholder' => 'anomaly.module.pages::field.title.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.title.instructions.pages',
],
],
],
[
'id' => 11,
'sort_order' => 11,
'stream_id' => 3,
'field_id' => 11,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '11',
'namespace' => 'pages',
'slug' => 'slug',
'type' => 'anomaly.field_type.slug',
'config' => 'a:2:{s:7:"slugify";s:5:"title";s:4:"type";s:1:"-";}',
'locked' => '1',
'translations' => [
[
'id' => 11,
'field_id' => 11,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.slug.name',
'placeholder' => 'anomaly.module.pages::field.slug.placeholder',
'warning' => 'anomaly.module.pages::field.slug.warning',
'instructions' => 'anomaly.module.pages::field.slug.instructions',
],
],
],
'translations' => [
[
'id' => 11,
'assignment_id' => 11,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.slug.label.pages',
'warning' => 'anomaly.module.pages::field.slug.warning.pages',
'placeholder' => 'anomaly.module.pages::field.slug.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.slug.instructions.pages',
],
],
],
[
'id' => 12,
'sort_order' => 12,
'stream_id' => 3,
'field_id' => 13,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '13',
'namespace' => 'pages',
'slug' => 'path',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 13,
'field_id' => 13,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.path.name',
'placeholder' => 'anomaly.module.pages::field.path.placeholder',
'warning' => 'anomaly.module.pages::field.path.warning',
'instructions' => 'anomaly.module.pages::field.path.instructions',
],
],
],
'translations' => [
[
'id' => 12,
'assignment_id' => 12,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.path.label.pages',
'warning' => 'anomaly.module.pages::field.path.warning.pages',
'placeholder' => 'anomaly.module.pages::field.path.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.path.instructions.pages',
],
],
],
[
'id' => 13,
'sort_order' => 13,
'stream_id' => 3,
'field_id' => 23,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '23',
'namespace' => 'pages',
'slug' => 'type',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:1:{s:7:"related";s:34:"Anomaly\PagesModule\Type\TypeModel";}',
'locked' => '1',
'translations' => [
[
'id' => 23,
'field_id' => 23,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.type.name',
'placeholder' => 'anomaly.module.pages::field.type.placeholder',
'warning' => 'anomaly.module.pages::field.type.warning',
'instructions' => 'anomaly.module.pages::field.type.instructions',
],
],
],
'translations' => [
[
'id' => 13,
'assignment_id' => 13,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.type.label.pages',
'warning' => 'anomaly.module.pages::field.type.warning.pages',
'placeholder' => 'anomaly.module.pages::field.type.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.type.instructions.pages',
],
],
],
[
'id' => 14,
'sort_order' => 14,
'stream_id' => 3,
'field_id' => 27,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '27',
'namespace' => 'pages',
'slug' => 'entry',
'type' => 'anomaly.field_type.polymorphic',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 27,
'field_id' => 27,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.entry.name',
'placeholder' => 'anomaly.module.pages::field.entry.placeholder',
'warning' => 'anomaly.module.pages::field.entry.warning',
'instructions' => 'anomaly.module.pages::field.entry.instructions',
],
],
],
'translations' => [
[
'id' => 14,
'assignment_id' => 14,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.entry.label.pages',
'warning' => 'anomaly.module.pages::field.entry.warning.pages',
'placeholder' => 'anomaly.module.pages::field.entry.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.entry.instructions.pages',
],
],
],
[
'id' => 15,
'sort_order' => 15,
'stream_id' => 3,
'field_id' => 21,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '21',
'namespace' => 'pages',
'slug' => 'parent',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:2:{s:4:"mode";s:6:"lookup";s:7:"related";s:34:"Anomaly\PagesModule\Page\PageModel";}',
'locked' => '1',
'translations' => [
[
'id' => 21,
'field_id' => 21,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.parent.name',
'placeholder' => 'anomaly.module.pages::field.parent.placeholder',
'warning' => 'anomaly.module.pages::field.parent.warning',
'instructions' => 'anomaly.module.pages::field.parent.instructions',
],
],
],
'translations' => [
[
'id' => 15,
'assignment_id' => 15,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.parent.label.pages',
'warning' => 'anomaly.module.pages::field.parent.warning.pages',
'placeholder' => 'anomaly.module.pages::field.parent.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.parent.instructions.pages',
],
],
],
[
'id' => 16,
'sort_order' => 16,
'stream_id' => 3,
'field_id' => 25,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '25',
'namespace' => 'pages',
'slug' => 'visible',
'type' => 'anomaly.field_type.boolean',
'config' => 'a:1:{s:13:"default_value";b:1;}',
'locked' => '1',
'translations' => [
[
'id' => 25,
'field_id' => 25,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.visible.name',
'placeholder' => 'anomaly.module.pages::field.visible.placeholder',
'warning' => 'anomaly.module.pages::field.visible.warning',
'instructions' => 'anomaly.module.pages::field.visible.instructions',
],
],
],
'translations' => [
[
'id' => 16,
'assignment_id' => 16,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.visible.label.pages',
'warning' => 'anomaly.module.pages::field.visible.warning.pages',
'placeholder' => 'anomaly.module.pages::field.visible.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.visible.instructions.pages',
],
],
],
[
'id' => 17,
'sort_order' => 17,
'stream_id' => 3,
'field_id' => 14,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '14',
'namespace' => 'pages',
'slug' => 'enabled',
'type' => 'anomaly.field_type.boolean',
'config' => 'a:1:{s:13:"default_value";b:1;}',
'locked' => '1',
'translations' => [
[
'id' => 14,
'field_id' => 14,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.enabled.name',
'placeholder' => 'anomaly.module.pages::field.enabled.placeholder',
'warning' => 'anomaly.module.pages::field.enabled.warning',
'instructions' => 'anomaly.module.pages::field.enabled.instructions',
],
],
],
'translations' => [
[
'id' => 17,
'assignment_id' => 17,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.enabled.label.pages',
'warning' => 'anomaly.module.pages::field.enabled.warning.pages',
'placeholder' => 'anomaly.module.pages::field.enabled.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.enabled.instructions.pages',
],
],
],
[
'id' => 18,
'sort_order' => 18,
'stream_id' => 3,
'field_id' => 26,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '26',
'namespace' => 'pages',
'slug' => 'exact',
'type' => 'anomaly.field_type.boolean',
'config' => 'a:1:{s:13:"default_value";b:1;}',
'locked' => '1',
'translations' => [
[
'id' => 26,
'field_id' => 26,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.exact.name',
'placeholder' => 'anomaly.module.pages::field.exact.placeholder',
'warning' => 'anomaly.module.pages::field.exact.warning',
'instructions' => 'anomaly.module.pages::field.exact.instructions',
],
],
],
'translations' => [
[
'id' => 18,
'assignment_id' => 18,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.exact.label.pages',
'warning' => 'anomaly.module.pages::field.exact.warning.pages',
'placeholder' => 'anomaly.module.pages::field.exact.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.exact.instructions.pages',
],
],
],
[
'id' => 19,
'sort_order' => 19,
'stream_id' => 3,
'field_id' => 15,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '15',
'namespace' => 'pages',
'slug' => 'home',
'type' => 'anomaly.field_type.boolean',
'config' => 'a:1:{s:13:"default_value";b:0;}',
'locked' => '1',
'translations' => [
[
'id' => 15,
'field_id' => 15,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.home.name',
'placeholder' => 'anomaly.module.pages::field.home.placeholder',
'warning' => 'anomaly.module.pages::field.home.warning',
'instructions' => 'anomaly.module.pages::field.home.instructions',
],
],
],
'translations' => [
[
'id' => 19,
'assignment_id' => 19,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.home.label.pages',
'warning' => 'anomaly.module.pages::field.home.warning.pages',
'placeholder' => 'anomaly.module.pages::field.home.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.home.instructions.pages',
],
],
],
[
'id' => 20,
'sort_order' => 20,
'stream_id' => 3,
'field_id' => 16,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '16',
'namespace' => 'pages',
'slug' => 'meta_title',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 16,
'field_id' => 16,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.meta_title.name',
'placeholder' => 'anomaly.module.pages::field.meta_title.placeholder',
'warning' => 'anomaly.module.pages::field.meta_title.warning',
'instructions' => 'anomaly.module.pages::field.meta_title.instructions',
],
],
],
'translations' => [
[
'id' => 20,
'assignment_id' => 20,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.meta_title.label.pages',
'warning' => 'anomaly.module.pages::field.meta_title.warning.pages',
'placeholder' => 'anomaly.module.pages::field.meta_title.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.meta_title.instructions.pages',
],
],
],
[
'id' => 21,
'sort_order' => 21,
'stream_id' => 3,
'field_id' => 17,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '17',
'namespace' => 'pages',
'slug' => 'meta_description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 17,
'field_id' => 17,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.meta_description.name',
'placeholder' => 'anomaly.module.pages::field.meta_description.placeholder',
'warning' => 'anomaly.module.pages::field.meta_description.warning',
'instructions' => 'anomaly.module.pages::field.meta_description.instructions',
],
],
],
'translations' => [
[
'id' => 21,
'assignment_id' => 21,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.meta_description.label.pages',
'warning' => 'anomaly.module.pages::field.meta_description.warning.pages',
'placeholder' => 'anomaly.module.pages::field.meta_description.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.meta_description.instructions.pages',
],
],
],
[
'id' => 23,
'sort_order' => 23,
'stream_id' => 3,
'field_id' => 22,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '22',
'namespace' => 'pages',
'slug' => 'theme_layout',
'type' => 'anomaly.field_type.select',
'config' => 'a:2:{s:13:"default_value";s:27:"theme::layouts/default.twig";s:7:"handler";s:46:"Anomaly\SelectFieldType\Handler\Layouts@handle";}',
'locked' => '1',
'translations' => [
[
'id' => 22,
'field_id' => 22,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.theme_layout.name',
'placeholder' => 'anomaly.module.pages::field.theme_layout.placeholder',
'warning' => 'anomaly.module.pages::field.theme_layout.warning',
'instructions' => 'anomaly.module.pages::field.theme_layout.instructions',
],
],
],
'translations' => [
[
'id' => 23,
'assignment_id' => 23,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.theme_layout.label.pages',
'warning' => 'anomaly.module.pages::field.theme_layout.warning.pages',
'placeholder' => 'anomaly.module.pages::field.theme_layout.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.theme_layout.instructions.pages',
],
],
],
[
'id' => 24,
'sort_order' => 24,
'stream_id' => 3,
'field_id' => 20,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '20',
'namespace' => 'pages',
'slug' => 'allowed_roles',
'type' => 'anomaly.field_type.multiple',
'config' => 'a:1:{s:7:"related";s:34:"Anomaly\UsersModule\Role\RoleModel";}',
'locked' => '1',
'translations' => [
[
'id' => 20,
'field_id' => 20,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.allowed_roles.name',
'placeholder' => 'anomaly.module.pages::field.allowed_roles.placeholder',
'warning' => 'anomaly.module.pages::field.allowed_roles.warning',
'instructions' => 'anomaly.module.pages::field.allowed_roles.instructions',
],
],
],
'translations' => [
[
'id' => 24,
'assignment_id' => 24,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.allowed_roles.label.pages',
'warning' => 'anomaly.module.pages::field.allowed_roles.warning.pages',
'placeholder' => 'anomaly.module.pages::field.allowed_roles.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.allowed_roles.instructions.pages',
],
],
],
[
'id' => 31,
'sort_order' => 30,
'stream_id' => 3,
'field_id' => 30,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '30',
'namespace' => 'pages',
'slug' => 'publish_at',
'type' => 'anomaly.field_type.datetime',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 30,
'field_id' => 30,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.publish_at.name',
'placeholder' => 'anomaly.module.pages::field.publish_at.placeholder',
'warning' => 'anomaly.module.pages::field.publish_at.warning',
'instructions' => 'anomaly.module.pages::field.publish_at.instructions',
],
],
],
'translations' => [
[
'id' => 31,
'assignment_id' => 31,
'locale' => 'en',
'label' => 'anomaly.module.pages::field.publish_at.label.pages',
'warning' => 'anomaly.module.pages::field.publish_at.warning.pages',
'placeholder' => 'anomaly.module.pages::field.publish_at.placeholder.pages',
'instructions' => 'anomaly.module.pages::field.publish_at.instructions.pages',
],
],
],
],
'translations' => [
[
'id' => 3,
'stream_id' => 3,
'locale' => 'en',
'name' => 'anomaly.module.pages::stream.pages.name',
'description' => 'anomaly.module.pages::stream.pages.description',
],
],
];

    
    /**
     * The type relation
     *
     * @return Relation
     */
    public function type()
    {
        return $this->getFieldType('type')->getRelation();
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
