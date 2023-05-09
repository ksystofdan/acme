<?php namespace Anomaly\Streams\Platform\Model\Industries;

use Anomaly\Streams\Platform\Entry\EntryModel;

class IndustriesIndustriesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = false;

    protected $table = 'industries_industries';

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

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Industries\IndustriesIndustriesEntryTranslationsModel';

    protected $stream = [
'id' => '38',
'sort_order' => '2',
'namespace' => 'industries',
'slug' => 'industries',
'prefix' => 'industries_',
'title_column' => 'title',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '1',
'trashable' => '1',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'assignments' => [
[
'id' => 194,
'sort_order' => 192,
'stream_id' => 38,
'field_id' => 170,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 1,
'searchable' => 1,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '170',
'namespace' => 'industries',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 170,
'field_id' => 170,
'locale' => 'ar',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 171,
'field_id' => 170,
'locale' => 'en',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 172,
'field_id' => 170,
'locale' => 'de',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 173,
'field_id' => 170,
'locale' => 'es',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 200,
'assignment_id' => 194,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 201,
'assignment_id' => 194,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 202,
'assignment_id' => 194,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 203,
'assignment_id' => 194,
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
'id' => 47,
'stream_id' => 38,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 48,
'stream_id' => 38,
'locale' => 'en',
'name' => 'Industries',
'description' => '',
],
[
'id' => 49,
'stream_id' => 38,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 50,
'stream_id' => 38,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
