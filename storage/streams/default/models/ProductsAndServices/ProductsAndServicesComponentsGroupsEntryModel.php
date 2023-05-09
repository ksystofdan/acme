<?php namespace Anomaly\Streams\Platform\Model\ProductsAndServices;

use Anomaly\Streams\Platform\Entry\EntryModel;

class ProductsAndServicesComponentsGroupsEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = false;

    protected $table = 'products_and_services_components_groups';

    protected $titleName = 'title';

    protected $rules = [
        'title' => 'required',
];

    protected $fields = [
        'title',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\ProductsAndServices\ProductsAndServicesComponentsGroupsEntryTranslationsModel';

    protected $stream = [
'id' => '40',
'sort_order' => '',
'namespace' => 'products_and_services',
'slug' => 'components_groups',
'prefix' => 'products_and_services_',
'title_column' => 'title',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '1',
'trashable' => '1',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'assignments' => [
[
'id' => 198,
'sort_order' => 196,
'stream_id' => 40,
'field_id' => 173,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 1,
'searchable' => 1,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '173',
'namespace' => 'products_and_services',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 182,
'field_id' => 173,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 183,
'field_id' => 173,
'locale' => 'en',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 184,
'field_id' => 173,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 185,
'field_id' => 173,
'locale' => 'es',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 216,
'assignment_id' => 198,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 217,
'assignment_id' => 198,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 218,
'assignment_id' => 198,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 219,
'assignment_id' => 198,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
],
'translations' => [
[
'id' => 55,
'stream_id' => 40,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 56,
'stream_id' => 40,
'locale' => 'en',
'name' => 'Components groups',
'description' => '',
],
[
'id' => 57,
'stream_id' => 40,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 58,
'stream_id' => 40,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
