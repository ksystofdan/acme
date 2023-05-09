<?php
namespace Np\PsiModule\Industries;

use Anomaly\Streams\Platform\Model\Industries\IndustriesIndustriesCombinedEntryModel;

class IndustriesCombinedModel extends IndustriesIndustriesCombinedEntryModel
{
    public function getTitleFullAttribute() {
        return $this->title ? $this->title : "{$this->industry->title} {$this->market_approach->title}";
    }

	public function toArray()
	{
		$array = parent::toArray();
        if($array){
            $array['industry_title'] = $this->industry->title;
            $slug = str_slug("{$this->market_approach->title} {$this->industry->title} {$this->id}", "-");
            $array['public_url'] = url("industries/{$slug}");
        }
        return $array;
	}
}
