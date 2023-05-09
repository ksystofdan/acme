<?php namespace Anomaly\Streams\Platform\Model\Industries;

use Anomaly\Streams\Platform\Entry\EntryModel;

class IndustriesMarketApproachEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = false;

    protected $table = 'industries_market_approach';

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

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Industries\IndustriesMarketApproachEntryTranslationsModel';

    protected $stream = [
'id' => '36',
'sort_order' => '3',
'namespace' => 'industries',
'slug' => 'market_approach',
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
'id' => 192,
'sort_order' => 191,
'stream_id' => 36,
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
'id' => 192,
'assignment_id' => 192,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 193,
'assignment_id' => 192,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 194,
'assignment_id' => 192,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 195,
'assignment_id' => 192,
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
'id' => 39,
'stream_id' => 36,
'locale' => 'ar',
'name' => 'Market approach',
'description' => '',
],
[
'id' => 40,
'stream_id' => 36,
'locale' => 'en',
'name' => 'Market approach',
'description' => '',
],
[
'id' => 41,
'stream_id' => 36,
'locale' => 'de',
'name' => 'Market approach',
'description' => '',
],
[
'id' => 42,
'stream_id' => 36,
'locale' => 'es',
'name' => 'Market approach',
'description' => '',
],
],
];

    
}
