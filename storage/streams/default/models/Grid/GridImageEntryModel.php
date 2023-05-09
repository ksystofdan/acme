<?php namespace Anomaly\Streams\Platform\Model\Grid;

use Anomaly\Streams\Platform\Entry\EntryModel;

class GridImageEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'grid_image';

    protected $titleName = 'title';

    protected $rules = [
        'title' => '',
        'image' => '',
        'description' => '',
];

    protected $fields = [
        'title',
        'image',
        'description',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['image'];

    protected $translatedAttributes = ['title', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Grid\GridImageEntryTranslationsModel';

    protected $stream = [
'id' => '92',
'sort_order' => '',
'namespace' => 'grid',
'slug' => 'image',
'prefix' => 'grid_',
'title_column' => 'title',
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
'id' => 357,
'sort_order' => 336,
'stream_id' => 92,
'field_id' => 212,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '212',
'namespace' => 'grid',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 335,
'field_id' => 212,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 336,
'field_id' => 212,
'locale' => 'en',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 337,
'field_id' => 212,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 338,
'field_id' => 212,
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
'id' => 849,
'assignment_id' => 357,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 850,
'assignment_id' => 357,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 851,
'assignment_id' => 357,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 852,
'assignment_id' => 357,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 358,
'sort_order' => 337,
'stream_id' => 92,
'field_id' => 213,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '213',
'namespace' => 'grid',
'slug' => 'image',
'type' => 'anomaly.field_type.image',
'config' => 'a:3:{s:7:"folders";a:1:{i:0;s:1:"1";}s:12:"aspect_ratio";N;s:4:"mode";s:7:"default";}',
'locked' => '0',
'translations' => [
[
'id' => 339,
'field_id' => 213,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 340,
'field_id' => 213,
'locale' => 'en',
'name' => 'Image',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 341,
'field_id' => 213,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 342,
'field_id' => 213,
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
'id' => 853,
'assignment_id' => 358,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 854,
'assignment_id' => 358,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 855,
'assignment_id' => 358,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 856,
'assignment_id' => 358,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 359,
'sort_order' => 338,
'stream_id' => 92,
'field_id' => 214,
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '214',
'namespace' => 'grid',
'slug' => 'description',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 343,
'field_id' => 214,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 344,
'field_id' => 214,
'locale' => 'en',
'name' => 'Description',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 345,
'field_id' => 214,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 346,
'field_id' => 214,
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
'id' => 857,
'assignment_id' => 359,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 858,
'assignment_id' => 359,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 859,
'assignment_id' => 359,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 860,
'assignment_id' => 359,
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
'id' => 245,
'stream_id' => 92,
'locale' => 'ar',
'name' => 'Image',
'description' => '',
],
[
'id' => 246,
'stream_id' => 92,
'locale' => 'en',
'name' => 'Image',
'description' => '',
],
[
'id' => 247,
'stream_id' => 92,
'locale' => 'de',
'name' => 'Image',
'description' => '',
],
[
'id' => 248,
'stream_id' => 92,
'locale' => 'es',
'name' => 'Image',
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
