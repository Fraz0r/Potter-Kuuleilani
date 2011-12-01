<?php

/**
 * Description of customer
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Customer extends P3\ActiveRecord\Base 
{
	public static $_table = 'customers';
	public static $_controller = 'customers';

//- Relations
	public static $_belongsTo = array(
		'billing_address' => array(
			'class' => 'Address',
			'fk'    => 'billing_address_id'
		),
		'shipping_address' => array(
			'class' => 'Address',
			'fk'    => 'shipping_address_id'
		)
	);

	public static $_hasMany = array(
		'carts' => array(
			'class' => 'Cart',
			'fk'    => 'customer_id'
		)
	);

//- Magic 
	public function __get($var)
	{
		switch($var) {
			case 'shipping_address':
				$addr = parent::__get($var);
				return $addr ? $addr : $this->billing_address;
				break;
			case 'full_name':
				return $this->first_name.' '.$this->last_name;
				break;
			default:
				return parent::__get($var);
		}
	}
}

?>
