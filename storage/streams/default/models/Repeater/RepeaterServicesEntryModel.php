<?php namespace Anomaly\Streams\Platform\Model\Repeater;

use Anomaly\Streams\Platform\Entry\EntryModel;

class RepeaterServicesEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'repeater_services';

    protected $titleName = 'id';

    protected $rules = [
        'title' => '',
        'text_1' => '',
        'text_2' => '',
];

    protected $fields = [
        'title',
        'text_1',
        'text_2',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Repeater\RepeaterServicesEntryTranslationsModel';

    protected $stream = [
'id' => '76',
'sort_order' => '',
'namespace' => 'repeater',
'slug' => 'services',
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
'id' => 298,
'sort_order' => 285,
'stream_id' => 76,
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
'id' => 616,
'assignment_id' => 298,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 617,
'assignment_id' => 298,
'locale' => 'en',
'label' => 'Title',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 618,
'assignment_id' => 298,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 619,
'assignment_id' => 298,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 299,
'sort_order' => 286,
'stream_id' => 76,
'field_id' => 196,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '196',
'namespace' => 'repeater',
'slug' => 'text_1',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:6:{s:7:"buttons";a:2:{i:0;s:4:"bold";i:1;s:6:"italic";}s:7:"plugins";a:2:{i:0;s:6:"source";i:1;s:10:"fullscreen";}s:6:"height";s:3:"150";s:11:"line_breaks";b:0;s:16:"remove_new_lines";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 268,
'field_id' => 196,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 269,
'field_id' => 196,
'locale' => 'en',
'name' => 'Text 1',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 270,
'field_id' => 196,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 271,
'field_id' => 196,
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
'id' => 620,
'assignment_id' => 299,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 621,
'assignment_id' => 299,
'locale' => 'en',
'label' => '1 Column',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 622,
'assignment_id' => 299,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 623,
'assignment_id' => 299,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 300,
'sort_order' => 287,
'stream_id' => 76,
'field_id' => 197,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '197',
'namespace' => 'repeater',
'slug' => 'text_2',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:6:{s:7:"buttons";a:2:{i:0;s:4:"bold";i:1;s:4:"link";}s:7:"plugins";a:2:{i:0;s:6:"source";i:1;s:10:"fullscreen";}s:6:"height";s:3:"150";s:11:"line_breaks";b:0;s:16:"remove_new_lines";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 272,
'field_id' => 197,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 273,
'field_id' => 197,
'locale' => 'en',
'name' => 'Text 2',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 274,
'field_id' => 197,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 275,
'field_id' => 197,
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
'id' => 624,
'assignment_id' => 300,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 625,
'assignment_id' => 300,
'locale' => 'en',
'label' => '2nd Column',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 626,
'assignment_id' => 300,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 627,
'assignment_id' => 300,
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
'id' => 187,
'stream_id' => 76,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 188,
'stream_id' => 76,
'locale' => 'en',
'name' => 'Services',
'description' => '',
],
[
'id' => 189,
'stream_id' => 76,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 190,
'stream_id' => 76,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
