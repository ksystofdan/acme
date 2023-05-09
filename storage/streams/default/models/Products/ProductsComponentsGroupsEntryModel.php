<?php namespace Anomaly\Streams\Platform\Model\Products;

use Anomaly\Streams\Platform\Entry\EntryModel;

class ProductsComponentsGroupsEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = false;

    protected $table = 'products_components_groups';

    protected $titleName = 'title';

    protected $rules = [
        'title' => '',
        'slug' => '',
        'needs' => '',
        'image' => '',
        'benefits_title' => '',
        'benefits' => '',
        'description' => '',
];

    protected $fields = [
        'title',
        'slug',
        'needs',
        'image',
        'benefits_title',
        'benefits',
        'description',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['needs', 'image', 'benefits'];

    protected $translatedAttributes = ['title', 'slug', 'benefits_title', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Products\ProductsComponentsGroupsEntryTranslationsModel';

    protected $stream = [
'id' => '43',
'sort_order' => '3',
'namespace' => 'products',
'slug' => 'components_groups',
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
'id' => 201,
'sort_order' => 1,
'stream_id' => 43,
'field_id' => 174,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
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
'id' => 228,
'assignment_id' => 201,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 229,
'assignment_id' => 201,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 230,
'assignment_id' => 201,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 231,
'assignment_id' => 201,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 218,
'sort_order' => 2,
'stream_id' => 43,
'field_id' => 188,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
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
'id' => 296,
'assignment_id' => 218,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 297,
'assignment_id' => 218,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 298,
'assignment_id' => 218,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 299,
'assignment_id' => 218,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 295,
'sort_order' => 4,
'stream_id' => 43,
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
'id' => 604,
'assignment_id' => 295,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 605,
'assignment_id' => 295,
'locale' => 'en',
'label' => 'Related needs',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 606,
'assignment_id' => 295,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 607,
'assignment_id' => 295,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 225,
'sort_order' => 5,
'stream_id' => 43,
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
'id' => 324,
'assignment_id' => 225,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 325,
'assignment_id' => 225,
'locale' => 'en',
'label' => 'Header image',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 326,
'assignment_id' => 225,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 327,
'assignment_id' => 225,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 223,
'sort_order' => 6,
'stream_id' => 43,
'field_id' => 193,
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '193',
'namespace' => 'products',
'slug' => 'benefits_title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 256,
'field_id' => 193,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 257,
'field_id' => 193,
'locale' => 'en',
'name' => 'Benefits title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 258,
'field_id' => 193,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 259,
'field_id' => 193,
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
'id' => 316,
'assignment_id' => 223,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 317,
'assignment_id' => 223,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 318,
'assignment_id' => 223,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 319,
'assignment_id' => 223,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 224,
'sort_order' => 7,
'stream_id' => 43,
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
'id' => 320,
'assignment_id' => 224,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 321,
'assignment_id' => 224,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 322,
'assignment_id' => 224,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 323,
'assignment_id' => 224,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 226,
'sort_order' => 8,
'stream_id' => 43,
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
'id' => 328,
'assignment_id' => 226,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 329,
'assignment_id' => 226,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 330,
'assignment_id' => 226,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 331,
'assignment_id' => 226,
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
'id' => 67,
'stream_id' => 43,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 68,
'stream_id' => 43,
'locale' => 'en',
'name' => 'Components groups',
'description' => '',
],
[
'id' => 69,
'stream_id' => 43,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 70,
'stream_id' => 43,
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
     * The image relation
     *
     * @return Relation
     */
    public function image()
    {
        return $this->getFieldType('image')->getRelation();
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

}
