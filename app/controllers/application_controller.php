<?php

/**
 * Description of application_controller
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class ApplicationController extends P3\ActionController\Base
{
	protected $_layout = 'gazier/application.tpl';

	private static $_gateway;

//- Protected
	protected function _init()
	{
		if(!isset($_GET['url-key']))
			$_GET['url-key'] = '';

		$this->user = User::current();
		$this->meta = array();
	}

	protected function add_error($str)
	{
		$_SESSION['error'] = $str;
	}

	protected function add_message($str)
	{
		$_SESSION['message'] = $str;
	}

	protected function _find_cart()
	{
		$this->cart = isset($_SESSION->cart_id) ? Cart::find($_SESSION->cart_id) : false;

		if(!$this->cart || !isset($_SESSION['cart_id'])) {
				$this->cart = new Cart(array('session_id' => session_id()));
				$this->cart->save();

				$_SESSION['cart_id'] = $this->cart->id();
		}

		return $this->cart;
	}

	protected function _gateway()
	{
		return(isset(self::$_gateway) 
					? self::$_gateway
						: new P3\Merchant\Billing\Gateway\PayPalExpress(array(
							'login' => 'USER_LOGIN',
							'password' => 'USER_PASS',
							'signature' => 'SIG'
						))
		);
	}
}

?>