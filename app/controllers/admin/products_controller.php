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
	public function index()
	{
		$this->products = Product::all();
	}

	public function add()
	{
		$this->product = new Product(array('category' => 'Beauty Products'));
	}

	public function create()
	{
		$this->product = new Product($_POST['product']);

		if($this->product->save())
			$this->redirect('/admin/products');
		else
			$this->render('add');
	}

	public function edit()
	{
		$this->product = Product::find($_GET['id']);
	}

	public function update()
	{
		$this->product = Product::find($_GET['id']);
		$this->product->update($_POST['product']);

		if($this->product->save())
			$this->redirect('/admin/products');
		else
			$this->render('edit');
	}

	public function delete()
	{
		Product::find($_GET['id'])->delete();
		$this->redirect(':back');
	}
}

?>