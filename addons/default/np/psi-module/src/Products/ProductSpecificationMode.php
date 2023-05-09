<?php
namespace Np\PsiModule\Products;

use Anomaly\Streams\Platform\Model\Repeater\RepeaterProductSpecificationsEntryModel;

class ProductSpecificationMode extends RepeaterProductSpecificationsEntryModel
{
	public function toArray()
	{
		$array = parent::toArray();
		return $array;
	}
}
