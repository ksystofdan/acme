<?php namespace Anomaly\Streams\Platform\Model\ThemeSettings;

use Anomaly\Streams\Platform\Entry\EntryModel;

class ThemeSettingsFooterMapCountriesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = true;

    protected $versionable = false;

    protected $table = 'theme_settings_footer_map_countries';

    protected $titleName = 'country';

    protected $rules = [
        'country' => '',
        'position_x' => '',
        'position_y' => '',
        'companies' => '',
];

    protected $fields = [
        'country',
        'position_x',
        'position_y',
        'companies',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['companies'];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\ThemeSettings\ThemeSettingsFooterMapCountriesEntryTranslationsModel';

    protected $stream = [
'id' => '98',
'sort_order' => '',
'namespace' => 'theme_settings',
'slug' => 'footer_map_countries',
'prefix' => 'theme_settings_',
'title_column' => 'country',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '0',
'searchable' => '1',
'trashable' => '1',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'assignments' => [
[
'id' => 412,
'sort_order' => 363,
'stream_id' => 98,
'field_id' => 309,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '309',
'namespace' => 'theme_settings',
'slug' => 'country',
'type' => 'anomaly.field_type.text',
'config' => 'a:6:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";N;s:3:"max";s:3:"255";s:12:"show_counter";b:0;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 723,
'field_id' => 309,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 724,
'field_id' => 309,
'locale' => 'en',
'name' => 'Country',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 725,
'field_id' => 309,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 726,
'field_id' => 309,
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
'id' => 1069,
'assignment_id' => 412,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1070,
'assignment_id' => 412,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1071,
'assignment_id' => 412,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1072,
'assignment_id' => 412,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 413,
'sort_order' => 364,
'stream_id' => 98,
'field_id' => 310,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '310',
'namespace' => 'theme_settings',
'slug' => 'position_x',
'type' => 'anomaly.field_type.decimal',
'config' => 'a:6:{s:8:"decimals";s:1:"1";s:3:"min";s:1:"0";s:3:"max";s:3:"100";s:13:"default_value";N;s:9:"separator";s:1:",";s:5:"point";s:1:".";}',
'locked' => '0',
'translations' => [
[
'id' => 727,
'field_id' => 310,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 728,
'field_id' => 310,
'locale' => 'en',
'name' => 'Position X',
'placeholder' => '',
'warning' => '',
'instructions' => 'Position on map image in % by X axis',
],
[
'id' => 729,
'field_id' => 310,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 730,
'field_id' => 310,
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
'id' => 1073,
'assignment_id' => 413,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1074,
'assignment_id' => 413,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1075,
'assignment_id' => 413,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1076,
'assignment_id' => 413,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 414,
'sort_order' => 365,
'stream_id' => 98,
'field_id' => 311,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '311',
'namespace' => 'theme_settings',
'slug' => 'position_y',
'type' => 'anomaly.field_type.decimal',
'config' => 'a:6:{s:8:"decimals";s:1:"1";s:3:"min";s:1:"0";s:3:"max";s:3:"100";s:13:"default_value";N;s:9:"separator";s:1:",";s:5:"point";s:1:".";}',
'locked' => '0',
'translations' => [
[
'id' => 731,
'field_id' => 311,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 732,
'field_id' => 311,
'locale' => 'en',
'name' => 'Position Y',
'placeholder' => '',
'warning' => '',
'instructions' => 'Position on map image in % by Y axis',
],
[
'id' => 733,
'field_id' => 311,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 734,
'field_id' => 311,
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
'id' => 1077,
'assignment_id' => 414,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1078,
'assignment_id' => 414,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1079,
'assignment_id' => 414,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1080,
'assignment_id' => 414,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 415,
'sort_order' => 366,
'stream_id' => 98,
'field_id' => 308,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '308',
'namespace' => 'theme_settings',
'slug' => 'companies',
'type' => 'anomaly.field_type.repeater',
'config' => 'a:5:{s:7:"related";s:64:"Anomaly\Streams\Platform\Model\Repeater\RepeaterMapUrlEntryModel";s:7:"add_row";s:16:"Add new location";s:3:"min";N;s:3:"max";N;s:14:"repeater_title";N;}',
'locked' => '0',
'translations' => [
[
'id' => 719,
'field_id' => 308,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 720,
'field_id' => 308,
'locale' => 'en',
'name' => 'Companies',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 721,
'field_id' => 308,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 722,
'field_id' => 308,
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
'id' => 1081,
'assignment_id' => 415,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1082,
'assignment_id' => 415,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1083,
'assignment_id' => 415,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1084,
'assignment_id' => 415,
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
'id' => 266,
'stream_id' => 98,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 267,
'stream_id' => 98,
'locale' => 'en',
'name' => 'Footer map Countries',
'description' => '',
],
[
'id' => 268,
'stream_id' => 98,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 269,
'stream_id' => 98,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
    /**
     * The companies relation
     *
     * @return Relation
     */
    public function companies()
    {
        return $this->getFieldType('companies')->getRelation();
    }

}
