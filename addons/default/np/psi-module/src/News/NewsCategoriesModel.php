<?php

namespace Np\PsiModule\News;

use Anomaly\Streams\Platform\Model\News\NewsCategoriesEntryModel;

class NewsCategoriesModel extends NewsCategoriesEntryModel
{
    public function getPublicUrlAttribute() {
        return url("news/{$this->slug}-{$this->id}");
    }

    public function news()
    {
        return $this->hasMany(NewsModel::class, 'category_id');
    }
}
