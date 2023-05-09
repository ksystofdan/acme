<?php namespace Anomaly\Streams\Platform\Model\Repeater;

use Anomaly\Streams\Platform\Entry\EntryModel;

class RepeaterEmailPhoneListEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'repeater_email_phone_list';

    protected $titleName = 'id';

    protected $rules = [
        'type' => '',
        'email_phone' => '',
];

    protected $fields = [
        'type',
        'email_phone',
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    

    

    

    protected $stream = [
'id' => '95',
'sort_order' => '',
'namespace' => 'repeater',
'slug' => 'email_phone_list',
'prefix' => 'repeater_',
'title_column' => 'id',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '0',
'searchable' => '0',
'trashable' => '0',
'translatable' => '0',
'versionable' => '0',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'assignments' => [
[
'id' => 374,
'sort_order' => 344,
'stream_id' => 95,
'field_id' => 285,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '285',
'namespace' => 'repeater',
'slug' => 'type',
'type' => 'anomaly.field_type.select',
'config' => 'a:4:{s:4:"mode";s:8:"dropdown";s:7:"options";s:26:"P: Phone
E: Email
F: Fax";s:9:"separator";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 627,
'field_id' => 285,
'locale' => 'ar',
'name' => 'Type',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 628,
'field_id' => 285,
'locale' => 'en',
'name' => 'Type',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 629,
'field_id' => 285,
'locale' => 'de',
'name' => 'Type',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 630,
'field_id' => 285,
'locale' => 'es',
'name' => 'Type',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 917,
'assignment_id' => 374,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 918,
'assignment_id' => 374,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 919,
'assignment_id' => 374,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 920,
'assignment_id' => 374,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 375,
'sort_order' => 345,
'stream_id' => 95,
'field_id' => 286,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '286',
'namespace' => 'repeater',
'slug' => 'email_phone',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 631,
'field_id' => 286,
'locale' => 'ar',
'name' => 'Email/phone',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 632,
'field_id' => 286,
'locale' => 'en',
'name' => 'Email/Phone/Fax',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 633,
'field_id' => 286,
'locale' => 'de',
'name' => 'Email/phone',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 634,
'field_id' => 286,
'locale' => 'es',
'name' => 'Email/phone',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 921,
'assignment_id' => 375,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 922,
'assignment_id' => 375,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 923,
'assignment_id' => 375,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 924,
'assignment_id' => 375,
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
'id' => 257,
'stream_id' => 95,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 258,
'stream_id' => 95,
'locale' => 'en',
'name' => 'Email/Phone List',
'description' => '',
],
[
'id' => 259,
'stream_id' => 95,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 260,
'stream_id' => 95,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
