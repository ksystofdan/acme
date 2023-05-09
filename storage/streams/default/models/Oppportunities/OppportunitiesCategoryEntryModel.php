<?php namespace Anomaly\Streams\Platform\Model\Oppportunities;

use Anomaly\Streams\Platform\Entry\EntryModel;

class OppportunitiesCategoryEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'oppportunities_category';

    protected $titleName = 'title';

    protected $rules = [
        'title' => 'required|unique:oppportunities_category,title',
];

    protected $fields = [
        'title',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Oppportunities\OppportunitiesCategoryEntryTranslationsModel';

    protected $stream = [
'id' => '82',
'sort_order' => '',
'namespace' => 'oppportunities',
'slug' => 'category',
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
'id' => 335,
'sort_order' => 316,
'stream_id' => 82,
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
'id' => 761,
'assignment_id' => 335,
'locale' => 'ar',
'label' => 'Name',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 762,
'assignment_id' => 335,
'locale' => 'en',
'label' => 'Name',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 763,
'assignment_id' => 335,
'locale' => 'de',
'label' => 'Name',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 764,
'assignment_id' => 335,
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
'id' => 205,
'stream_id' => 82,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 206,
'stream_id' => 82,
'locale' => 'en',
'name' => 'Category',
'description' => '',
],
[
'id' => 207,
'stream_id' => 82,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 208,
'stream_id' => 82,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
