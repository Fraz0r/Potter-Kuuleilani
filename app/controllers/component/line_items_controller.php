<?php

namespace Component;

/**
 * Description of cart_line_items_controller
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class LineItemsController extends \ApplicationController
{
	protected function _init()
	{
		$this->_find_cart();

		return parent::_init();
	}

	public function create()
	{
		if(!isset($_POST['line_item']) || !isset($_POST['line_item']['product_id']))
			$this->redirect(':back');

		$item = $this->cart->line_items->find_by_product_id($_POST['line_item']['product_id']);

		if(!$item)
			$item = $this->cart->build('LineItem', $_POST['line_item']);
		else
			$item->quantity += $_POST['line_item']['quantity'];

		$item->save();

		$this->redirect('/cart');
	}
}

?>