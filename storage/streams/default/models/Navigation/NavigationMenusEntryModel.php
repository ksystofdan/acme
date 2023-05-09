<?php namespace Anomaly\Streams\Platform\Model\Navigation;

use Anomaly\Streams\Platform\Entry\EntryModel;

class NavigationMenusEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'navigation_menus';

    protected $titleName = 'name';

    protected $rules = [
        'name' => 'required|unique:navigation_menus,name',
        'slug' => 'required|unique:navigation_menus,slug',
        'description' => '',
];

    protected $fields = [
        'name',
        'slug',
        'description',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['name', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Navigation\NavigationMenusEntryTranslationsModel';

    protected $stream = [
'id' => '22',
'sort_order' => '',
'namespace' => 'navigation',
'slug' => 'menus',
'prefix' => 'navigation_',
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
'id' => 157,
'sort_order' => 156,
'stream_id' => 22,
'field_id' => 139,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '139',
'namespace' => 'navigation',
'slug' => 'name',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 139,
'field_id' => 139,
'locale' => 'en',
'name' => 'anomaly.module.navigation::field.name.name',
'placeholder' => 'anomaly.module.navigation::field.name.placeholder',
'warning' => 'anomaly.module.navigation::field.name.warning',
'instructions' => 'anomaly.module.navigation::field.name.instructions',
],
],
],
'translations' => [
[
'id' => 157,
'assignment_id' => 157,
'locale' => 'en',
'label' => 'anomaly.module.navigation::field.name.label.menus',
'warning' => 'anomaly.module.navigation::field.name.warning.menus',
'placeholder' => 'anomaly.module.navigation::field.name.placeholder.menus',
'instructions' => 'anomaly.module.navigation::field.name.instructions.menus',
],
],
],
[
'id' => 158,
'sort_order' => 157,
'stream_id' => 22,
'field_id' => 143,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '143',
'namespace' => 'navigation',
'slug' => 'slug',
'type' => 'anomaly.field_type.slug',
'config' => 'a:1:{s:7:"slugify";s:4:"name";}',
'locked' => '1',
'translations' => [
[
'id' => 143,
'field_id' => 143,
'locale' => 'en',
'name' => 'anomaly.module.navigation::field.slug.name',
'placeholder' => 'anomaly.module.navigation::field.slug.placeholder',
'warning' => 'anomaly.module.navigation::field.slug.warning',
'instructions' => 'anomaly.module.navigation::field.slug.instructions',
],
],
],
'translations' => [
[
'id' => 158,
'assignment_id' => 158,
'locale' => 'en',
'label' => 'anomaly.module.navigation::field.slug.label.menus',
'warning' => 'anomaly.module.navigation::field.slug.warning.menus',
'placeholder' => 'anomaly.module.navigation::field.slug.placeholder.menus',
'instructions' => 'anomaly.module.navigation::field.slug.instructions.menus',
],
],
],
[
'id' => 159,
'sort_order' => 158,
'stream_id' => 22,
'field_id' => 141,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '141',
'namespace' => 'navigation',
'slug' => 'description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 141,
'field_id' => 141,
'locale' => 'en',
'name' => 'anomaly.module.navigation::field.description.name',
'placeholder' => 'anomaly.module.navigation::field.description.placeholder',
'warning' => 'anomaly.module.navigation::field.description.warning',
'instructions' => 'anomaly.module.navigation::field.description.instructions',
],
],
],
'translations' => [
[
'id' => 159,
'assignment_id' => 159,
'locale' => 'en',
'label' => 'anomaly.module.navigation::field.description.label.menus',
'warning' => 'anomaly.module.navigation::field.description.warning.menus',
'placeholder' => 'anomaly.module.navigation::field.description.placeholder.menus',
'instructions' => 'anomaly.module.navigation::field.description.instructions.menus',
],
],
],
],
'translations' => [
[
'id' => 22,
'stream_id' => 22,
'locale' => 'en',
'name' => 'anomaly.module.navigation::stream.menus.name',
'description' => 'anomaly.module.navigation::stream.menus.description',
],
],
];

    
}
