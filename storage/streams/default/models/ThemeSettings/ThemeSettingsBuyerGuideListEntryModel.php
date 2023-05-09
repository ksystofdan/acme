<?php namespace Anomaly\Streams\Platform\Model\ThemeSettings;

use Anomaly\Streams\Platform\Entry\EntryModel;

class ThemeSettingsBuyerGuideListEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'theme_settings_buyer_guide_list';

    protected $titleName = 'title';

    protected $rules = [
        'title' => '',
        'article_url' => '',
];

    protected $fields = [
        'title',
        'article_url',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\ThemeSettings\ThemeSettingsBuyerGuideListEntryTranslationsModel';

    protected $stream = [
'id' => '69',
'sort_order' => '',
'namespace' => 'theme_settings',
'slug' => 'buyer_guide_list',
'prefix' => 'theme_settings_',
'title_column' => 'title',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '0',
'trashable' => '1',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'assignments' => [
[
'id' => 283,
'sort_order' => 277,
'stream_id' => 69,
'field_id' => 237,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '237',
'namespace' => 'theme_settings',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 435,
'field_id' => 237,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 436,
'field_id' => 237,
'locale' => 'en',
'name' => 'Title',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 437,
'field_id' => 237,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 438,
'field_id' => 237,
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
'id' => 556,
'assignment_id' => 283,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 557,
'assignment_id' => 283,
'locale' => 'en',
'label' => 'Article Title',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 558,
'assignment_id' => 283,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 559,
'assignment_id' => 283,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 284,
'sort_order' => 278,
'stream_id' => 69,
'field_id' => 239,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '239',
'namespace' => 'theme_settings',
'slug' => 'article_url',
'type' => 'anomaly.field_type.url',
'config' => 'a:1:{s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 443,
'field_id' => 239,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 444,
'field_id' => 239,
'locale' => 'en',
'name' => 'Article URL',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 445,
'field_id' => 239,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 446,
'field_id' => 239,
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
'id' => 560,
'assignment_id' => 284,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 561,
'assignment_id' => 284,
'locale' => 'en',
'label' => 'Article URL',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 562,
'assignment_id' => 284,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 563,
'assignment_id' => 284,
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
'id' => 162,
'stream_id' => 69,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 163,
'stream_id' => 69,
'locale' => 'en',
'name' => 'Buyer’s guide List',
'description' => '',
],
[
'id' => 164,
'stream_id' => 69,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 165,
'stream_id' => 69,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
}
