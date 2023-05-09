<?php namespace Anomaly\Streams\Platform\Model\Redirects;

use Anomaly\Streams\Platform\Entry\EntryModel;

class RedirectsDomainsEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'redirects_domains';

    protected $titleName = 'from';

    protected $rules = [
        'from' => 'required|unique:redirects_domains,from',
        'to' => '',
        'status' => 'required',
        'secure' => '',
];

    protected $fields = [
        'from',
        'to',
        'status',
        'secure',
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    

    

    

    protected $stream = [
'id' => '26',
'sort_order' => '',
'namespace' => 'redirects',
'slug' => 'domains',
'prefix' => 'redirects_',
'title_column' => 'from',
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
'id' => 178,
'sort_order' => 177,
'stream_id' => 26,
'field_id' => 156,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '156',
'namespace' => 'redirects',
'slug' => 'from',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 156,
'field_id' => 156,
'locale' => 'en',
'name' => 'anomaly.module.redirects::field.from.name',
'placeholder' => 'anomaly.module.redirects::field.from.placeholder',
'warning' => 'anomaly.module.redirects::field.from.warning',
'instructions' => 'anomaly.module.redirects::field.from.instructions',
],
],
],
'translations' => [
[
'id' => 178,
'assignment_id' => 178,
'locale' => 'en',
'label' => 'anomaly.module.redirects::field.from.label.domains',
'warning' => 'anomaly.module.redirects::field.from.warning.domains',
'placeholder' => 'anomaly.module.redirects::field.from.placeholder.domains',
'instructions' => 'anomaly.module.redirects::field.from.instructions.domains',
],
],
],
[
'id' => 179,
'sort_order' => 178,
'stream_id' => 26,
'field_id' => 157,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '157',
'namespace' => 'redirects',
'slug' => 'to',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 157,
'field_id' => 157,
'locale' => 'en',
'name' => 'anomaly.module.redirects::field.to.name',
'placeholder' => 'anomaly.module.redirects::field.to.placeholder',
'warning' => 'anomaly.module.redirects::field.to.warning',
'instructions' => 'anomaly.module.redirects::field.to.instructions',
],
],
],
'translations' => [
[
'id' => 179,
'assignment_id' => 179,
'locale' => 'en',
'label' => 'anomaly.module.redirects::field.to.label.domains',
'warning' => 'anomaly.module.redirects::field.to.warning.domains',
'placeholder' => 'anomaly.module.redirects::field.to.placeholder.domains',
'instructions' => 'anomaly.module.redirects::field.to.instructions.domains',
],
],
],
[
'id' => 180,
'sort_order' => 179,
'stream_id' => 26,
'field_id' => 158,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '158',
'namespace' => 'redirects',
'slug' => 'status',
'type' => 'anomaly.field_type.select',
'config' => 'a:2:{s:13:"default_value";s:3:"301";s:7:"options";a:2:{i:301;s:49:"anomaly.module.redirects::field.status.option.301";i:302;s:49:"anomaly.module.redirects::field.status.option.302";}}',
'locked' => '1',
'translations' => [
[
'id' => 158,
'field_id' => 158,
'locale' => 'en',
'name' => 'anomaly.module.redirects::field.status.name',
'placeholder' => 'anomaly.module.redirects::field.status.placeholder',
'warning' => 'anomaly.module.redirects::field.status.warning',
'instructions' => 'anomaly.module.redirects::field.status.instructions',
],
],
],
'translations' => [
[
'id' => 180,
'assignment_id' => 180,
'locale' => 'en',
'label' => 'anomaly.module.redirects::field.status.label.domains',
'warning' => 'anomaly.module.redirects::field.status.warning.domains',
'placeholder' => 'anomaly.module.redirects::field.status.placeholder.domains',
'instructions' => 'anomaly.module.redirects::field.status.instructions.domains',
],
],
],
[
'id' => 181,
'sort_order' => 180,
'stream_id' => 26,
'field_id' => 159,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '159',
'namespace' => 'redirects',
'slug' => 'secure',
'type' => 'anomaly.field_type.boolean',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 159,
'field_id' => 159,
'locale' => 'en',
'name' => 'anomaly.module.redirects::field.secure.name',
'placeholder' => 'anomaly.module.redirects::field.secure.placeholder',
'warning' => 'anomaly.module.redirects::field.secure.warning',
'instructions' => 'anomaly.module.redirects::field.secure.instructions',
],
],
],
'translations' => [
[
'id' => 181,
'assignment_id' => 181,
'locale' => 'en',
'label' => 'anomaly.module.redirects::field.secure.label.domains',
'warning' => 'anomaly.module.redirects::field.secure.warning.domains',
'placeholder' => 'anomaly.module.redirects::field.secure.placeholder.domains',
'instructions' => 'anomaly.module.redirects::field.secure.instructions.domains',
],
],
],
],
'translations' => [
[
'id' => 26,
'stream_id' => 26,
'locale' => 'en',
'name' => 'anomaly.module.redirects::stream.domains.name',
'description' => 'anomaly.module.redirects::stream.domains.description',
],
],
];

    
}
