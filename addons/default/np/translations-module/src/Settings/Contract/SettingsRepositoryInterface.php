<?php namespace Np\TranslationsModule\Settings\Contract;

use Anomaly\SitesModule\Domain\DomainModel;
use Anomaly\Streams\Platform\Model\Contract\EloquentRepositoryInterface;

/**
 * Interface DomainRepositoryInterface
 *
 * @link          http://pyrocms.com/
 * @author        PyroCMS, Inc. <support@pyrocms.com>
 * @author        Ryan Thompson <ryan@pyrocms.com>
 * @package       Anomaly\SitesModule\Domain\Contract
 */
interface SettingsRepositoryInterface extends EloquentRepositoryInterface
{

    /**
     * Find a domain.
     *
     * @param $domain
     * @return DomainModel
     */
    public function findByDomain($domain);
}
