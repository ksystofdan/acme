<?php namespace Anomaly\Streams\Platform\Model\Repeater;

use Anomaly\Streams\Platform\Entry\EntryModel;

class RepeaterNewsletterEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'repeater_newsletter';

    protected $titleName = 'id';

    protected $rules = [
        'emails' => '',
];

    protected $fields = [
        'emails',
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    

    

    

    protected $stream = [
'id' => '97',
'sort_order' => '',
'namespace' => 'repeater',
'slug' => 'newsletter',
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
'id' => 399,
'sort_order' => 360,
'stream_id' => 97,
'field_id' => 297,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '297',
'namespace' => 'repeater',
'slug' => 'emails',
'type' => 'anomaly.field_type.email',
'config' => 'a:1:{s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 675,
'field_id' => 297,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 676,
'field_id' => 297,
'locale' => 'en',
'name' => 'Emails',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 677,
'field_id' => 297,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 678,
'field_id' => 297,
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
'id' => 1017,
'assignment_id' => 399,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1018,
'assignment_id' => 399,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1019,
'assignment_id' => 399,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1020,
'assignment_id' => 399,
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
'id' => 262,
'stream_id' => 97,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 263,
'stream_id' => 97,
'locale' => 'en',
'name' => 'Newsletter emails',
'description' => 'Were newsletter email collecting',
],
[
'id' => 264,
'stream_id' => 97,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 265,
'stream_id' => 97,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
