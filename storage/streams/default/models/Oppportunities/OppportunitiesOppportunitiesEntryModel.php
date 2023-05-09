<?php namespace Anomaly\Streams\Platform\Model\Oppportunities;

use Anomaly\Streams\Platform\Entry\EntryModel;

class OppportunitiesOppportunitiesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = false;

    protected $table = 'oppportunities_oppportunities';

    protected $titleName = 'title';

    protected $rules = [
        'title' => 'required',
        'category' => '',
        'place' => '',
        'url_link' => '',
];

    protected $fields = [
        'title',
        'category',
        'place',
        'url_link',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['category', 'place'];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Oppportunities\OppportunitiesOppportunitiesEntryTranslationsModel';

    protected $stream = [
'id' => '81',
'sort_order' => '',
'namespace' => 'oppportunities',
'slug' => 'oppportunities',
'prefix' => 'oppportunities_',
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
'id' => 333,
'sort_order' => 1,
'stream_id' => 81,
'field_id' => 258,
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'unique' => 0,
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
'id' => 753,
'assignment_id' => 333,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 754,
'assignment_id' => 333,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 755,
'assignment_id' => 333,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 756,
'assignment_id' => 333,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 337,
'sort_order' => 2,
'stream_id' => 81,
'field_id' => 260,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '260',
'namespace' => 'oppportunities',
'slug' => 'category',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:3:{s:7:"related";s:78:"Anomaly\Streams\Platform\Model\Oppportunities\OppportunitiesCategoryEntryModel";s:4:"mode";s:6:"lookup";s:10:"title_name";s:5:"title";}',
'locked' => '0',
'translations' => [
[
'id' => 527,
'field_id' => 260,
'locale' => 'ar',
'name' => 'Category',
'placeholder' => 'Select category',
'warning' => '',
'instructions' => '',
],
[
'id' => 528,
'field_id' => 260,
'locale' => 'en',
'name' => 'Category',
'placeholder' => 'Select category',
'warning' => '',
'instructions' => '',
],
[
'id' => 529,
'field_id' => 260,
'locale' => 'de',
'name' => 'Category',
'placeholder' => 'Select category',
'warning' => '',
'instructions' => '',
],
[
'id' => 530,
'field_id' => 260,
'locale' => 'es',
'name' => 'Category',
'placeholder' => 'Select category',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 769,
'assignment_id' => 337,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 770,
'assignment_id' => 337,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 771,
'assignment_id' => 337,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 772,
'assignment_id' => 337,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 338,
'sort_order' => 3,
'stream_id' => 81,
'field_id' => 261,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '261',
'namespace' => 'oppportunities',
'slug' => 'place',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:3:{s:7:"related";s:75:"Anomaly\Streams\Platform\Model\Oppportunities\OppportunitiesPlaceEntryModel";s:4:"mode";s:6:"lookup";s:10:"title_name";s:5:"title";}',
'locked' => '0',
'translations' => [
[
'id' => 531,
'field_id' => 261,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 532,
'field_id' => 261,
'locale' => 'en',
'name' => 'Place',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 533,
'field_id' => 261,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 534,
'field_id' => 261,
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
'id' => 773,
'assignment_id' => 338,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 774,
'assignment_id' => 338,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 775,
'assignment_id' => 338,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 776,
'assignment_id' => 338,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 334,
'sort_order' => 4,
'stream_id' => 81,
'field_id' => 259,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '259',
'namespace' => 'oppportunities',
'slug' => 'url_link',
'type' => 'anomaly.field_type.url',
'config' => 'a:1:{s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 523,
'field_id' => 259,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 524,
'field_id' => 259,
'locale' => 'en',
'name' => 'URL Link',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 525,
'field_id' => 259,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 526,
'field_id' => 259,
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
'id' => 757,
'assignment_id' => 334,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 758,
'assignment_id' => 334,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 759,
'assignment_id' => 334,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 760,
'assignment_id' => 334,
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
'id' => 201,
'stream_id' => 81,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 202,
'stream_id' => 81,
'locale' => 'en',
'name' => 'Oppportunities',
'description' => '',
],
[
'id' => 203,
'stream_id' => 81,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 204,
'stream_id' => 81,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
    /**
     * The category relation
     *
     * @return Relation
     */
    public function category()
    {
        return $this->getFieldType('category')->getRelation();
    }

    /**
     * The place relation
     *
     * @return Relation
     */
    public function place()
    {
        return $this->getFieldType('place')->getRelation();
    }

}
