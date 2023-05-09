<?php namespace Anomaly\Streams\Platform\Model\Benefits;

use Anomaly\Streams\Platform\Entry\EntryModel;

class BenefitsBenefitsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'benefits_benefits';

    protected $titleName = 'title';

    protected $rules = [
        'title' => '',
        'icon' => '',
        'lotte_code' => '',
];

    protected $fields = [
        'title',
        'icon',
        'lotte_code',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['icon'];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Benefits\BenefitsBenefitsEntryTranslationsModel';

    protected $stream = [
'id' => '50',
'sort_order' => '',
'namespace' => 'benefits',
'slug' => 'benefits',
'prefix' => 'benefits_',
'title_column' => 'title',
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
'id' => 221,
'sort_order' => 219,
'stream_id' => 50,
'field_id' => 191,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '191',
'namespace' => 'benefits',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 248,
'field_id' => 191,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 249,
'field_id' => 191,
'locale' => 'en',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 250,
'field_id' => 191,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 251,
'field_id' => 191,
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
'id' => 308,
'assignment_id' => 221,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 309,
'assignment_id' => 221,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 310,
'assignment_id' => 221,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 311,
'assignment_id' => 221,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 222,
'sort_order' => 220,
'stream_id' => 50,
'field_id' => 192,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '192',
'namespace' => 'benefits',
'slug' => 'icon',
'type' => 'anomaly.field_type.file',
'config' => 'a:4:{s:7:"folders";a:1:{i:0;s:1:"4";}s:3:"max";N;s:4:"mode";s:7:"default";s:13:"allowed_types";a:4:{i:0;s:3:"svg";i:1;s:3:"png";i:2;s:3:"jpg";i:3;s:4:"jpeg";}}',
'locked' => '0',
'translations' => [
[
'id' => 252,
'field_id' => 192,
'locale' => 'ar',
'name' => 'Icon',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 253,
'field_id' => 192,
'locale' => 'en',
'name' => 'Icon',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 254,
'field_id' => 192,
'locale' => 'de',
'name' => 'Icon',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 255,
'field_id' => 192,
'locale' => 'es',
'name' => 'Icon',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 312,
'assignment_id' => 222,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 313,
'assignment_id' => 222,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 314,
'assignment_id' => 222,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 315,
'assignment_id' => 222,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 398,
'sort_order' => 359,
'stream_id' => 50,
'field_id' => 296,
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '296',
'namespace' => 'benefits',
'slug' => 'lotte_code',
'type' => 'anomaly.field_type.editor',
'config' => 'a:4:{s:4:"mode";s:4:"json";s:13:"default_value";N;s:6:"height";s:2:"75";s:9:"word_wrap";s:3:"yes";}',
'locked' => '0',
'translations' => [
[
'id' => 671,
'field_id' => 296,
'locale' => 'ar',
'name' => 'Lotte code',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 672,
'field_id' => 296,
'locale' => 'en',
'name' => 'Lotte code',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 673,
'field_id' => 296,
'locale' => 'de',
'name' => 'Lotte code',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 674,
'field_id' => 296,
'locale' => 'es',
'name' => 'Lotte code',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 1013,
'assignment_id' => 398,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1014,
'assignment_id' => 398,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '<b>Priority field.</b> This means if this field is not empty, then icon select is ignored.',
],
[
'id' => 1015,
'assignment_id' => 398,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1016,
'assignment_id' => 398,
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
'id' => 92,
'stream_id' => 50,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 93,
'stream_id' => 50,
'locale' => 'en',
'name' => 'Benefits',
'description' => '',
],
[
'id' => 94,
'stream_id' => 50,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 95,
'stream_id' => 50,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
    /**
     * The icon relation
     *
     * @return Relation
     */
    public function icon()
    {
        return $this->getFieldType('icon')->getRelation();
    }

}
