<?php namespace Np\TranslationsModule\Translations\Table\Filter;

use Illuminate\Database\Eloquent\Builder;
use Anomaly\Streams\Platform\Ui\Table\TableBuilder;
use Anomaly\Streams\Platform\Ui\Table\Component\Filter\Contract\FilterInterface;
use Np\TranslationsModule\Settings\Contract\SettingsRepositoryInterface;


class SearchValueFilter
{
	 /**
	  * @param Builder $query
	  * @param FilterInterface $filter
	  */
	 public function handle(Builder $query, FilterInterface $filter, SettingsRepositoryInterface $settings)
	 {
	 	$langs = $settings->all()->pluck('slug')->toArray();
		foreach ($langs as $lang){
			$query->orwhere('value_'.$lang , 'LIKE', '%'.$filter->getValue().'%');
		}
	 }
}
