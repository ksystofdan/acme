<?php namespace Anomaly\Streams\Platform\Model\Repeater;

use Anomaly\Streams\Platform\Entry\EntryModel;

class RepeaterProductSpecificationsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'repeater_product_specifications';

    protected $titleName = 'id';

    protected $rules = [
        'title' => '',
        'value' => '',
];

    protected $fields = [
        'title',
        'value',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['title', 'value'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Repeater\RepeaterProductSpecificationsEntryTranslationsModel';

    protected $stream = [
'id' => '47',
'sort_order' => '',
'namespace' => 'repeater',
'slug' => 'product_specifications',
'prefix' => 'repeater_',
'title_column' => 'id',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '0',
'searchable' => '0',
'trashable' => '0',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'assignments' => [
[
'id' => 212,
'sort_order' => 210,
'stream_id' => 47,
'field_id' => 181,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '181',
'namespace' => 'repeater',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 208,
'field_id' => 181,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 209,
'field_id' => 181,
'locale' => 'en',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 210,
'field_id' => 181,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 211,
'field_id' => 181,
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
'id' => 272,
'assignment_id' => 212,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 273,
'assignment_id' => 212,
'locale' => 'en',
'label' => 'Property title',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 274,
'assignment_id' => 212,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 275,
'assignment_id' => 212,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 213,
'sort_order' => 211,
'stream_id' => 47,
'field_id' => 186,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '186',
'namespace' => 'repeater',
'slug' => 'value',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 228,
'field_id' => 186,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 229,
'field_id' => 186,
'locale' => 'en',
'name' => 'Value',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 230,
'field_id' => 186,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 231,
'field_id' => 186,
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
'id' => 276,
'assignment_id' => 213,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 277,
'assignment_id' => 213,
'locale' => 'en',
'label' => 'Property value',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 278,
'assignment_id' => 213,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 279,
'assignment_id' => 213,
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
'id' => 80,
'stream_id' => 47,
'locale' => 'ar',
'name' => 'Product specifications',
'description' => '',
],
[
'id' => 81,
'stream_id' => 47,
'locale' => 'en',
'name' => 'Specification:',
'description' => '',
],
[
'id' => 82,
'stream_id' => 47,
'locale' => 'de',
'name' => 'Product specifications',
'description' => '',
],
[
'id' => 83,
'stream_id' => 47,
'locale' => 'es',
'name' => 'Product specifications',
'description' => '',
],
],
];

    
}
