<?php

namespace Np\PsiModule\Knowledge;

use Anomaly\Streams\Platform\Model\Knowledge\KnowledgeCategoriesEntryModel;

class KnowledgeCategoriesModel extends KnowledgeCategoriesEntryModel
{
    public function getPublicUrlAttribute() {
        return url("knowledge/{$this->slug}-{$this->id}");
    }

    public function knowledge()
    {
        return $this->hasMany(KnowledgeModel::class, 'category_id');
    }
}
