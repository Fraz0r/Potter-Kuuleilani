<?php

/**
 * Description of cart
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Cart extends P3\ActiveRecord\Base 
{
	public static $_table = 'carts';
	public static $_controller = 'carts';

//- Relations
	public static $_belongsTo = array(
		'customer' => array(
			'class' => 'Customer',
			'fk'    => 'customer_id'
		)
	);

	public static $_hasMany = array(
		'line_items' => array(
			'class' => 'LineItem',
			'fk'    => 'cart_id'
		)
	);

	public static $_hasOne = array(
		'order' => array(
			'class' => 'Order',
			'fk'    => 'cart_id'
		)
	);

//- Public
	public function calculateTotal()
	{
		if(count($this->line_items))
			return array_sum($this->line_items->collect('line_total'));
		else
			return 0;
	}

}

?>
