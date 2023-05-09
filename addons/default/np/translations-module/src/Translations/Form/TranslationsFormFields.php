<?php namespace Np\TranslationsModule\Translations\Form;

use Anomaly\UsersModule\User\Validation\ValidateRoles;
use Illuminate\Http\Request;
use Np\TranslationsModule\Settings\Contract\SettingsRepositoryInterface;

use Np\TranslationsModule\Translations\Form\Validation\UniqueTranslation;
use Np\TranslationsModule\Translations\TranslationsModel;

/**
 * Class UserFormFields
 *
 * @link          http://pyrocms.com/
 * @author        PyroCMS, Inc. <support@pyrocms.com>
 * @author        Ryan Thompson <ryan@pyrocms.com>
 */
class TranslationsFormFields
{

    /**
     * Handle the form fields.
     *
     * @param UserFormBuilder $builder
     */
    public function handle(Request $request, TranslationsFormBuilder $builder, TranslationsModel $translations, SettingsRepositoryInterface $settings)
    {

        $fields = [
            'key' => [
                'required'     => true,
                'rules'        => [
                    'unique_key'
                ],
                'validators'   => [
                    'unique_key' => [
                        'handler' => UniqueTranslation::class,
                        'message' => 'validation.unique',
                    ],
                ],
                'type'         => 'anomaly.field_type.text',
                'label'        => 'np.module.translations::field.key.name',
                'instructions' => 'np.module.translations::field.key.instructions',
            ]
        ];

        $languageFields = [];
        $langs = $settings->all()->pluck('slug')->toArray();
        foreach ($langs as $lang){
            $languageSlug = 'value_' .$lang;
            $languageFields[$languageSlug] = [
                    'type'  => 'anomaly.field_type.textarea',
                    'label' => strtoupper($lang)
            ];
        }
        //$assignments = $users->getAssignments();
        $key = $request->get('key', false);
        if( $key ) {
            $builder->setFormEntryAttribute('key', $key);
        }
        $builder->setFields(array_merge($fields, $languageFields));
    }
}
