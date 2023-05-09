<?php namespace Np\TranslationsModule\Translations;

use Anomaly\Streams\Platform\Model\EloquentRepository;
use Np\TranslationsModule\Translations\Contract\TranslationsRepositoryInterface;
use Np\TranslationsModule\Translations\TranslationsModel;

/**
 * Class DomainRepository
 *
 * @link   http://pyrocms.com/
 * @author PyroCMS, Inc. <support@pyrocms.com>
 * @author Ryan Thompson <ryan@pyrocms.com>
 */
class TranslationsRepository extends EloquentRepository implements TranslationsRepositoryInterface
{

    /**
     * The repository model.
     *
     * @var DomainModel
     */
    protected $model;

    /**
     * Create a new DomainRepository instance.
     *
     * @param DomainModel $model
     */
    public function __construct(TranslationsModel $model)
    {
        $this->model = $model;
    }

    /**
     * Find a domain.
     *
     * @param $domain
     * @return DomainModel
     */
    public function findByDomain($domain)
    {
        return $this->model->where('domain', $domain)->first();
    }
}
