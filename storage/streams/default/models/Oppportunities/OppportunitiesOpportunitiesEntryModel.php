<?php namespace Anomaly\Streams\Platform\Model\Oppportunities;

use Anomaly\Streams\Platform\Entry\EntryModel;

class OppportunitiesOpportunitiesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = false;

    protected $table = 'oppportunities_opportunities';

    protected $titleName = 'title';

    protected $rules = [
        'title' => 'required',
        'category' => '',
        'place' => '',
        'description' => '',
        'block' => '',
];

    protected $fields = [
        'title',
        'category',
        'place',
        'description',
        'block',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['category', 'place', 'block'];

    protected $translatedAttributes = ['title', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Oppportunities\OppportunitiesOpportunitiesEntryTranslationsModel';

    protected $stream = [
'id' => '81',
'sort_order' => '',
'namespace' => 'oppportunities',
'slug' => 'opportunities',
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
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
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
'id' => 395,
'sort_order' => 356,
'stream_id' => 81,
'field_id' => 293,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '293',
'namespace' => 'oppportunities',
'slug' => 'description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:6:{s:4:"rows";s:1:"6";s:3:"min";N;s:3:"max";N;s:12:"show_counter";b:0;s:8:"autogrow";b:1;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 659,
'field_id' => 293,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 660,
'field_id' => 293,
'locale' => 'en',
'name' => 'Description',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 661,
'field_id' => 293,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 662,
'field_id' => 293,
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
'id' => 1001,
'assignment_id' => 395,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1002,
'assignment_id' => 395,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1003,
'assignment_id' => 395,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1004,
'assignment_id' => 395,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 396,
'sort_order' => 357,
'stream_id' => 81,
'field_id' => 294,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '294',
'namespace' => 'oppportunities',
'slug' => 'block',
'type' => 'anomaly.field_type.grid',
'config' => 'a:4:{s:7:"related";a:1:{i:0;s:54:"Anomaly\Streams\Platform\Model\Grid\GridTextEntryModel";}s:7:"add_row";s:9:"Add Block";s:3:"min";N;s:3:"max";N;}',
'locked' => '0',
'translations' => [
[
'id' => 663,
'field_id' => 294,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 664,
'field_id' => 294,
'locale' => 'en',
'name' => 'Block',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 665,
'field_id' => 294,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 666,
'field_id' => 294,
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
'id' => 1005,
'assignment_id' => 396,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1006,
'assignment_id' => 396,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1007,
'assignment_id' => 396,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1008,
'assignment_id' => 396,
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
'name' => 'Oppportunities',
'description' => '',
],
[
'id' => 202,
'stream_id' => 81,
'locale' => 'en',
'name' => 'Opportunities',
'description' => '',
],
[
'id' => 203,
'stream_id' => 81,
'locale' => 'de',
'name' => 'Oppportunities',
'description' => '',
],
[
'id' => 204,
'stream_id' => 81,
'locale' => 'es',
'name' => 'Oppportunities',
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

    /**
     * The block relation
     *
     * @return Relation
     */
    public function block()
    {
        return $this->getFieldType('block')->getRelation();
    }

}
