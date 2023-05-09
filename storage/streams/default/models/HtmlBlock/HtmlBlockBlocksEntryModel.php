<?php namespace Anomaly\Streams\Platform\Model\HtmlBlock;

use Anomaly\Streams\Platform\Entry\EntryModel;

class HtmlBlockBlocksEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'html_block_blocks';

    protected $titleName = 'id';

    protected $rules = [
        'html' => '',
];

    protected $fields = [
        'html',
];

    protected $with = ["translations"];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = [];

    protected $translatedAttributes = ['html'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\HtmlBlock\HtmlBlockBlocksEntryTranslationsModel';

    protected $stream = [
'id' => '30',
'sort_order' => '',
'namespace' => 'html_block',
'slug' => 'blocks',
'prefix' => 'html_block_',
'title_column' => 'id',
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
'id' => 189,
'sort_order' => 188,
'stream_id' => 30,
'field_id' => 167,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 1,
'versionable' => 0,
'field' => [
'id' => '167',
'namespace' => 'html_block',
'slug' => 'html',
'type' => 'anomaly.field_type.editor',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 167,
'field_id' => 167,
'locale' => 'en',
'name' => 'anomaly.extension.html_block::field.html.name',
'placeholder' => 'anomaly.extension.html_block::field.html.placeholder',
'warning' => 'anomaly.extension.html_block::field.html.warning',
'instructions' => 'anomaly.extension.html_block::field.html.instructions',
],
],
],
'translations' => [
[
'id' => 189,
'assignment_id' => 189,
'locale' => 'en',
'label' => 'anomaly.extension.html_block::field.html.label.blocks',
'warning' => 'anomaly.extension.html_block::field.html.warning.blocks',
'placeholder' => 'anomaly.extension.html_block::field.html.placeholder.blocks',
'instructions' => 'anomaly.extension.html_block::field.html.instructions.blocks',
],
],
],
],
'translations' => [
[
'id' => 30,
'stream_id' => 30,
'locale' => 'en',
'name' => 'anomaly.extension.html_block::stream.blocks.name',
'description' => 'anomaly.extension.html_block::stream.blocks.description',
],
],
];

    
}
