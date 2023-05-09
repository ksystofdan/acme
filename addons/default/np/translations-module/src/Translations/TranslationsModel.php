<?php namespace Np\TranslationsModule\Translations;

use Anomaly\SitesModule\Site\SiteModel;
use Anomaly\Streams\Platform\Model\EloquentModel;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * Class DomainModel
 *
 * @link   http://pyrocms.com/
 * @author PyroCMS, Inc. <support@pyrocms.com>
 * @author Ryan Thompson <ryan@pyrocms.com>
 */
class TranslationsModel extends EloquentModel
{

    /**
     * The model connection.
     *
     * @var string
     */
    protected $connection = 'core';

    /**
     * The model table.
     *
     * @var string
     */
    protected $table = 'translations';

    /**
     * Return the application relation.
     *
     * @return BelongsTo
     */
    /*
    public function application()
    {
        return $this->belongsTo(SiteModel::class);
    }
    */
}
