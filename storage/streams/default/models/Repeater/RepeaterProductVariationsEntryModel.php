<?php namespace Anomaly\Streams\Platform\Model\Repeater;

use Anomaly\Streams\Platform\Entry\EntryModel;

class RepeaterProductVariationsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'repeater_product_variations';

    protected $titleName = 'id';

    protected $rules = [
        'title' => '',
        'description' => '',
        'gallery' => '',
        'whitepapers' => '',
        'specifications' => '',
];

    protected $fields = [
        'title',
        'description',
        'gallery',
        'whitepapers',
        'specifications',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['gallery', 'whitepapers', 'specifications'];

    protected $translatedAttributes = ['title', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Repeater\RepeaterProductVariationsEntryTranslationsModel';

    protected $stream = [
'id' => '46',
'sort_order' => '',
'namespace' => 'repeater',
'slug' => 'product_variations',
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
'config' => 'a:1:{i:0;s:41:"a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}";}',
'assignments' => [
[
'id' => 207,
'sort_order' => 1,
'stream_id' => 46,
'field_id' => 181,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 1,
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
'id' => 252,
'assignment_id' => 207,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 253,
'assignment_id' => 207,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 254,
'assignment_id' => 207,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 255,
'assignment_id' => 207,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 210,
'sort_order' => 2,
'stream_id' => 46,
'field_id' => 184,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
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
'id' => 264,
'assignment_id' => 210,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 265,
'assignment_id' => 210,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 266,
'assignment_id' => 210,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 267,
'assignment_id' => 210,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 209,
'sort_order' => 3,
'stream_id' => 46,
'field_id' => 183,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '183',
'namespace' => 'repeater',
'slug' => 'gallery',
'type' => 'anomaly.field_type.files',
'config' => 'a:5:{s:7:"folders";a:1:{i:0;s:1:"3";}s:3:"min";N;s:3:"max";N;s:4:"mode";s:7:"default";s:13:"allowed_types";a:3:{i:0;s:3:"jpg";i:1;s:3:"png";i:2;s:4:"jpeg";}}',
'locked' => '0',
'translations' => [
[
'id' => 216,
'field_id' => 183,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 217,
'field_id' => 183,
'locale' => 'en',
'name' => 'Gallery',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 218,
'field_id' => 183,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 219,
'field_id' => 183,
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
'id' => 260,
'assignment_id' => 209,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 261,
'assignment_id' => 209,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 262,
'assignment_id' => 209,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 263,
'assignment_id' => 209,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 211,
'sort_order' => 4,
'stream_id' => 46,
'field_id' => 185,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '185',
'namespace' => 'repeater',
'slug' => 'whitepapers',
'type' => 'anomaly.field_type.files',
'config' => 'a:5:{s:7:"folders";a:1:{i:0;s:1:"2";}s:3:"min";N;s:3:"max";N;s:4:"mode";s:7:"default";s:13:"allowed_types";a:0:{}}',
'locked' => '0',
'translations' => [
[
'id' => 224,
'field_id' => 185,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 225,
'field_id' => 185,
'locale' => 'en',
'name' => 'Whitepapers',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 226,
'field_id' => 185,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 227,
'field_id' => 185,
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
'id' => 268,
'assignment_id' => 211,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 269,
'assignment_id' => 211,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 270,
'assignment_id' => 211,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 271,
'assignment_id' => 211,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 214,
'sort_order' => 212,
'stream_id' => 46,
'field_id' => 187,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '187',
'namespace' => 'repeater',
'slug' => 'specifications',
'type' => 'anomaly.field_type.repeater',
'config' => 'a:5:{s:7:"related";s:79:"Anomaly\Streams\Platform\Model\Repeater\RepeaterProductSpecificationsEntryModel";s:7:"add_row";s:21:"Add New Specification";s:3:"min";N;s:3:"max";N;s:14:"repeater_title";s:5:"title";}',
'locked' => '0',
'translations' => [
[
'id' => 232,
'field_id' => 187,
'locale' => 'ar',
'name' => 'Specifications',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 233,
'field_id' => 187,
'locale' => 'en',
'name' => 'Specifications',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 234,
'field_id' => 187,
'locale' => 'de',
'name' => 'Specifications',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 235,
'field_id' => 187,
'locale' => 'es',
'name' => 'Specifications',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 280,
'assignment_id' => 214,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 281,
'assignment_id' => 214,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 282,
'assignment_id' => 214,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 283,
'assignment_id' => 214,
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
'id' => 76,
'stream_id' => 46,
'locale' => 'ar',
'name' => 'Product variations',
'description' => '',
],
[
'id' => 77,
'stream_id' => 46,
'locale' => 'en',
'name' => 'Variation:',
'description' => '',
],
[
'id' => 78,
'stream_id' => 46,
'locale' => 'de',
'name' => 'Product variations',
'description' => '',
],
[
'id' => 79,
'stream_id' => 46,
'locale' => 'es',
'name' => 'Product variations',
'description' => '',
],
],
];

    
    /**
     * The gallery relation
     *
     * @return Relation
     */
    public function gallery()
    {
        return $this->getFieldType('gallery')->getRelation();
    }

    /**
     * The whitepapers relation
     *
     * @return Relation
     */
    public function whitepapers()
    {
        return $this->getFieldType('whitepapers')->getRelation();
    }

    /**
     * The specifications relation
     *
     * @return Relation
     */
    public function specifications()
    {
        return $this->getFieldType('specifications')->getRelation();
    }

}
