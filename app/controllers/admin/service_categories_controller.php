<?php

namespace Admin;
use \ServiceCategory;

/**
 * Description of service_categories_controller
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class ServiceCategoriesController extends AdminController
{
	public function index()
	{
		$this->service_categories = ServiceCategory::all();
	}

	public function edit()
	{
		$this->render(array('text' => 'Temporarily disabled'));
		$this->service_category = ServiceCategory::find($_GET['id']);

		$cols = array();
		$values = array();

		foreach($this->service_category->columns as $column) {
			$cols[$column->id()] = $column->name;
			$values[$column->id()] = array();
		}

		foreach($this->service_category->services as $service) {
			foreach($service->column_values as $value) {
				$values[$value->service_category_column_id][$value->service_id] = $value;
			}
		}

		$this->columns = $cols;
		$this->values  = $values;
	}

	public function update()
	{
		$this->service_category = ServiceCategory::find($_GET['id']);
		$this->service_category->update($_POST['service_category']);

		if($this->service_category->save())
			$this->redirect('/admin/service_categories');
		else
			$this->render('edit');
	}
}

?>