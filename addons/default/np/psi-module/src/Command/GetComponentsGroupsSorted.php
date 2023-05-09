<?php namespace Np\PsiModule\Command;

use Np\PsiModule\ComponentsGroups\ComponentsGroupsModel;

/**
 * Class GetJury
 *
 * @link          http://pyrocms.com/
 * @author        PyroCMS, Inc. <support@pyrocms.com>
 * @author        Ryan Thompson <ryan@pyrocms.com>
 */
class GetComponentsGroupsSorted
{
    /**
     * Create a new GetJury instance.
     *
     * @param mixed $identifier
     */
     protected $locale;
     
    public function __construct()
    {
        $this->lang = $this->locale;
    }

    /**
     * Handle the command.
     *
     */
    public function handle(ComponentsGroupsModel $model)
    {

        $rows = $model->all();
        $rows = $rows->sortBy('title');

        $total = $rows->count();

        $maxItemsInColumn = intval(ceil($total / 3));
        $maxItemsInColumn = $maxItemsInColumn > 15 ? $maxItemsInColumn : 15;

        $items = [];
        foreach ($rows as $row) {
            $item = $row->toArray();
            $item['count'] = $row->products->where('enabled',1)->count();
            $item['public_url'] = url("components/{$row->slug}-{$row->id}");
            $firstLetter = substr($row->title, 0, 1);
            $items[$firstLetter][] = $item ;
        }

        //grouping
        $grouped = [];
        $groupId = 0;
        $itemsInGroup = 0;
        foreach($items as $item) {
            if(!empty($grouped[$groupId]) && ($itemsInGroup + count($item) > $maxItemsInColumn ) ) {
                $groupId++;
                $itemsInGroup = 0;
            }
            $itemsInGroup += count($item);
            $grouped[$groupId][] = $item;
        }

        return  $grouped;
    }
}
