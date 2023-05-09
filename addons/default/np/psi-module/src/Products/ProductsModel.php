<?php
namespace Np\PsiModule\Products;

use Anomaly\Streams\Platform\Image\Command\MakeImageInstance;
use Anomaly\Streams\Platform\Model\Products\ProductsProductsEntryModel;
use Illuminate\Database\Eloquent\Builder;

class ProductsModel extends ProductsProductsEntryModel
{

    public function getPublicUrlAttribute() {
        return url("product/{$this->slug}-{$this->id}");
    }
    
    
    public function scopeLive(Builder $query)
    {
        return $query->where('enabled', 1);
    }
    
    public function scopeWhereLike(Builder $query, $col, $val)
    {
        return $query->orWhere($col, $val);
    }
    
    public function getThumbnailImageUrlAttribute() {
        return count($this->gallery) ? $this->gallery->first()->make()->fit(300, 300)->url() : $this->dispatch(new MakeImageInstance("np.theme.site::img/no-image.png"))->url();
    }
    
	public function toArray()
	{

		$array = parent::toArray();
        $array['brand'] = $this->brand ?  $this->brand->toArray() : [];
        $array['category'] = $this->category ? $this->category->toArray() : [];

        $array['gallery'] = [];
        foreach( $this->gallery as $file) {
            $thumbnail_url = $file->make()->fit(48,48)->url();
            $image_url = $file->make()->url();
            //$image_url = $file->make()->fit(700,null)->url();
            $file = $file->toArray();
            $file['image_url'] =  $image_url;
            $file['thumbnail_url'] =  $thumbnail_url;
            $array['gallery'][] = $file;
        }

        if( empty($array['gallery']) ) {
            $array['gallery'][0]['image_url'] = $this->dispatch(new MakeImageInstance("np.theme.site::img/no-image.png"))->url();
            $array['gallery'][0]['thumbnail_url'] = $this->dispatch(new MakeImageInstance("np.theme.site::img/no-image.png"))->fit(48,48)->url();
        }

        $array['image_url'] =  $array['gallery'][0]['image_url']; //isset($array['gallery'][0]) ? $array['gallery'][0]['image_url'] : $this->dispatch(new MakeImageInstance("theme::img/no-image.png"))->url();
        $array['variations'] = $this->product_variations->toArray();
        $array['whitepapers'] = [];

        foreach( $this->whitepapers_en as $file) {
            $decorated = $file->decorated;
            $file = $file->toArray();
            $file['download_url'] =  url($decorated->downloadPath());
            $file['readable_size'] =  $decorated->readableSize();
            $array['whitepapers'][] = $file;
        }

        // foreach($array['variations'] as $variation) {
        //     $array['whitepapers'] = array_merge($array['whitepapers'], $variation['whitepapers']);
        // }

        $array['public_url'] = $this->publicUrl;

		return $array;
	}
}
