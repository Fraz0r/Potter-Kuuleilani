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
		if($_GET['action'] != 'thank-you')
			$this->_find_cart();

		return parent::_init();
	}

	public function checkout() 
	{
		$request = \P3::request();
		$host    = $request->protocol().'://'.$request->host();

		$paypal_response = $this->_gateway()->setup_purchase($this->cart->calculateTotal(), array(
			'ip'                => $_SERVER['REMOTE_ADDR'],
			'return_url'        => $host.'/cart/confirm?cart_id='.$this->cart->id(),
			'cancel_return_url' => $host.'/cart?cart_id'.$this->cart->id()
		));

		$this->redirect($this->_gateway()->redirect_url_for($paypal_response->token()));
	}

	public function confirm()
	{
		if(!isset($_GET['token']))
			$this->redirect('/cart');

		$details_response = $this->_gateway()->details_for($_GET['token']);

		if(!$details_response->wasSuccessfull()) {
			$this->message = $details_response->message;
			$this->render('error');
		}

		$this->address = $details_response->address();
	}

	public function complete()
	{
		$purchase = $this->_gateway()->purchase($this->cart->calculateTotal(), array(
			'ip'       => $_SERVER['REMOTE_ADDR'],
			'payer_id' => $_GET['payer_id'],
			'token'    => $_GET['token']
		));

		if(!$purchase->wasSuccessfull()) {
			$this->message = $purchase->message;
			$this->render('error');
			return false;
		}

		session_destroy();
		$this->redirect('/cart/thank-you?authorization='.$purchase->authorization);
	}

	public function show() { }

	public function thank_you() { }

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