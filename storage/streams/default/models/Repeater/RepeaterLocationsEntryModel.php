<?php namespace Anomaly\Streams\Platform\Model\Repeater;

use Anomaly\Streams\Platform\Entry\EntryModel;

class RepeaterLocationsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'repeater_locations';

    protected $titleName = 'id';

    protected $rules = [
        'title' => '',
        'address' => '',
        'url' => '',
        'email_phone_list' => '',
];

    protected $fields = [
        'title',
        'address',
        'url',
        'email_phone_list',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['email_phone_list'];

    protected $translatedAttributes = ['title', 'address'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Repeater\RepeaterLocationsEntryTranslationsModel';

    protected $stream = [
'id' => '94',
'sort_order' => '',
'namespace' => 'repeater',
'slug' => 'locations',
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
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'assignments' => [
[
'id' => 373,
'sort_order' => 1,
'stream_id' => 94,
'field_id' => 181,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
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
'id' => 913,
'assignment_id' => 373,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 914,
'assignment_id' => 373,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 915,
'assignment_id' => 373,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 916,
'assignment_id' => 373,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 376,
'sort_order' => 2,
'stream_id' => 94,
'field_id' => 284,
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '284',
'namespace' => 'repeater',
'slug' => 'address',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:6:{s:7:"buttons";a:8:{i:0;s:6:"format";i:1;s:4:"bold";i:2;s:6:"italic";i:3;s:7:"deleted";i:4;s:5:"lists";i:5;s:4:"link";i:6;s:14:"horizontalrule";i:7;s:9:"underline";}s:7:"plugins";a:8:{i:0;s:9:"alignment";i:1;s:11:"inlinestyle";i:2;s:5:"table";i:3;s:5:"video";i:4;s:11:"filemanager";i:5;s:12:"imagemanager";i:6;s:6:"source";i:7;s:10:"fullscreen";}s:6:"height";s:2:"75";s:11:"line_breaks";b:0;s:16:"remove_new_lines";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 623,
'field_id' => 284,
'locale' => 'ar',
'name' => 'Address',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 624,
'field_id' => 284,
'locale' => 'en',
'name' => 'Address',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 625,
'field_id' => 284,
'locale' => 'de',
'name' => 'Address',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 626,
'field_id' => 284,
'locale' => 'es',
'name' => 'Address',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 925,
'assignment_id' => 376,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 926,
'assignment_id' => 376,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 927,
'assignment_id' => 376,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 928,
'assignment_id' => 376,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 382,
'sort_order' => 3,
'stream_id' => 94,
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
'id' => 949,
'assignment_id' => 382,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 950,
'assignment_id' => 382,
'locale' => 'en',
'label' => 'Address URL',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 951,
'assignment_id' => 382,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 952,
'assignment_id' => 382,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 377,
'sort_order' => 4,
'stream_id' => 94,
'field_id' => 287,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '287',
'namespace' => 'repeater',
'slug' => 'email_phone_list',
'type' => 'anomaly.field_type.repeater',
'config' => 'a:5:{s:7:"related";s:72:"Anomaly\Streams\Platform\Model\Repeater\RepeaterEmailPhoneListEntryModel";s:7:"add_row";N;s:3:"min";N;s:3:"max";N;s:14:"repeater_title";N;}',
'locked' => '0',
'translations' => [
[
'id' => 635,
'field_id' => 287,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 636,
'field_id' => 287,
'locale' => 'en',
'name' => 'Email/Phone List',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 637,
'field_id' => 287,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 638,
'field_id' => 287,
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
'id' => 929,
'assignment_id' => 377,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 930,
'assignment_id' => 377,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 931,
'assignment_id' => 377,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 932,
'assignment_id' => 377,
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
'id' => 253,
'stream_id' => 94,
'locale' => 'ar',
'name' => 'locations',
'description' => '',
],
[
'id' => 254,
'stream_id' => 94,
'locale' => 'en',
'name' => 'Locations',
'description' => '',
],
[
'id' => 255,
'stream_id' => 94,
'locale' => 'de',
'name' => 'locations',
'description' => '',
],
[
'id' => 256,
'stream_id' => 94,
'locale' => 'es',
'name' => 'locations',
'description' => '',
],
],
];

    
    /**
     * The email phone list relation
     *
     * @return Relation
     */
    public function emailPhoneList()
    {
        return $this->getFieldType('email_phone_list')->getRelation();
    }

}
