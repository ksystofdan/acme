<?php namespace Anomaly\Streams\Platform\Model\UrlLinkType;

use Anomaly\Streams\Platform\Entry\EntryModel;

class UrlLinkTypeUrlsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'url_link_type_urls';

    protected $titleName = 'title';

    protected $rules = [
        'title' => 'required',
        'url' => 'required',
        'description' => '',
];

    protected $fields = [
        'title',
        'url',
        'description',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['title', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\UrlLinkType\UrlLinkTypeUrlsEntryTranslationsModel';

    protected $stream = [
'id' => '29',
'sort_order' => '',
'namespace' => 'url_link_type',
'slug' => 'urls',
'prefix' => 'url_link_type_',
'title_column' => 'title',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '0',
'searchable' => '0',
'trashable' => '0',
'translatable' => '1',
'versionable' => '0',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 186,
'sort_order' => 185,
'stream_id' => 29,
'field_id' => 164,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '164',
'namespace' => 'url_link_type',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 164,
'field_id' => 164,
'locale' => 'en',
'name' => 'anomaly.extension.url_link_type::field.title.name',
'placeholder' => 'anomaly.extension.url_link_type::field.title.placeholder',
'warning' => 'anomaly.extension.url_link_type::field.title.warning',
'instructions' => 'anomaly.extension.url_link_type::field.title.instructions',
],
],
],
'translations' => [
[
'id' => 186,
'assignment_id' => 186,
'locale' => 'en',
'label' => 'anomaly.extension.url_link_type::field.title.label.urls',
'warning' => 'anomaly.extension.url_link_type::field.title.warning.urls',
'placeholder' => 'anomaly.extension.url_link_type::field.title.placeholder.urls',
'instructions' => 'anomaly.extension.url_link_type::field.title.instructions.urls',
],
],
],
[
'id' => 187,
'sort_order' => 186,
'stream_id' => 29,
'field_id' => 165,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '165',
'namespace' => 'url_link_type',
'slug' => 'url',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 165,
'field_id' => 165,
'locale' => 'en',
'name' => 'anomaly.extension.url_link_type::field.url.name',
'placeholder' => 'anomaly.extension.url_link_type::field.url.placeholder',
'warning' => 'anomaly.extension.url_link_type::field.url.warning',
'instructions' => 'anomaly.extension.url_link_type::field.url.instructions',
],
],
],
'translations' => [
[
'id' => 187,
'assignment_id' => 187,
'locale' => 'en',
'label' => 'anomaly.extension.url_link_type::field.url.label.urls',
'warning' => 'anomaly.extension.url_link_type::field.url.warning.urls',
'placeholder' => 'anomaly.extension.url_link_type::field.url.placeholder.urls',
'instructions' => 'anomaly.extension.url_link_type::field.url.instructions.urls',
],
],
],
[
'id' => 188,
'sort_order' => 187,
'stream_id' => 29,
'field_id' => 166,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '166',
'namespace' => 'url_link_type',
'slug' => 'description',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 166,
'field_id' => 166,
'locale' => 'en',
'name' => 'anomaly.extension.url_link_type::field.description.name',
'placeholder' => 'anomaly.extension.url_link_type::field.description.placeholder',
'warning' => 'anomaly.extension.url_link_type::field.description.warning',
'instructions' => 'anomaly.extension.url_link_type::field.description.instructions',
],
],
],
'translations' => [
[
'id' => 188,
'assignment_id' => 188,
'locale' => 'en',
'label' => 'anomaly.extension.url_link_type::field.description.label.urls',
'warning' => 'anomaly.extension.url_link_type::field.description.warning.urls',
'placeholder' => 'anomaly.extension.url_link_type::field.description.placeholder.urls',
'instructions' => 'anomaly.extension.url_link_type::field.description.instructions.urls',
],
],
],
],
'translations' => [
[
'id' => 29,
'stream_id' => 29,
'locale' => 'en',
'name' => 'anomaly.extension.url_link_type::stream.urls.name',
'description' => 'anomaly.extension.url_link_type::stream.urls.description',
],
],
];

    
}
