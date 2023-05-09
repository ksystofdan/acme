<?php namespace Anomaly\Streams\Platform\Model\Repeater;

use Anomaly\Streams\Platform\Entry\EntryModel;

class RepeaterPartnersEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'repeater_partners';

    protected $titleName = 'id';

    protected $rules = [
        'image' => '',
        'description' => '',
        'url' => '',
];

    protected $fields = [
        'image',
        'description',
        'url',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['image'];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Repeater\RepeaterPartnersEntryTranslationsModel';

    protected $stream = [
'id' => '80',
'sort_order' => '',
'namespace' => 'repeater',
'slug' => 'partners',
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
'id' => 330,
'sort_order' => 1,
'stream_id' => 80,
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
'id' => 741,
'assignment_id' => 330,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 742,
'assignment_id' => 330,
'locale' => 'en',
'label' => 'Logo',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 743,
'assignment_id' => 330,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 744,
'assignment_id' => 330,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 329,
'sort_order' => 2,
'stream_id' => 80,
'field_id' => 184,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '184',
'namespace' => 'repeater',
'slug' => 'description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:6:{s:4:"rows";s:1:"6";s:3:"min";N;s:3:"max";N;s:12:"show_counter";b:0;s:8:"autogrow";b:1;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 220,
'field_id' => 184,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 221,
'field_id' => 184,
'locale' => 'en',
'name' => 'Description',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 222,
'field_id' => 184,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 223,
'field_id' => 184,
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
'id' => 737,
'assignment_id' => 329,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 738,
'assignment_id' => 329,
'locale' => 'en',
'label' => 'Partner Description',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 739,
'assignment_id' => 329,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 740,
'assignment_id' => 329,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 328,
'sort_order' => 3,
'stream_id' => 80,
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
'id' => 733,
'assignment_id' => 328,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 734,
'assignment_id' => 328,
'locale' => 'en',
'label' => 'Website url',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 735,
'assignment_id' => 328,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 736,
'assignment_id' => 328,
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
'id' => 197,
'stream_id' => 80,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 198,
'stream_id' => 80,
'locale' => 'en',
'name' => 'Partners',
'description' => '',
],
[
'id' => 199,
'stream_id' => 80,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 200,
'stream_id' => 80,
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
