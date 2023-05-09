<?php namespace Anomaly\Streams\Platform\Model\Grid;

use Anomaly\Streams\Platform\Entry\EntryModel;

class GridText2EntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'grid_text2';

    protected $titleName = 'title';

    protected $rules = [
        'title' => '',
        'text' => '',
];

    protected $fields = [
        'title',
        'text',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['title', 'text'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Grid\GridText2EntryTranslationsModel';

    protected $stream = [
'id' => '90',
'sort_order' => '',
'namespace' => 'grid',
'slug' => 'text2',
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
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'assignments' => [
[
'id' => 353,
'sort_order' => 332,
'stream_id' => 90,
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
'id' => 833,
'assignment_id' => 353,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 834,
'assignment_id' => 353,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 835,
'assignment_id' => 353,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 836,
'assignment_id' => 353,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 354,
'sort_order' => 333,
'stream_id' => 90,
'field_id' => 210,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '210',
'namespace' => 'grid',
'slug' => 'text',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:6:{s:7:"buttons";a:8:{i:0;s:6:"format";i:1;s:4:"bold";i:2;s:6:"italic";i:3;s:7:"deleted";i:4;s:5:"lists";i:5;s:4:"link";i:6;s:14:"horizontalrule";i:7;s:9:"underline";}s:7:"plugins";a:5:{i:0;s:9:"alignment";i:1;s:11:"inlinestyle";i:2;s:5:"table";i:3;s:6:"source";i:4;s:10:"fullscreen";}s:6:"height";s:3:"150";s:11:"line_breaks";b:0;s:16:"remove_new_lines";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 327,
'field_id' => 210,
'locale' => 'ar',
'name' => 'Text',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 328,
'field_id' => 210,
'locale' => 'en',
'name' => 'Text',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 329,
'field_id' => 210,
'locale' => 'de',
'name' => 'Text',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 330,
'field_id' => 210,
'locale' => 'es',
'name' => 'Text',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 837,
'assignment_id' => 354,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 838,
'assignment_id' => 354,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 839,
'assignment_id' => 354,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 840,
'assignment_id' => 354,
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
'id' => 237,
'stream_id' => 90,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 238,
'stream_id' => 90,
'locale' => 'en',
'name' => 'Text',
'description' => '',
],
[
'id' => 239,
'stream_id' => 90,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 240,
'stream_id' => 90,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
