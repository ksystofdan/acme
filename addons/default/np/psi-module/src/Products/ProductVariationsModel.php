<?php
namespace Np\PsiModule\Products;

use Anomaly\Streams\Platform\Model\Repeater\RepeaterProductVariationsEntryModel;

class ProductVariationsModel extends RepeaterProductVariationsEntryModel
{
	public function toArray()
	{

		$array = parent::toArray();
        $array['specifications'] = $this->specifications->toArray();

        $array['gallery'] = [];
        foreach( $this->gallery as $file) {
            $image_url = $file->make()->fit(214,140)->url();
            $file = $file->toArray();
            $file['image_url'] =  $image_url;
            $array['gallery'][] = $file;
        }

        $array['whitepapers'] = [];
        foreach( $this->whitepapers as $file) {
            //$decorated = (new Decorator())->decorate($file);
            $decorated = $file->decorated;
            $file = $file->toArray();
            $file['download_url'] =  url($decorated->downloadPath());
            $file['readable_size'] =  $decorated->readableSize();
            $array['whitepapers'][] = $file;
        }

		return $array;
	}
}
