<?php namespace Anomaly\Streams\Platform\Model\Grid;

use Anomaly\Streams\Platform\Entry\EntryModel;

class GridDanger2EntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'grid_danger2';

    protected $titleName = 'id';

    protected $rules = [
        'title' => '',
        'textarea' => '',
];

    protected $fields = [
        'title',
        'textarea',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['title', 'textarea'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Grid\GridDanger2EntryTranslationsModel';

    protected $stream = [
'id' => '93',
'sort_order' => '',
'namespace' => 'grid',
'slug' => 'danger2',
'prefix' => 'grid_',
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
'id' => 360,
'sort_order' => 339,
'stream_id' => 93,
'field_id' => 212,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '212',
'namespace' => 'grid',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 335,
'field_id' => 212,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 336,
'field_id' => 212,
'locale' => 'en',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 337,
'field_id' => 212,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 338,
'field_id' => 212,
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
'id' => 861,
'assignment_id' => 360,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 862,
'assignment_id' => 360,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 863,
'assignment_id' => 360,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 864,
'assignment_id' => 360,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 361,
'sort_order' => 340,
'stream_id' => 93,
'field_id' => 211,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '211',
'namespace' => 'grid',
'slug' => 'textarea',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:6:{s:4:"rows";s:1:"6";s:3:"min";N;s:3:"max";N;s:12:"show_counter";b:0;s:8:"autogrow";b:1;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 331,
'field_id' => 211,
'locale' => 'ar',
'name' => 'Quote',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 332,
'field_id' => 211,
'locale' => 'en',
'name' => 'Textarea',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 333,
'field_id' => 211,
'locale' => 'de',
'name' => 'Quote',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 334,
'field_id' => 211,
'locale' => 'es',
'name' => 'Quote',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 865,
'assignment_id' => 361,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 866,
'assignment_id' => 361,
'locale' => 'en',
'label' => 'Text',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 867,
'assignment_id' => 361,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 868,
'assignment_id' => 361,
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
'id' => 249,
'stream_id' => 93,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 250,
'stream_id' => 93,
'locale' => 'en',
'name' => 'Danger',
'description' => '',
],
[
'id' => 251,
'stream_id' => 93,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 252,
'stream_id' => 93,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
