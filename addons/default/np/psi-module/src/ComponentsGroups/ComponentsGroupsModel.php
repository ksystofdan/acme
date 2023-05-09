<?php
namespace Np\PsiModule\ComponentsGroups;

use Anomaly\Streams\Platform\Model\Products\ProductsComponentsGroupsEntryModel;
use Np\PsiModule\Products\ProductsModel;

class ComponentsGroupsModel extends ProductsComponentsGroupsEntryModel
{

    /**
     * Return the products relation.
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function products()
    {
        return $this->hasMany(ProductsModel::class, 'component_group_id');
    }
    
    
     public function getPublicUrlAttribute() {
         return url("components/{$this->slug}-{$this->id}");
     }
    
    public function toArray() {
        $array = parent::toArray();
        $array['public_url'] = url("components/{$this->slug}-{$this->id}");
        return $array;
    }


    public function componeeds()
    {
        return $this->belongsToMany(
            \parent::class,
            'products_components_groups_needs',
            'related_id',
            'entry_id'
        );
    }

}
