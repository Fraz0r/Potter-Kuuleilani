<?php

namespace Admin;
use       Product;

/**
 * Description of products
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class ProductsController extends AdminController 
{
	public function add()
	{
		$this->product = new Product(array('category' => 'Beauty Products'));
	}

	public function create()
	{
		$this->product = new Product($_POST['product']);

		if($this->product->save())
			$this->redirect(':back');
		else
			$this->render('add');
	}
}

?>