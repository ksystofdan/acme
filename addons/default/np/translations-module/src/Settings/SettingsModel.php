<?php namespace Np\TranslationsModule\Settings;

use Anomaly\Streams\Platform\Model\EloquentModel;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * Class DomainModel
 *
 * @link   http://pyrocms.com/
 * @author PyroCMS, Inc. <support@pyrocms.com>
 * @author Ryan Thompson <ryan@pyrocms.com>
 */
class SettingsModel extends EloquentModel
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
    protected $table = 'translations_settings';

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
