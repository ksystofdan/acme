<?php namespace Anomaly\Streams\Platform\Model\Repeater;

use Anomaly\Streams\Platform\Entry\EntryModel;

class RepeaterHomePageBottomBlocksEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'repeater_home_page_bottom_blocks';

    protected $titleName = 'id';

    protected $rules = [
        'title' => '',
        'url' => '',
        'image' => '',
];

    protected $fields = [
        'title',
        'url',
        'image',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['image'];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Repeater\RepeaterHomePageBottomBlocksEntryTranslationsModel';

    protected $stream = [
'id' => '66',
'sort_order' => '',
'namespace' => 'repeater',
'slug' => 'home_page_bottom_blocks',
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
'id' => 276,
'sort_order' => 1,
'stream_id' => 66,
'field_id' => 181,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
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
'id' => 528,
'assignment_id' => 276,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 529,
'assignment_id' => 276,
'locale' => 'en',
'label' => 'Name',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 530,
'assignment_id' => 276,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 531,
'assignment_id' => 276,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 279,
'sort_order' => 2,
'stream_id' => 66,
'field_id' => 233,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '233',
'namespace' => 'repeater',
'slug' => 'url',
'type' => 'anomaly.field_type.url',
'config' => 'a:1:{s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 419,
'field_id' => 233,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 420,
'field_id' => 233,
'locale' => 'en',
'name' => 'Url',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 421,
'field_id' => 233,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 422,
'field_id' => 233,
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
'id' => 540,
'assignment_id' => 279,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 541,
'assignment_id' => 279,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 542,
'assignment_id' => 279,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 543,
'assignment_id' => 279,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 277,
'sort_order' => 3,
'stream_id' => 66,
'field_id' => 230,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '230',
'namespace' => 'repeater',
'slug' => 'image',
'type' => 'anomaly.field_type.image',
'config' => 'a:3:{s:7:"folders";a:1:{i:0;s:1:"1";}s:12:"aspect_ratio";N;s:4:"mode";s:7:"default";}',
'locked' => '0',
'translations' => [
[
'id' => 407,
'field_id' => 230,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 408,
'field_id' => 230,
'locale' => 'en',
'name' => 'Image',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 409,
'field_id' => 230,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 410,
'field_id' => 230,
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
'id' => 532,
'assignment_id' => 277,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 533,
'assignment_id' => 277,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 534,
'assignment_id' => 277,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 535,
'assignment_id' => 277,
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
'id' => 150,
'stream_id' => 66,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 151,
'stream_id' => 66,
'locale' => 'en',
'name' => 'Home page bottom blocks',
'description' => '',
],
[
'id' => 152,
'stream_id' => 66,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 153,
'stream_id' => 66,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
    /**
     * The image relation
     *
     * @return Relation
     */
    public function image()
    {
        return $this->getFieldType('image')->getRelation();
    }

}
