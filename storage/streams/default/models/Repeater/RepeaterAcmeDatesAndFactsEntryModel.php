<?php namespace Anomaly\Streams\Platform\Model\Repeater;

use Anomaly\Streams\Platform\Entry\EntryModel;

class RepeaterAcmeDatesAndFactsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'repeater_acme_dates_and_facts';

    protected $titleName = 'id';

    protected $rules = [
        'title' => '',
        'description' => '',
];

    protected $fields = [
        'title',
        'description',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Repeater\RepeaterAcmeDatesAndFactsEntryTranslationsModel';

    protected $stream = [
'id' => '64',
'sort_order' => '',
'namespace' => 'repeater',
'slug' => 'acme_dates_and_facts',
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
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'assignments' => [
[
'id' => 269,
'sort_order' => 263,
'stream_id' => 64,
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
'id' => 500,
'assignment_id' => 269,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 501,
'assignment_id' => 269,
'locale' => 'en',
'label' => 'Date',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 502,
'assignment_id' => 269,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 503,
'assignment_id' => 269,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 270,
'sort_order' => 264,
'stream_id' => 64,
'field_id' => 184,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '184',
'namespace' => 'repeater',
'slug' => 'description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:6:{s:4:"rows";s:1:"6";s:3:"min";N;s:3:"max";N;s:12:"show_counter";b:0;s:8:"autogrow";b:1;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 220,
'field_id' => 184,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 221,
'field_id' => 184,
'locale' => 'en',
'name' => 'Description',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 222,
'field_id' => 184,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 223,
'field_id' => 184,
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
'id' => 504,
'assignment_id' => 270,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 505,
'assignment_id' => 270,
'locale' => 'en',
'label' => 'Description',
'warning' => '',
'placeholder' => '',
'instructions' => 'Fact about this year',
],
[
'id' => 506,
'assignment_id' => 270,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 507,
'assignment_id' => 270,
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
'id' => 142,
'stream_id' => 64,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 143,
'stream_id' => 64,
'locale' => 'en',
'name' => 'Acme Dates&Facts',
'description' => '',
],
[
'id' => 144,
'stream_id' => 64,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 145,
'stream_id' => 64,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
