<?php namespace Anomaly\Streams\Platform\Model\Products;

use Anomaly\Streams\Platform\Entry\EntryModel;

class ProductsSolutionsEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = false;

    protected $table = 'products_solutions';

    protected $titleName = 'title';

    protected $rules = [
        'title' => '',
        'slug' => '',
        'description' => '',
        'needs' => '',
        'image_2' => '',
        'solution_image_hover' => '',
        'image' => '',
        'challenges' => '',
        'benefits' => '',
        'knowledges' => '',
];

    protected $fields = [
        'title',
        'slug',
        'description',
        'needs',
        'image_2',
        'solution_image_hover',
        'image',
        'challenges',
        'benefits',
        'knowledges',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['needs', 'image_2', 'solution_image_hover', 'image', 'challenges', 'benefits', 'knowledges'];

    protected $translatedAttributes = ['title', 'slug', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Products\ProductsSolutionsEntryTranslationsModel';

    protected $stream = [
'id' => '48',
'sort_order' => '2',
'namespace' => 'products',
'slug' => 'solutions',
'prefix' => 'products_',
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
'id' => 216,
'sort_order' => 1,
'stream_id' => 48,
'field_id' => 174,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 1,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '174',
'namespace' => 'products',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 186,
'field_id' => 174,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 187,
'field_id' => 174,
'locale' => 'en',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 188,
'field_id' => 174,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 189,
'field_id' => 174,
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
'id' => 288,
'assignment_id' => 216,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 289,
'assignment_id' => 216,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 290,
'assignment_id' => 216,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 291,
'assignment_id' => 216,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 217,
'sort_order' => 2,
'stream_id' => 48,
'field_id' => 188,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 1,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '188',
'namespace' => 'products',
'slug' => 'slug',
'type' => 'anomaly.field_type.slug',
'config' => 'a:5:{s:4:"type";s:1:"-";s:7:"slugify";s:5:"title";s:9:"lowercase";b:1;s:3:"min";N;s:3:"max";N;}',
'locked' => '0',
'translations' => [
[
'id' => 236,
'field_id' => 188,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 237,
'field_id' => 188,
'locale' => 'en',
'name' => 'Slug',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 238,
'field_id' => 188,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 239,
'field_id' => 188,
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
'id' => 292,
'assignment_id' => 217,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 293,
'assignment_id' => 217,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 294,
'assignment_id' => 217,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 295,
'assignment_id' => 217,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 233,
'sort_order' => 3,
'stream_id' => 48,
'field_id' => 180,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '180',
'namespace' => 'products',
'slug' => 'description',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:6:{s:7:"buttons";a:2:{i:0;s:4:"bold";i:1;s:4:"link";}s:7:"plugins";a:2:{i:0;s:6:"source";i:1;s:10:"fullscreen";}s:6:"height";s:3:"150";s:11:"line_breaks";b:0;s:16:"remove_new_lines";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 204,
'field_id' => 180,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 205,
'field_id' => 180,
'locale' => 'en',
'name' => 'Description',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 206,
'field_id' => 180,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 207,
'field_id' => 180,
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
'id' => 356,
'assignment_id' => 233,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 357,
'assignment_id' => 233,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 358,
'assignment_id' => 233,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 359,
'assignment_id' => 233,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 274,
'sort_order' => 4,
'stream_id' => 48,
'field_id' => 228,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '228',
'namespace' => 'products',
'slug' => 'needs',
'type' => 'anomaly.field_type.multiple',
'config' => 'a:5:{s:7:"related";s:67:"Anomaly\Streams\Platform\Model\Products\ProductsNeedsListEntryModel";s:4:"mode";s:6:"lookup";s:10:"title_name";s:5:"title";s:3:"min";N;s:3:"max";N;}',
'locked' => '0',
'translations' => [
[
'id' => 399,
'field_id' => 228,
'locale' => 'ar',
'name' => 'Needs',
'placeholder' => '',
'warning' => '',
'instructions' => 'All need to this solution',
],
[
'id' => 400,
'field_id' => 228,
'locale' => 'en',
'name' => 'Needs',
'placeholder' => '',
'warning' => '',
'instructions' => 'All need to this solution',
],
[
'id' => 401,
'field_id' => 228,
'locale' => 'de',
'name' => 'Needs',
'placeholder' => '',
'warning' => '',
'instructions' => 'All need to this solution',
],
[
'id' => 402,
'field_id' => 228,
'locale' => 'es',
'name' => 'Needs',
'placeholder' => '',
'warning' => '',
'instructions' => 'All need to this solution',
],
],
],
'translations' => [
[
'id' => 520,
'assignment_id' => 274,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 521,
'assignment_id' => 274,
'locale' => 'en',
'label' => 'Related Needs',
'warning' => '',
'placeholder' => '',
'instructions' => 'All Need for this solution',
],
[
'id' => 522,
'assignment_id' => 274,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 523,
'assignment_id' => 274,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 232,
'sort_order' => 5,
'stream_id' => 48,
'field_id' => 199,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '199',
'namespace' => 'products',
'slug' => 'image_2',
'type' => 'anomaly.field_type.image',
'config' => 'a:3:{s:7:"folders";a:1:{i:0;s:1:"1";}s:12:"aspect_ratio";N;s:4:"mode";s:7:"default";}',
'locked' => '0',
'translations' => [
[
'id' => 280,
'field_id' => 199,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 281,
'field_id' => 199,
'locale' => 'en',
'name' => 'Image 2',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 282,
'field_id' => 199,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 283,
'field_id' => 199,
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
'id' => 352,
'assignment_id' => 232,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 353,
'assignment_id' => 232,
'locale' => 'en',
'label' => 'Solution image',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 354,
'assignment_id' => 232,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 355,
'assignment_id' => 232,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 263,
'sort_order' => 6,
'stream_id' => 48,
'field_id' => 221,
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '221',
'namespace' => 'products',
'slug' => 'solution_image_hover',
'type' => 'anomaly.field_type.image',
'config' => 'a:3:{s:7:"folders";a:1:{i:0;s:1:"1";}s:12:"aspect_ratio";N;s:4:"mode";s:7:"default";}',
'locked' => '0',
'translations' => [
[
'id' => 371,
'field_id' => 221,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 372,
'field_id' => 221,
'locale' => 'en',
'name' => 'Solution image (hover)',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 373,
'field_id' => 221,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 374,
'field_id' => 221,
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
'id' => 476,
'assignment_id' => 263,
'locale' => 'ar',
'label' => 'Solution image on Hover',
'warning' => '',
'placeholder' => '',
'instructions' => 'Second image on hover',
],
[
'id' => 477,
'assignment_id' => 263,
'locale' => 'en',
'label' => 'Solution image 3D',
'warning' => '',
'placeholder' => '',
'instructions' => 'Second image on hover',
],
[
'id' => 478,
'assignment_id' => 263,
'locale' => 'de',
'label' => 'Solution image on Hover',
'warning' => '',
'placeholder' => '',
'instructions' => 'Second image on hover',
],
[
'id' => 479,
'assignment_id' => 263,
'locale' => 'es',
'label' => 'Solution image on Hover',
'warning' => '',
'placeholder' => '',
'instructions' => 'Second image on hover',
],
],
],
[
'id' => 227,
'sort_order' => 7,
'stream_id' => 48,
'field_id' => 195,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '195',
'namespace' => 'products',
'slug' => 'image',
'type' => 'anomaly.field_type.image',
'config' => 'a:3:{s:7:"folders";a:1:{i:0;s:1:"1";}s:12:"aspect_ratio";N;s:4:"mode";s:7:"default";}',
'locked' => '0',
'translations' => [
[
'id' => 264,
'field_id' => 195,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 265,
'field_id' => 195,
'locale' => 'en',
'name' => 'Image',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 266,
'field_id' => 195,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 267,
'field_id' => 195,
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
'id' => 332,
'assignment_id' => 227,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 333,
'assignment_id' => 227,
'locale' => 'en',
'label' => 'Header image',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 334,
'assignment_id' => 227,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 335,
'assignment_id' => 227,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 231,
'sort_order' => 8,
'stream_id' => 48,
'field_id' => 198,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '198',
'namespace' => 'products',
'slug' => 'challenges',
'type' => 'anomaly.field_type.repeater',
'config' => 'a:5:{s:7:"related";s:68:"Anomaly\Streams\Platform\Model\Repeater\RepeaterChallengesEntryModel";s:7:"add_row";s:17:"Add Challenge row";s:3:"min";N;s:3:"max";N;s:14:"repeater_title";N;}',
'locked' => '0',
'translations' => [
[
'id' => 276,
'field_id' => 198,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 277,
'field_id' => 198,
'locale' => 'en',
'name' => 'Challenges',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 278,
'field_id' => 198,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 279,
'field_id' => 198,
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
'id' => 348,
'assignment_id' => 231,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 349,
'assignment_id' => 231,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 350,
'assignment_id' => 231,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 351,
'assignment_id' => 231,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 292,
'sort_order' => 282,
'stream_id' => 48,
'field_id' => 194,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '194',
'namespace' => 'products',
'slug' => 'benefits',
'type' => 'anomaly.field_type.multiple',
'config' => 'a:5:{s:7:"related";s:66:"Anomaly\Streams\Platform\Model\Benefits\BenefitsBenefitsEntryModel";s:4:"mode";s:6:"lookup";s:10:"title_name";s:5:"title";s:3:"min";N;s:3:"max";s:1:"4";}',
'locked' => '0',
'translations' => [
[
'id' => 260,
'field_id' => 194,
'locale' => 'ar',
'name' => 'Benefits',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 261,
'field_id' => 194,
'locale' => 'en',
'name' => 'Benefits',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 262,
'field_id' => 194,
'locale' => 'de',
'name' => 'Benefits',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 263,
'field_id' => 194,
'locale' => 'es',
'name' => 'Benefits',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 592,
'assignment_id' => 292,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 593,
'assignment_id' => 292,
'locale' => 'en',
'label' => 'Select Benefits',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 594,
'assignment_id' => 292,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 595,
'assignment_id' => 292,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 406,
'sort_order' => 366,
'stream_id' => 48,
'field_id' => 304,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '304',
'namespace' => 'products',
'slug' => 'knowledges',
'type' => 'anomaly.field_type.multiple',
'config' => 'a:5:{s:7:"related";s:69:"Anomaly\Streams\Platform\Model\Knowledge\KnowledgeKnowledgeEntryModel";s:4:"mode";s:4:"tags";s:10:"title_name";s:5:"title";s:3:"min";N;s:3:"max";N;}',
'locked' => '0',
'translations' => [
[
'id' => 703,
'field_id' => 304,
'locale' => 'ar',
'name' => 'Knowledges',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 704,
'field_id' => 304,
'locale' => 'en',
'name' => 'Knowledges',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 705,
'field_id' => 304,
'locale' => 'de',
'name' => 'Knowledges',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 706,
'field_id' => 304,
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
'id' => 1045,
'assignment_id' => 406,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1046,
'assignment_id' => 406,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1047,
'assignment_id' => 406,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1048,
'assignment_id' => 406,
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
'id' => 84,
'stream_id' => 48,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 85,
'stream_id' => 48,
'locale' => 'en',
'name' => 'Solutions',
'description' => '',
],
[
'id' => 86,
'stream_id' => 48,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 87,
'stream_id' => 48,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
    /**
     * The needs relation
     *
     * @return Relation
     */
    public function needs()
    {
        return $this->getFieldType('needs')->getRelation();
    }

    /**
     * The image 2 relation
     *
     * @return Relation
     */
    public function image2()
    {
        return $this->getFieldType('image_2')->getRelation();
    }

    /**
     * The solution image hover relation
     *
     * @return Relation
     */
    public function solutionImageHover()
    {
        return $this->getFieldType('solution_image_hover')->getRelation();
    }

    /**
     * The image relation
     *
     * @return Relation
     */
    public function image()
    {
        return $this->getFieldType('image')->getRelation();
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
     * The benefits relation
     *
     * @return Relation
     */
    public function benefits()
    {
        return $this->getFieldType('benefits')->getRelation();
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
