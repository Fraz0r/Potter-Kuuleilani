<?php

namespace KU\Component;

/**
 * Description of Services
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Services extends Base
{
	public function __construct()
	{
		parent::__construct(array('view_dir' => 'service_categories'));
	}

	public function show($category_name)
	{
		$this->service_category = \ServiceCategory::find_by_name($category_name);

		$cols = array();
		$values = array();

		foreach($this->service_category->columns as $column) {
			$cols[$column->id()] = $column->name;
			$values[$column->id()] = array();
		}

		foreach($this->service_category->services as $service) {
			foreach($service->column_values as $value) {
				$values[$value->service_category_column_id][$value->service_id] = $value->value;
			}
		}

		$this->columns = $cols;
		$this->values  = $values;

	}
}

?>
