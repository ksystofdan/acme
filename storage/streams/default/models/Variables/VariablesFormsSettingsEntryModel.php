<?php namespace Anomaly\Streams\Platform\Model\Variables;

use Anomaly\Streams\Platform\Entry\EntryModel;

class VariablesFormsSettingsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $versionable = false;

    protected $table = 'variables_forms_settings';

    protected $titleName = 'id';

    protected $rules = [
        'contact_forms' => '',
        'knowledge_base' => '',
        'newsletter' => '',
        'subject_names' => '',
];

    protected $fields = [
        'contact_forms',
        'knowledge_base',
        'newsletter',
        'subject_names',
];

    protected $with = [];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['contact_forms', 'knowledge_base', 'newsletter', 'subject_names'];

    

    

    

    protected $stream = [
'id' => '79',
'sort_order' => '',
'namespace' => 'variables',
'slug' => 'forms_settings',
'prefix' => 'variables_',
'title_column' => 'id',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '0',
'searchable' => '0',
'trashable' => '0',
'translatable' => '0',
'versionable' => '0',
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'assignments' => [
[
'id' => 310,
'sort_order' => 1,
'stream_id' => 79,
'field_id' => 246,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '246',
'namespace' => 'variables',
'slug' => 'contact_forms',
'type' => 'anomaly.field_type.multiple',
'config' => 'a:5:{s:7:"related";s:57:"Anomaly\Streams\Platform\Model\Users\UsersUsersEntryModel";s:4:"mode";s:4:"tags";s:10:"title_name";s:36:"{entry.display_name} ({entry.email})";s:3:"min";N;s:3:"max";N;}',
'locked' => '0',
'translations' => [
[
'id' => 471,
'field_id' => 246,
'locale' => 'ar',
'name' => 'Contact forms',
'placeholder' => '',
'warning' => '',
'instructions' => 'This users will get submited contact forms to email.',
],
[
'id' => 472,
'field_id' => 246,
'locale' => 'en',
'name' => 'Contact forms',
'placeholder' => '',
'warning' => '',
'instructions' => 'This users will get submited contact forms to email.',
],
[
'id' => 473,
'field_id' => 246,
'locale' => 'de',
'name' => 'Contact forms',
'placeholder' => '',
'warning' => '',
'instructions' => 'This users will get submited contact forms to email.',
],
[
'id' => 474,
'field_id' => 246,
'locale' => 'es',
'name' => 'Contact forms',
'placeholder' => '',
'warning' => '',
'instructions' => 'This users will get submited contact forms to email.',
],
],
],
'translations' => [
[
'id' => 661,
'assignment_id' => 310,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 662,
'assignment_id' => 310,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 663,
'assignment_id' => 310,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 664,
'assignment_id' => 310,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 397,
'sort_order' => 2,
'stream_id' => 79,
'field_id' => 295,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '295',
'namespace' => 'variables',
'slug' => 'knowledge_base',
'type' => 'anomaly.field_type.multiple',
'config' => 'a:5:{s:7:"related";s:57:"Anomaly\Streams\Platform\Model\Users\UsersUsersEntryModel";s:4:"mode";s:4:"tags";s:10:"title_name";s:36:"{entry.display_name} ({entry.email})";s:3:"min";N;s:3:"max";N;}',
'locked' => '0',
'translations' => [
[
'id' => 667,
'field_id' => 295,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 668,
'field_id' => 295,
'locale' => 'en',
'name' => 'Knowledge Base',
'placeholder' => '',
'warning' => '',
'instructions' => 'This users will get submited knowledge base emails.',
],
[
'id' => 669,
'field_id' => 295,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 670,
'field_id' => 295,
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
'id' => 1009,
'assignment_id' => 397,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1010,
'assignment_id' => 397,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1011,
'assignment_id' => 397,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1012,
'assignment_id' => 397,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 400,
'sort_order' => 3,
'stream_id' => 79,
'field_id' => 298,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '298',
'namespace' => 'variables',
'slug' => 'newsletter',
'type' => 'anomaly.field_type.repeater',
'config' => 'a:5:{s:7:"related";s:68:"Anomaly\Streams\Platform\Model\Repeater\RepeaterNewsletterEntryModel";s:7:"add_row";s:17:"Add email address";s:3:"min";N;s:3:"max";N;s:14:"repeater_title";N;}',
'locked' => '0',
'translations' => [
[
'id' => 679,
'field_id' => 298,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 680,
'field_id' => 298,
'locale' => 'en',
'name' => 'Newsletter emails',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 681,
'field_id' => 298,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 682,
'field_id' => 298,
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
'id' => 1021,
'assignment_id' => 400,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1022,
'assignment_id' => 400,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1023,
'assignment_id' => 400,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 1024,
'assignment_id' => 400,
'locale' => 'es',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
],
],
[
'id' => 341,
'sort_order' => 4,
'stream_id' => 79,
'field_id' => 263,
'config' => 'a:1:{i:0;s:23:"a:1:{i:0;s:6:"a:0:{}";}";}',
'unique' => 0,
'required' => 0,
'searchable' => 0,
'translatable' => 0,
'versionable' => 0,
'field' => [
'id' => '263',
'namespace' => 'variables',
'slug' => 'subject_names',
'type' => 'anomaly.field_type.repeater',
'config' => 'a:5:{s:7:"related";s:69:"Anomaly\Streams\Platform\Model\Repeater\RepeaterFormSubjectEntryModel";s:7:"add_row";s:11:"Add subject";s:3:"min";N;s:3:"max";N;s:14:"repeater_title";N;}',
'locked' => '0',
'translations' => [
[
'id' => 539,
'field_id' => 263,
'locale' => 'ar',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 540,
'field_id' => 263,
'locale' => 'en',
'name' => 'Subject names',
'placeholder' => '',
'warning' => '',
'instructions' => 'Add subject names for selection',
],
[
'id' => 541,
'field_id' => 263,
'locale' => 'de',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 542,
'field_id' => 263,
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
'id' => 785,
'assignment_id' => 341,
'locale' => 'ar',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 786,
'assignment_id' => 341,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 787,
'assignment_id' => 341,
'locale' => 'de',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 788,
'assignment_id' => 341,
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
'id' => 193,
'stream_id' => 79,
'locale' => 'ar',
'name' => 'Test',
'description' => '',
],
[
'id' => 194,
'stream_id' => 79,
'locale' => 'en',
'name' => 'Email forms settings',
'description' => '',
],
[
'id' => 195,
'stream_id' => 79,
'locale' => 'de',
'name' => 'Test',
'description' => '',
],
[
'id' => 196,
'stream_id' => 79,
'locale' => 'es',
'name' => 'Test',
'description' => '',
],
],
];

    
    /**
     * The contact forms relation
     *
     * @return Relation
     */
    public function contactForms()
    {
        return $this->getFieldType('contact_forms')->getRelation();
    }

    /**
     * The knowledge base relation
     *
     * @return Relation
     */
    public function knowledgeBase()
    {
        return $this->getFieldType('knowledge_base')->getRelation();
    }

    /**
     * The newsletter relation
     *
     * @return Relation
     */
    public function newsletter()
    {
        return $this->getFieldType('newsletter')->getRelation();
    }

    /**
     * The subject names relation
     *
     * @return Relation
     */
    public function subjectNames()
    {
        return $this->getFieldType('subject_names')->getRelation();
    }

}
