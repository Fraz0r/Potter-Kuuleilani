<?php

namespace Component;

/**
 * Description of carts_controller
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class CartsController extends \ApplicationController 
{
	protected function _init()
	{
		$this->_find_cart();

		return parent::_init();
	}

	public function checkout() 
	{
		$request = \P3::request();
		$host    = $request->protocol().'://'.$request->host();

		$paypal_response = $this->_gateway()->setup_purchase($this->cart->calculateTotal(), array(
			'ip'                => $_SERVER['REMOTE_ADDR'],
			'return_url'        => $host.'/cart/thank-you',
			'cancel_return_url' => $host.'/cart'
		));

		var_dump($paypal_response);
		die;
	}

	public function show() { }

	public function update()
	{
		$commit = $_POST['commit'];

		if($commit == 'Checkout')
				$this->redirect('/cart/checkout');

		if(isset($_POST['line_items'])) {
				foreach($_POST['line_items'] as $line_item_id => $qty) {
						$line_item = $this->cart->line_items->find($line_item_id);

						if($qty) {
								$line_item->quantity = $qty;
								$line_item->save();
						} else {
								$line_item->delete();
						}
				}
		}


		$this->redirect(':back');
	}
}

?>