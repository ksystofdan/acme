<?php namespace Np\TranslationsModule\Settings;

use Anomaly\Streams\Platform\Model\EloquentRepository;
use Np\TranslationsModule\Settings\Contract\SettingsRepositoryInterface;

/**
 * Class DomainRepository
 *
 * @link   http://pyrocms.com/
 * @author PyroCMS, Inc. <support@pyrocms.com>
 * @author Ryan Thompson <ryan@pyrocms.com>
 */
class SettingsRepository extends EloquentRepository implements SettingsRepositoryInterface
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
    public function __construct(SettingsModel $model)
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
