<?php namespace Anomaly\Streams\Platform\Model\Industries;

use Anomaly\Streams\Platform\Entry\EntryModel;

class IndustriesIndustriesCombinedEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = false;

    protected $table = 'industries_industries_combined';

    protected $titleName = 'title';

    protected $rules = [
        'title' => '',
        'market_approach' => '',
        'industry' => '',
        'main_image' => '',
        'flat_image' => '',
        'challenges' => '',
        'solutions' => '',
        'knowledges' => '',
];

    protected $fields = [
        'title',
        'market_approach',
        'industry',
        'main_image',
        'flat_image',
        'challenges',
        'solutions',
        'knowledges',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['market_approach', 'industry', 'main_image', 'flat_image', 'challenges', 'solutions', 'knowledges'];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Industries\IndustriesIndustriesCombinedEntryTranslationsModel';

    protected $stream = [
'id' => '39',
'sort_order' => '1',
'namespace' => 'industries',
'slug' => 'industries_combined',
'prefix' => 'industries_',
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
'id' => 195,
'sort_order' => 1,
'stream_id' => 39,
'field_id' => 170,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '170',
'namespace' => 'industries',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 170,
'field_id' => 170,
'locale' => 'ar',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 171,
'field_id' => 170,
'locale' => 'en',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 172,
'field_id' => 170,
'locale' => 'de',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 173,
'field_id' => 170,
'locale' => 'es',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 204,
'assignment_id' => 195,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 205,
'assignment_id' => 195,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 206,
'assignment_id' => 195,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 207,
'assignment_id' => 195,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 196,
'sort_order' => 2,
'stream_id' => 39,
'field_id' => 172,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '172',
'namespace' => 'industries',
'slug' => 'market_approach',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:3:{s:7:"related";s:76:"Anomaly\Streams\Platform\Model\Industries\IndustriesMarketApproachEntryModel";s:4:"mode";s:8:"dropdown";s:10:"title_name";N;}',
'locked' => '0',
'translations' => [
[
'id' => 178,
'field_id' => 172,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 179,
'field_id' => 172,
'locale' => 'en',
'name' => 'Market approach',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 180,
'field_id' => 172,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 181,
'field_id' => 172,
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
'id' => 208,
'assignment_id' => 196,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 209,
'assignment_id' => 196,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 210,
'assignment_id' => 196,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 211,
'assignment_id' => 196,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 197,
'sort_order' => 3,
'stream_id' => 39,
'field_id' => 171,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '171',
'namespace' => 'industries',
'slug' => 'industry',
'type' => 'anomaly.field_type.relationship',
'config' => 'a:3:{s:7:"related";s:72:"Anomaly\Streams\Platform\Model\Industries\IndustriesIndustriesEntryModel";s:4:"mode";s:8:"dropdown";s:10:"title_name";N;}',
'locked' => '0',
'translations' => [
[
'id' => 174,
'field_id' => 171,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 175,
'field_id' => 171,
'locale' => 'en',
'name' => 'Industry',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 176,
'field_id' => 171,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 177,
'field_id' => 171,
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
'id' => 212,
'assignment_id' => 197,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 213,
'assignment_id' => 197,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 214,
'assignment_id' => 197,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 215,
'assignment_id' => 197,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 262,
'sort_order' => 4,
'stream_id' => 39,
'field_id' => 220,
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '220',
'namespace' => 'industries',
'slug' => 'main_image',
'type' => 'anomaly.field_type.image',
'config' => 'a:3:{s:7:"folders";a:1:{i:0;s:1:"1";}s:12:"aspect_ratio";N;s:4:"mode";s:7:"default";}',
'locked' => '0',
'translations' => [
[
'id' => 367,
'field_id' => 220,
'locale' => 'ar',
'name' => 'Main image',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 368,
'field_id' => 220,
'locale' => 'en',
'name' => 'Main image',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 369,
'field_id' => 220,
'locale' => 'de',
'name' => 'Main image',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 370,
'field_id' => 220,
'locale' => 'es',
'name' => 'Main image',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 472,
'assignment_id' => 262,
'locale' => 'ar',
'label' => 'Image in front',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 473,
'assignment_id' => 262,
'locale' => 'en',
'label' => 'Header image',
'warning' => '',
'placeholder' => '',
'instructions' => 'This image shown in industries on top, and as hover 3d image',
],
[
'id' => 474,
'assignment_id' => 262,
'locale' => 'de',
'label' => 'Image in front',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 475,
'assignment_id' => 262,
'locale' => 'es',
'label' => 'Image in front',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 272,
'sort_order' => 5,
'stream_id' => 39,
'field_id' => 227,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '227',
'namespace' => 'industries',
'slug' => 'flat_image',
'type' => 'anomaly.field_type.image',
'config' => 'a:3:{s:7:"folders";a:1:{i:0;s:1:"1";}s:12:"aspect_ratio";N;s:4:"mode";s:7:"default";}',
'locked' => '0',
'translations' => [
[
'id' => 395,
'field_id' => 227,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 396,
'field_id' => 227,
'locale' => 'en',
'name' => 'Flat image',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 397,
'field_id' => 227,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 398,
'field_id' => 227,
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
'id' => 512,
'assignment_id' => 272,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 513,
'assignment_id' => 272,
'locale' => 'en',
'label' => 'Flat Image',
'warning' => '',
'placeholder' => '',
'instructions' => 'This image is shown in homepage -> Industries when not hovered',
],
[
'id' => 514,
'assignment_id' => 272,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 515,
'assignment_id' => 272,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 234,
'sort_order' => 6,
'stream_id' => 39,
'field_id' => 200,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '200',
'namespace' => 'industries',
'slug' => 'challenges',
'type' => 'anomaly.field_type.repeater',
'config' => 'a:5:{s:7:"related";s:68:"Anomaly\Streams\Platform\Model\Repeater\RepeaterChallengesEntryModel";s:7:"add_row";s:17:"Add Challenge row";s:3:"min";N;s:3:"max";N;s:14:"repeater_title";N;}',
'locked' => '0',
'translations' => [
[
'id' => 284,
'field_id' => 200,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 285,
'field_id' => 200,
'locale' => 'en',
'name' => 'Challenges',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 286,
'field_id' => 200,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 287,
'field_id' => 200,
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
'id' => 360,
'assignment_id' => 234,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 361,
'assignment_id' => 234,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 362,
'assignment_id' => 234,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 363,
'assignment_id' => 234,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 235,
'sort_order' => 7,
'stream_id' => 39,
'field_id' => 201,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '201',
'namespace' => 'industries',
'slug' => 'solutions',
'type' => 'anomaly.field_type.multiple',
'config' => 'a:5:{s:7:"related";s:67:"Anomaly\Streams\Platform\Model\Products\ProductsSolutionsEntryModel";s:4:"mode";s:6:"lookup";s:10:"title_name";s:5:"title";s:3:"min";N;s:3:"max";N;}',
'locked' => '0',
'translations' => [
[
'id' => 288,
'field_id' => 201,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 289,
'field_id' => 201,
'locale' => 'en',
'name' => 'Solutions',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 290,
'field_id' => 201,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 291,
'field_id' => 201,
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
'id' => 364,
'assignment_id' => 235,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 365,
'assignment_id' => 235,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 366,
'assignment_id' => 235,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 367,
'assignment_id' => 235,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 405,
'sort_order' => 365,
'stream_id' => 39,
'field_id' => 303,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '303',
'namespace' => 'industries',
'slug' => 'knowledges',
'type' => 'anomaly.field_type.multiple',
'config' => 'a:5:{s:7:"related";s:69:"Anomaly\Streams\Platform\Model\Knowledge\KnowledgeKnowledgeEntryModel";s:4:"mode";s:4:"tags";s:10:"title_name";s:5:"title";s:3:"min";N;s:3:"max";N;}',
'locked' => '0',
'translations' => [
[
'id' => 699,
'field_id' => 303,
'locale' => 'ar',
'name' => 'Knowledges',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 700,
'field_id' => 303,
'locale' => 'en',
'name' => 'Knowledges',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 701,
'field_id' => 303,
'locale' => 'de',
'name' => 'Knowledges',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 702,
'field_id' => 303,
'locale' => 'es',
'name' => 'Knowledges',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 1041,
'assignment_id' => 405,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1042,
'assignment_id' => 405,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1043,
'assignment_id' => 405,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1044,
'assignment_id' => 405,
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
'id' => 51,
'stream_id' => 39,
'locale' => 'ar',
'name' => 'Industries combined',
'description' => '',
],
[
'id' => 52,
'stream_id' => 39,
'locale' => 'en',
'name' => 'Industries combined',
'description' => '',
],
[
'id' => 53,
'stream_id' => 39,
'locale' => 'de',
'name' => 'Industries combined',
'description' => '',
],
[
'id' => 54,
'stream_id' => 39,
'locale' => 'es',
'name' => 'Industries combined',
'description' => '',
],
],
];

    
    /**
     * The market approach relation
     *
     * @return Relation
     */
    public function marketApproach()
    {
        return $this->getFieldType('market_approach')->getRelation();
    }

    /**
     * The industry relation
     *
     * @return Relation
     */
    public function industry()
    {
        return $this->getFieldType('industry')->getRelation();
    }

    /**
     * The main image relation
     *
     * @return Relation
     */
    public function mainImage()
    {
        return $this->getFieldType('main_image')->getRelation();
    }

    /**
     * The flat image relation
     *
     * @return Relation
     */
    public function flatImage()
    {
        return $this->getFieldType('flat_image')->getRelation();
    }

    /**
     * The challenges relation
     *
     * @return Relation
     */
    public function challenges()
    {
        return $this->getFieldType('challenges')->getRelation();
    }

    /**
     * The solutions relation
     *
     * @return Relation
     */
    public function solutions()
    {
        return $this->getFieldType('solutions')->getRelation();
    }

    /**
     * The knowledges relation
     *
     * @return Relation
     */
    public function knowledges()
    {
        return $this->getFieldType('knowledges')->getRelation();
    }

}
