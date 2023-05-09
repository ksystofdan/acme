<?php namespace Np\PsiModule\Knowledge;

use Anomaly\Streams\Platform\Image\Command\MakeImageInstance;
use Anomaly\Streams\Platform\Model\Knowledge\KnowledgeKnowledgeEntryModel;
use Illuminate\Database\Eloquent\Builder;

class KnowledgeModel extends KnowledgeKnowledgeEntryModel
{

    public function getPublishAtFullAttribute() {
        return $this->publish_at ? $this->publish_at : $this->created_at;
    }

    public function getPublicUrlAttribute() {
        return url("knowledge/{$this->category->slug}-{$this->category->id}/{$this->slug}-{$this->id}");
    }

    public function getPosterImageUrlAttribute() {
        return $this->image ? $this->image->make()->fit(1440, 850)->url() : $this->dispatch(new MakeImageInstance("np.theme.site::img/no-image.png"))->url();
    }

    public function getThumbnailImageUrlAttribute() {
        return $this->image ? $this->image->make()->fit(300, 200)->url() : $this->dispatch(new MakeImageInstance("np.theme.site::img/no-image.png"))->url();
    }
    
    
    
    public function scopeNotHidden(Builder $query)
    {
        return $query->where('k_hidden', 0);
    }
    
    
    
    public function toArray()
    {
        $array = parent::toArray();
        $array['category'] = $this->category ? $this->category->toArray() : [];
        $array['thumbnail_image_url'] = $this->image ? $this->image->make()->cropped()->fit(300,300)->url() : [];
        if( empty($array['thumbnail_image_url']) ) {
            $array['thumbnail_image_url'] = $this->dispatch(new MakeImageInstance("np.theme.site::img/no-image.png"))->url();
        }
        $array['publishAtFull'] = $this->publish_at ? $this->publish_at : $this->created_at;
        if($this->category->slug == 'videos'){
            $array['publicUrl'] = $this->youtube_url;
            $array['lightbox'] = 'data-fancybox';
        }else{
            $array['publicUrl'] = url("knowledge/{$this->category->slug}-{$this->category->id}/{$this->slug}-{$this->id}");
        }
        return $array;
    }

        /**
     * Restrict to live knowledge only.
     *
     * @param  Builder $query
     * @return Builder
     */
    public function scopeLive(Builder $query)
    {
        return $query
            ->where('enabled', 1)
            ->where(function ($query) {
                $query->where('publish_at', '<=', date('Y-m-d H:i:s'))
                    ->orWhere('publish_at', null);
            })
            ->orderBy('publish_at', 'DESC');
    }

    // public function scopeLocale(Builder $query, $locale)
    // {
    //     return $query->where('locale', $locale);
    // }
}
