<?php namespace Anomaly\Streams\Platform\Model\Addons;

use Anomaly\Streams\Platform\Entry\EntryModel;

class AddonsRepositoriesEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'addons_repositories';

    protected $titleName = 'name';

    protected $rules = [
        'name' => 'required',
        'slug' => 'required|unique:addons_repositories,slug',
        'description' => '',
        'url' => 'required',
];

    protected $fields = [
        'name',
        'slug',
        'description',
        'url',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['name', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Addons\AddonsRepositoriesEntryTranslationsModel';

    protected $stream = [
'id' => '6',
'sort_order' => '',
'namespace' => 'addons',
'slug' => 'repositories',
'prefix' => 'addons_',
'title_column' => 'name',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '0',
'trashable' => '0',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 47,
'sort_order' => 46,
'stream_id' => 6,
'field_id' => 32,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '32',
'namespace' => 'addons',
'slug' => 'name',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 32,
'field_id' => 32,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.name.name',
'placeholder' => 'anomaly.module.addons::field.name.placeholder',
'warning' => 'anomaly.module.addons::field.name.warning',
'instructions' => 'anomaly.module.addons::field.name.instructions',
],
],
],
'translations' => [
[
'id' => 47,
'assignment_id' => 47,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.name.label.repositories',
'warning' => 'anomaly.module.addons::field.name.warning.repositories',
'placeholder' => 'anomaly.module.addons::field.name.placeholder.repositories',
'instructions' => 'anomaly.module.addons::field.name.instructions.repositories',
],
],
],
[
'id' => 48,
'sort_order' => 47,
'stream_id' => 6,
'field_id' => 33,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '33',
'namespace' => 'addons',
'slug' => 'slug',
'type' => 'anomaly.field_type.slug',
'config' => 'a:1:{s:7:"slugify";s:4:"name";}',
'locked' => '1',
'translations' => [
[
'id' => 33,
'field_id' => 33,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.slug.name',
'placeholder' => 'anomaly.module.addons::field.slug.placeholder',
'warning' => 'anomaly.module.addons::field.slug.warning',
'instructions' => 'anomaly.module.addons::field.slug.instructions',
],
],
],
'translations' => [
[
'id' => 48,
'assignment_id' => 48,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.slug.label.repositories',
'warning' => 'anomaly.module.addons::field.slug.warning.repositories',
'placeholder' => 'anomaly.module.addons::field.slug.placeholder.repositories',
'instructions' => 'anomaly.module.addons::field.slug.instructions.repositories',
],
],
],
[
'id' => 49,
'sort_order' => 48,
'stream_id' => 6,
'field_id' => 37,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '37',
'namespace' => 'addons',
'slug' => 'description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 37,
'field_id' => 37,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.description.name',
'placeholder' => 'anomaly.module.addons::field.description.placeholder',
'warning' => 'anomaly.module.addons::field.description.warning',
'instructions' => 'anomaly.module.addons::field.description.instructions',
],
],
],
'translations' => [
[
'id' => 49,
'assignment_id' => 49,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.description.label.repositories',
'warning' => 'anomaly.module.addons::field.description.warning.repositories',
'placeholder' => 'anomaly.module.addons::field.description.placeholder.repositories',
'instructions' => 'anomaly.module.addons::field.description.instructions.repositories',
],
],
],
[
'id' => 50,
'sort_order' => 49,
'stream_id' => 6,
'field_id' => 48,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '48',
'namespace' => 'addons',
'slug' => 'url',
'type' => 'anomaly.field_type.url',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 48,
'field_id' => 48,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.url.name',
'placeholder' => 'anomaly.module.addons::field.url.placeholder',
'warning' => 'anomaly.module.addons::field.url.warning',
'instructions' => 'anomaly.module.addons::field.url.instructions',
],
],
],
'translations' => [
[
'id' => 50,
'assignment_id' => 50,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.url.label.repositories',
'warning' => 'anomaly.module.addons::field.url.warning.repositories',
'placeholder' => 'anomaly.module.addons::field.url.placeholder.repositories',
'instructions' => 'anomaly.module.addons::field.url.instructions.repositories',
],
],
],
],
'translations' => [
[
'id' => 6,
'stream_id' => 6,
'locale' => 'en',
'name' => 'anomaly.module.addons::stream.repositories.name',
'description' => 'anomaly.module.addons::stream.repositories.description',
],
],
];

    
}
