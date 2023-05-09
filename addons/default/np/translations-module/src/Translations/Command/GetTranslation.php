<?php namespace Np\TranslationsModule\Translations\Command;

use Np\TranslationsModule\Translations\Contract\TranslationsRepositoryInterface;
use Np\TranslationsModule\Translations\TranslationsModel;

class GetTranslation
{

    protected $key;
    protected $locale;
    protected $langSlug;
    static $translations = false;
    /**
     * GetTranslation constructor.
     * @param $key
     */
    public function __construct($key, $lang = false)
    {
        $this->key = $key;


        $this->locale = $lang ? $lang : app()->getLocale();
        if ($this->locale == 'et') $this->locale = 'ee';

        $this->langSlug = "value_{$this->locale}";

        if (!GetTranslation::$translations) {
            // debug('calling translation query');
            GetTranslation::$translations = TranslationsModel::all()->keyBy('key')->toArray();
        }

    }

    public function handle(TranslationsRepositoryInterface $translates)
    {
        if (isset(GetTranslation::$translations[$this->key][$this->langSlug]))
            return GetTranslation::$translations[$this->key][$this->langSlug];

        return "::{$this->key}";
    }

}