<?php namespace Np\TranslationsModule\Translations\Table\Filter;

use Illuminate\Database\Eloquent\Builder;
use Anomaly\Streams\Platform\Ui\Table\TableBuilder;
use Anomaly\Streams\Platform\Ui\Table\Component\Filter\Contract\FilterInterface;


class SearchKeyFilter
{
	 /**
	  * @param Builder $query
	  * @param FilterInterface $filter
	  */
	 public function handle(Builder $query, FilterInterface $filter)
	 {
		$query->where('key', 'LIKE', '%'.$filter->getValue().'%');
	 }
}
