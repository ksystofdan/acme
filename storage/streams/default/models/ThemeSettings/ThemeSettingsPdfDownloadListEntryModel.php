<?php namespace Anomaly\Streams\Platform\Model\ThemeSettings;

use Anomaly\Streams\Platform\Entry\EntryModel;

class ThemeSettingsPdfDownloadListEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'theme_settings_pdf_download_list';

    protected $titleName = 'title';

    protected $rules = [
        'title' => '',
        'pdf' => '',
];

    protected $fields = [
        'title',
        'pdf',
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['pdf'];

    

    

    

    protected $stream = [
'id' => '74',
'sort_order' => '',
'namespace' => 'theme_settings',
'slug' => 'pdf_download_list',
'prefix' => 'theme_settings_',
'title_column' => 'title',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '0',
'trashable' => '1',
'translatable' => '0',
'versionable' => '0',
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'assignments' => [
[
'id' => 293,
'sort_order' => 282,
'stream_id' => 74,
'field_id' => 237,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
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
'id' => 596,
'assignment_id' => 293,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 597,
'assignment_id' => 293,
'locale' => 'en',
'label' => 'Title',
'warning' => '',
'placeholder' => '',
'instructions' => 'Name of pdf file, that visible on front end',
],
[
'id' => 598,
'assignment_id' => 293,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 599,
'assignment_id' => 293,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 294,
'sort_order' => 283,
'stream_id' => 74,
'field_id' => 238,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '238',
'namespace' => 'theme_settings',
'slug' => 'pdf',
'type' => 'anomaly.field_type.file',
'config' => 'a:4:{s:7:"folders";a:1:{i:0;s:1:"2";}s:3:"max";N;s:4:"mode";s:7:"default";s:13:"allowed_types";a:1:{i:0;s:3:"pdf";}}',
'locked' => '0',
'translations' => [
[
'id' => 439,
'field_id' => 238,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 440,
'field_id' => 238,
'locale' => 'en',
'name' => 'PDF',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 441,
'field_id' => 238,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 442,
'field_id' => 238,
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
'id' => 600,
'assignment_id' => 294,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 601,
'assignment_id' => 294,
'locale' => 'en',
'label' => 'PDF',
'warning' => '',
'placeholder' => '',
'instructions' => 'Select pdf',
],
[
'id' => 602,
'assignment_id' => 294,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 603,
'assignment_id' => 294,
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
'id' => 182,
'stream_id' => 74,
'locale' => 'ar',
'name' => '',
'description' => '',
],
[
'id' => 183,
'stream_id' => 74,
'locale' => 'en',
'name' => 'PDF Download List',
'description' => 'List of PDF\'s in "For more info" section',
],
[
'id' => 184,
'stream_id' => 74,
'locale' => 'de',
'name' => '',
'description' => '',
],
[
'id' => 185,
'stream_id' => 74,
'locale' => 'es',
'name' => '',
'description' => '',
],
],
];

    
    /**
     * The pdf relation
     *
     * @return Relation
     */
    public function pdf()
    {
        return $this->getFieldType('pdf')->getRelation();
    }

}
