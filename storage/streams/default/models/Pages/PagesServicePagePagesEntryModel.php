<?php namespace Anomaly\Streams\Platform\Model\Pages;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PagesServicePagePagesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'pages_service_page_pages';

    protected $titleName = 'id';

    protected $rules = [
        'header_image' => '',
        'additional_text' => '',
        'team_count' => '',
        'countries_count' => '',
        'services_list' => '',
];

    protected $fields = [
        'header_image',
        'additional_text',
        'team_count',
        'countries_count',
        'services_list',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['header_image', 'services_list'];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Pages\PagesServicePagePagesEntryTranslationsModel';

    protected $stream = [
'id' => '75',
'sort_order' => '',
'namespace' => 'pages',
'slug' => 'service_page_pages',
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
'id' => 307,
'sort_order' => 1,
'stream_id' => 75,
'field_id' => 225,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '225',
'namespace' => 'pages',
'slug' => 'header_image',
'type' => 'anomaly.field_type.image',
'config' => 'a:3:{s:7:"folders";a:1:{i:0;s:1:"1";}s:12:"aspect_ratio";N;s:4:"mode";s:7:"default";}',
'locked' => '0',
'translations' => [
[
'id' => 387,
'field_id' => 225,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 388,
'field_id' => 225,
'locale' => 'en',
'name' => 'Header image',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 389,
'field_id' => 225,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 390,
'field_id' => 225,
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
'id' => 652,
'assignment_id' => 307,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 653,
'assignment_id' => 307,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 654,
'assignment_id' => 307,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 655,
'assignment_id' => 307,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 304,
'sort_order' => 2,
'stream_id' => 75,
'field_id' => 241,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
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
'id' => 640,
'assignment_id' => 304,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 641,
'assignment_id' => 304,
'locale' => 'en',
'label' => 'Text below image',
'warning' => '',
'placeholder' => '',
'instructions' => 'This text is shown below header image',
],
[
'id' => 642,
'assignment_id' => 304,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 643,
'assignment_id' => 304,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 306,
'sort_order' => 3,
'stream_id' => 75,
'field_id' => 242,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '242',
'namespace' => 'pages',
'slug' => 'team_count',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 455,
'field_id' => 242,
'locale' => 'ar',
'name' => 'Team count',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 456,
'field_id' => 242,
'locale' => 'en',
'name' => 'Team count',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 457,
'field_id' => 242,
'locale' => 'de',
'name' => 'Team count',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 458,
'field_id' => 242,
'locale' => 'es',
'name' => 'Team count',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 648,
'assignment_id' => 306,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 649,
'assignment_id' => 306,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 650,
'assignment_id' => 306,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 651,
'assignment_id' => 306,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 305,
'sort_order' => 4,
'stream_id' => 75,
'field_id' => 243,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '243',
'namespace' => 'pages',
'slug' => 'countries_count',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 459,
'field_id' => 243,
'locale' => 'ar',
'name' => 'Countries count',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 460,
'field_id' => 243,
'locale' => 'en',
'name' => 'Countries count',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 461,
'field_id' => 243,
'locale' => 'de',
'name' => 'Countries count',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 462,
'field_id' => 243,
'locale' => 'es',
'name' => 'Countries count',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 644,
'assignment_id' => 305,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 645,
'assignment_id' => 305,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 646,
'assignment_id' => 305,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 647,
'assignment_id' => 305,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 301,
'sort_order' => 5,
'stream_id' => 75,
'field_id' => 240,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '240',
'namespace' => 'pages',
'slug' => 'services_list',
'type' => 'anomaly.field_type.repeater',
'config' => 'a:5:{s:7:"related";s:66:"Anomaly\Streams\Platform\Model\Repeater\RepeaterServicesEntryModel";s:7:"add_row";s:7:"Add row";s:3:"min";N;s:3:"max";N;s:14:"repeater_title";N;}',
'locked' => '0',
'translations' => [
[
'id' => 447,
'field_id' => 240,
'locale' => 'ar',
'name' => 'Services list',
'placeholder' => '',
'warning' => '',
'instructions' => 'Expandable list',
],
[
'id' => 448,
'field_id' => 240,
'locale' => 'en',
'name' => 'Services list',
'placeholder' => '',
'warning' => '',
'instructions' => 'Expandable list',
],
[
'id' => 449,
'field_id' => 240,
'locale' => 'de',
'name' => 'Services list',
'placeholder' => '',
'warning' => '',
'instructions' => 'Expandable list',
],
[
'id' => 450,
'field_id' => 240,
'locale' => 'es',
'name' => 'Services list',
'placeholder' => '',
'warning' => '',
'instructions' => 'Expandable list',
],
],
],
'translations' => [
[
'id' => 628,
'assignment_id' => 301,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 629,
'assignment_id' => 301,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 630,
'assignment_id' => 301,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 631,
'assignment_id' => 301,
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
'id' => 186,
'stream_id' => 75,
'locale' => 'en',
'name' => 'Service page',
'description' => 'Services page template',
],
],
];

    
    /**
     * The header image relation
     *
     * @return Relation
     */
    public function headerImage()
    {
        return $this->getFieldType('header_image')->getRelation();
    }

    /**
     * The services list relation
     *
     * @return Relation
     */
    public function servicesList()
    {
        return $this->getFieldType('services_list')->getRelation();
    }

}
