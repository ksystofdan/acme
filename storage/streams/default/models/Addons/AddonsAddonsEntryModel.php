<?php namespace Anomaly\Streams\Platform\Model\Addons;

use Anomaly\Streams\Platform\Entry\EntryModel;

class AddonsAddonsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'addons_addons';

    protected $titleName = 'name';

    protected $rules = [
        'type' => 'required',
        'name' => 'required|unique:addons_addons,name',
        'namespace' => 'required|unique:addons_addons,namespace',
        'title' => 'required',
        'versions' => 'required',
        'marketplace' => '',
        'description' => '',
        'homepage' => '',
        'requires' => '',
        'suggests' => '',
        'licenses' => '',
        'authors' => '',
        'support' => '',
        'assets' => '',
        'readme' => '',
];

    protected $fields = [
        'type',
        'name',
        'namespace',
        'title',
        'versions',
        'marketplace',
        'description',
        'homepage',
        'requires',
        'suggests',
        'licenses',
        'authors',
        'support',
        'assets',
        'readme',
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    

    

    

    protected $stream = [
'id' => '5',
'sort_order' => '',
'namespace' => 'addons',
'slug' => 'addons',
'prefix' => 'addons_',
'title_column' => 'name',
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
'id' => 32,
'sort_order' => 31,
'stream_id' => 5,
'field_id' => 31,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '31',
'namespace' => 'addons',
'slug' => 'type',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 31,
'field_id' => 31,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.type.name',
'placeholder' => 'anomaly.module.addons::field.type.placeholder',
'warning' => 'anomaly.module.addons::field.type.warning',
'instructions' => 'anomaly.module.addons::field.type.instructions',
],
],
],
'translations' => [
[
'id' => 32,
'assignment_id' => 32,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.type.label.addons',
'warning' => 'anomaly.module.addons::field.type.warning.addons',
'placeholder' => 'anomaly.module.addons::field.type.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.type.instructions.addons',
],
],
],
[
'id' => 33,
'sort_order' => 32,
'stream_id' => 5,
'field_id' => 32,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
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
'id' => 33,
'assignment_id' => 33,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.name.label.addons',
'warning' => 'anomaly.module.addons::field.name.warning.addons',
'placeholder' => 'anomaly.module.addons::field.name.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.name.instructions.addons',
],
],
],
[
'id' => 34,
'sort_order' => 33,
'stream_id' => 5,
'field_id' => 35,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '35',
'namespace' => 'addons',
'slug' => 'namespace',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 35,
'field_id' => 35,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.namespace.name',
'placeholder' => 'anomaly.module.addons::field.namespace.placeholder',
'warning' => 'anomaly.module.addons::field.namespace.warning',
'instructions' => 'anomaly.module.addons::field.namespace.instructions',
],
],
],
'translations' => [
[
'id' => 34,
'assignment_id' => 34,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.namespace.label.addons',
'warning' => 'anomaly.module.addons::field.namespace.warning.addons',
'placeholder' => 'anomaly.module.addons::field.namespace.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.namespace.instructions.addons',
],
],
],
[
'id' => 35,
'sort_order' => 34,
'stream_id' => 5,
'field_id' => 36,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '36',
'namespace' => 'addons',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 36,
'field_id' => 36,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.title.name',
'placeholder' => 'anomaly.module.addons::field.title.placeholder',
'warning' => 'anomaly.module.addons::field.title.warning',
'instructions' => 'anomaly.module.addons::field.title.instructions',
],
],
],
'translations' => [
[
'id' => 35,
'assignment_id' => 35,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.title.label.addons',
'warning' => 'anomaly.module.addons::field.title.warning.addons',
'placeholder' => 'anomaly.module.addons::field.title.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.title.instructions.addons',
],
],
],
[
'id' => 36,
'sort_order' => 35,
'stream_id' => 5,
'field_id' => 42,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '42',
'namespace' => 'addons',
'slug' => 'versions',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 42,
'field_id' => 42,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.versions.name',
'placeholder' => 'anomaly.module.addons::field.versions.placeholder',
'warning' => 'anomaly.module.addons::field.versions.warning',
'instructions' => 'anomaly.module.addons::field.versions.instructions',
],
],
],
'translations' => [
[
'id' => 36,
'assignment_id' => 36,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.versions.label.addons',
'warning' => 'anomaly.module.addons::field.versions.warning.addons',
'placeholder' => 'anomaly.module.addons::field.versions.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.versions.instructions.addons',
],
],
],
[
'id' => 37,
'sort_order' => 36,
'stream_id' => 5,
'field_id' => 38,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '38',
'namespace' => 'addons',
'slug' => 'marketplace',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 38,
'field_id' => 38,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.marketplace.name',
'placeholder' => 'anomaly.module.addons::field.marketplace.placeholder',
'warning' => 'anomaly.module.addons::field.marketplace.warning',
'instructions' => 'anomaly.module.addons::field.marketplace.instructions',
],
],
],
'translations' => [
[
'id' => 37,
'assignment_id' => 37,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.marketplace.label.addons',
'warning' => 'anomaly.module.addons::field.marketplace.warning.addons',
'placeholder' => 'anomaly.module.addons::field.marketplace.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.marketplace.instructions.addons',
],
],
],
[
'id' => 38,
'sort_order' => 37,
'stream_id' => 5,
'field_id' => 37,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
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
'id' => 38,
'assignment_id' => 38,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.description.label.addons',
'warning' => 'anomaly.module.addons::field.description.warning.addons',
'placeholder' => 'anomaly.module.addons::field.description.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.description.instructions.addons',
],
],
],
[
'id' => 39,
'sort_order' => 38,
'stream_id' => 5,
'field_id' => 39,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '39',
'namespace' => 'addons',
'slug' => 'homepage',
'type' => 'anomaly.field_type.url',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 39,
'field_id' => 39,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.homepage.name',
'placeholder' => 'anomaly.module.addons::field.homepage.placeholder',
'warning' => 'anomaly.module.addons::field.homepage.warning',
'instructions' => 'anomaly.module.addons::field.homepage.instructions',
],
],
],
'translations' => [
[
'id' => 39,
'assignment_id' => 39,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.homepage.label.addons',
'warning' => 'anomaly.module.addons::field.homepage.warning.addons',
'placeholder' => 'anomaly.module.addons::field.homepage.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.homepage.instructions.addons',
],
],
],
[
'id' => 40,
'sort_order' => 39,
'stream_id' => 5,
'field_id' => 40,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '40',
'namespace' => 'addons',
'slug' => 'requires',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 40,
'field_id' => 40,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.requires.name',
'placeholder' => 'anomaly.module.addons::field.requires.placeholder',
'warning' => 'anomaly.module.addons::field.requires.warning',
'instructions' => 'anomaly.module.addons::field.requires.instructions',
],
],
],
'translations' => [
[
'id' => 40,
'assignment_id' => 40,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.requires.label.addons',
'warning' => 'anomaly.module.addons::field.requires.warning.addons',
'placeholder' => 'anomaly.module.addons::field.requires.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.requires.instructions.addons',
],
],
],
[
'id' => 41,
'sort_order' => 40,
'stream_id' => 5,
'field_id' => 41,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '41',
'namespace' => 'addons',
'slug' => 'suggests',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 41,
'field_id' => 41,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.suggests.name',
'placeholder' => 'anomaly.module.addons::field.suggests.placeholder',
'warning' => 'anomaly.module.addons::field.suggests.warning',
'instructions' => 'anomaly.module.addons::field.suggests.instructions',
],
],
],
'translations' => [
[
'id' => 41,
'assignment_id' => 41,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.suggests.label.addons',
'warning' => 'anomaly.module.addons::field.suggests.warning.addons',
'placeholder' => 'anomaly.module.addons::field.suggests.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.suggests.instructions.addons',
],
],
],
[
'id' => 42,
'sort_order' => 41,
'stream_id' => 5,
'field_id' => 43,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '43',
'namespace' => 'addons',
'slug' => 'licenses',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 43,
'field_id' => 43,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.licenses.name',
'placeholder' => 'anomaly.module.addons::field.licenses.placeholder',
'warning' => 'anomaly.module.addons::field.licenses.warning',
'instructions' => 'anomaly.module.addons::field.licenses.instructions',
],
],
],
'translations' => [
[
'id' => 42,
'assignment_id' => 42,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.licenses.label.addons',
'warning' => 'anomaly.module.addons::field.licenses.warning.addons',
'placeholder' => 'anomaly.module.addons::field.licenses.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.licenses.instructions.addons',
],
],
],
[
'id' => 43,
'sort_order' => 42,
'stream_id' => 5,
'field_id' => 44,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '44',
'namespace' => 'addons',
'slug' => 'authors',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 44,
'field_id' => 44,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.authors.name',
'placeholder' => 'anomaly.module.addons::field.authors.placeholder',
'warning' => 'anomaly.module.addons::field.authors.warning',
'instructions' => 'anomaly.module.addons::field.authors.instructions',
],
],
],
'translations' => [
[
'id' => 43,
'assignment_id' => 43,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.authors.label.addons',
'warning' => 'anomaly.module.addons::field.authors.warning.addons',
'placeholder' => 'anomaly.module.addons::field.authors.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.authors.instructions.addons',
],
],
],
[
'id' => 44,
'sort_order' => 43,
'stream_id' => 5,
'field_id' => 45,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '45',
'namespace' => 'addons',
'slug' => 'support',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 45,
'field_id' => 45,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.support.name',
'placeholder' => 'anomaly.module.addons::field.support.placeholder',
'warning' => 'anomaly.module.addons::field.support.warning',
'instructions' => 'anomaly.module.addons::field.support.instructions',
],
],
],
'translations' => [
[
'id' => 44,
'assignment_id' => 44,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.support.label.addons',
'warning' => 'anomaly.module.addons::field.support.warning.addons',
'placeholder' => 'anomaly.module.addons::field.support.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.support.instructions.addons',
],
],
],
[
'id' => 45,
'sort_order' => 44,
'stream_id' => 5,
'field_id' => 46,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '46',
'namespace' => 'addons',
'slug' => 'assets',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 46,
'field_id' => 46,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.assets.name',
'placeholder' => 'anomaly.module.addons::field.assets.placeholder',
'warning' => 'anomaly.module.addons::field.assets.warning',
'instructions' => 'anomaly.module.addons::field.assets.instructions',
],
],
],
'translations' => [
[
'id' => 45,
'assignment_id' => 45,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.assets.label.addons',
'warning' => 'anomaly.module.addons::field.assets.warning.addons',
'placeholder' => 'anomaly.module.addons::field.assets.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.assets.instructions.addons',
],
],
],
[
'id' => 46,
'sort_order' => 45,
'stream_id' => 5,
'field_id' => 47,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '47',
'namespace' => 'addons',
'slug' => 'readme',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 47,
'field_id' => 47,
'locale' => 'en',
'name' => 'anomaly.module.addons::field.readme.name',
'placeholder' => 'anomaly.module.addons::field.readme.placeholder',
'warning' => 'anomaly.module.addons::field.readme.warning',
'instructions' => 'anomaly.module.addons::field.readme.instructions',
],
],
],
'translations' => [
[
'id' => 46,
'assignment_id' => 46,
'locale' => 'en',
'label' => 'anomaly.module.addons::field.readme.label.addons',
'warning' => 'anomaly.module.addons::field.readme.warning.addons',
'placeholder' => 'anomaly.module.addons::field.readme.placeholder.addons',
'instructions' => 'anomaly.module.addons::field.readme.instructions.addons',
],
],
],
],
'translations' => [
[
'id' => 5,
'stream_id' => 5,
'locale' => 'en',
'name' => 'anomaly.module.addons::stream.addons.name',
'description' => 'anomaly.module.addons::stream.addons.description',
],
],
];

    
}
