<?php namespace Anomaly\Streams\Platform\Model\Pages;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PagesContactPagesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'pages_contact_pages';

    protected $titleName = 'id';

    protected $rules = [
        'additional_text' => '',
        'benefits_title' => '',
        'locations_list' => '',
];

    protected $fields = [
        'additional_text',
        'benefits_title',
        'locations_list',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['locations_list'];

    protected $translatedAttributes = ['additional_text', 'benefits_title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Pages\PagesContactPagesEntryTranslationsModel';

    protected $stream = [
'id' => '78',
'sort_order' => '',
'namespace' => 'pages',
'slug' => 'contact_pages',
'prefix' => 'pages_',
'title_column' => 'id',
'order_by' => 'id',
'locked' => '0',
'hidden' => '1',
'sortable' => '0',
'searchable' => '0',
'trashable' => '1',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 383,
'sort_order' => 1,
'stream_id' => 78,
'field_id' => 241,
'config' => 'a:1:{i:0;s:41:"a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '241',
'namespace' => 'pages',
'slug' => 'additional_text',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 451,
'field_id' => 241,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 452,
'field_id' => 241,
'locale' => 'en',
'name' => 'Additional Text',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 453,
'field_id' => 241,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 454,
'field_id' => 241,
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
'id' => 953,
'assignment_id' => 383,
'locale' => 'ar',
'label' => 'Contact text',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 954,
'assignment_id' => 383,
'locale' => 'en',
'label' => 'Contact text',
'warning' => '',
'placeholder' => '',
'instructions' => 'Text next to contact form',
],
[
'id' => 955,
'assignment_id' => 383,
'locale' => 'de',
'label' => 'Contact text',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 956,
'assignment_id' => 383,
'locale' => 'es',
'label' => 'Contact text',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 387,
'sort_order' => 2,
'stream_id' => 78,
'field_id' => 202,
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '202',
'namespace' => 'pages',
'slug' => 'benefits_title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 292,
'field_id' => 202,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 293,
'field_id' => 202,
'locale' => 'en',
'name' => 'Benefits title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 294,
'field_id' => 202,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 295,
'field_id' => 202,
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
'id' => 969,
'assignment_id' => 387,
'locale' => 'ar',
'label' => 'Locations title',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 970,
'assignment_id' => 387,
'locale' => 'en',
'label' => 'Locations title',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 971,
'assignment_id' => 387,
'locale' => 'de',
'label' => 'Locations title',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 972,
'assignment_id' => 387,
'locale' => 'es',
'label' => 'Locations title',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 386,
'sort_order' => 3,
'stream_id' => 78,
'field_id' => 288,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '288',
'namespace' => 'pages',
'slug' => 'locations_list',
'type' => 'anomaly.field_type.repeater',
'config' => 'a:5:{s:7:"related";s:67:"Anomaly\Streams\Platform\Model\Repeater\RepeaterLocationsEntryModel";s:7:"add_row";N;s:3:"min";N;s:3:"max";N;s:14:"repeater_title";N;}',
'locked' => '0',
'translations' => [
[
'id' => 639,
'field_id' => 288,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 640,
'field_id' => 288,
'locale' => 'en',
'name' => 'Locations List',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 641,
'field_id' => 288,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 642,
'field_id' => 288,
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
'id' => 965,
'assignment_id' => 386,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 966,
'assignment_id' => 386,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 967,
'assignment_id' => 386,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 968,
'assignment_id' => 386,
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
'id' => 192,
'stream_id' => 78,
'locale' => 'en',
'name' => 'Contact',
'description' => 'Contact page template',
],
],
];

    
    /**
     * The locations list relation
     *
     * @return Relation
     */
    public function locationsList()
    {
        return $this->getFieldType('locations_list')->getRelation();
    }

}
