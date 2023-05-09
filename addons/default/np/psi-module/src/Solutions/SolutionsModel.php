<?php
namespace Np\PsiModule\Solutions;

use Anomaly\Streams\Platform\Image\Command\MakeImageInstance;
use Anomaly\Streams\Platform\Model\Products\ProductsSolutionsEntryModel;

class SolutionsModel extends ProductsSolutionsEntryModel
{
    public function getSolutionImageUrlAttribute() {
        return $this->image_2 ? $this->image_2->decorated->cropped()->url() : $this->dispatch(new MakeImageInstance("theme::img/no-image.png"))->fit(600,600)->url();
    }

    public function getPublicUrlAttribute() {
        return url("solutions/{$this->slug}-{$this->id}");
    }

    public function toArray() {
        $array = parent::toArray();
        $array['public_url'] = $this->publicUrl;
        return $array;
    }
}
