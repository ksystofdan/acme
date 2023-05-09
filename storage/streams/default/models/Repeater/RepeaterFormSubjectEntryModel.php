<?php namespace Anomaly\Streams\Platform\Model\Repeater;

use Anomaly\Streams\Platform\Entry\EntryModel;

class RepeaterFormSubjectEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'repeater_form_subject';

    protected $titleName = 'id';

    protected $rules = [
        'title' => 'required|unique:repeater_form_subject,title',
];

    protected $fields = [
        'title',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Repeater\RepeaterFormSubjectEntryTranslationsModel';

    protected $stream = [
'id' => '84',
'sort_order' => '',
'namespace' => 'repeater',
'slug' => 'form_subject',
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
'id' => 340,
'sort_order' => 321,
'stream_id' => 84,
'field_id' => 181,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 1,
'required' => 1,
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
'id' => 781,
'assignment_id' => 340,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 782,
'assignment_id' => 340,
'locale' => 'en',
'label' => 'Subject name',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 783,
'assignment_id' => 340,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 784,
'assignment_id' => 340,
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
'id' => 213,
'stream_id' => 84,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 214,
'stream_id' => 84,
'locale' => 'en',
'name' => 'Contact Form Subject',
'description' => '',
],
[
'id' => 215,
'stream_id' => 84,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 216,
'stream_id' => 84,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
