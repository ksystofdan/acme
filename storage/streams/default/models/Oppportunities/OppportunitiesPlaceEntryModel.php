<?php namespace Anomaly\Streams\Platform\Model\Oppportunities;

use Anomaly\Streams\Platform\Entry\EntryModel;

class OppportunitiesPlaceEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'oppportunities_place';

    protected $titleName = 'title';

    protected $rules = [
        'title' => 'required|unique:oppportunities_place,title',
];

    protected $fields = [
        'title',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Oppportunities\OppportunitiesPlaceEntryTranslationsModel';

    protected $stream = [
'id' => '83',
'sort_order' => '',
'namespace' => 'oppportunities',
'slug' => 'place',
'prefix' => 'oppportunities_',
'title_column' => 'title',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '0',
'trashable' => '1',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'assignments' => [
[
'id' => 336,
'sort_order' => 317,
'stream_id' => 83,
'field_id' => 258,
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'unique' => 1,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '258',
'namespace' => 'oppportunities',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 519,
'field_id' => 258,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 520,
'field_id' => 258,
'locale' => 'en',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 521,
'field_id' => 258,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 522,
'field_id' => 258,
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
'id' => 765,
'assignment_id' => 336,
'locale' => 'ar',
'label' => 'Name',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 766,
'assignment_id' => 336,
'locale' => 'en',
'label' => 'Name',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 767,
'assignment_id' => 336,
'locale' => 'de',
'label' => 'Name',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 768,
'assignment_id' => 336,
'locale' => 'es',
'label' => 'Name',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
],
'translations' => [
[
'id' => 209,
'stream_id' => 83,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 210,
'stream_id' => 83,
'locale' => 'en',
'name' => 'Place',
'description' => '',
],
[
'id' => 211,
'stream_id' => 83,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 212,
'stream_id' => 83,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
