<?php namespace Np\TranslationsModule\Translations\Form\Validation;

use Anomaly\SitesModule\Domain\DomainRepository;
use Anomaly\SitesModule\Domain\Form\DomainFormBuilder;
use Np\TranslationsModule\Translations\Contract\TranslationsRepositoryInterface;
use Np\TranslationsModule\Translations\Form\TranslationsFormBuilder;

/**
 * Class UniqueDomain
 *
 * @link   http://pyrocms.com/
 * @author PyroCMS, Inc. <support@pyrocms.com>
 * @author Ryan Thompson <ryan@pyrocms.com>
 */
class UniqueTranslation
{

    /**
     * Handle the validation.
     *
     * @param DomainFormBuilder     $builder
     * @param DomainRepository      $domains
     * @param                       $value
     * @return bool
     */
    public function handle(TranslationsFormBuilder $builder, TranslationsRepositoryInterface $translations, $value)
    {

        if ( $translations->findBy('key', $value) )
            return true;

        return true;
    }
}
