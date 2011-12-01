<?php

/**
 * Description of address
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Address extends P3\ActiveRecord\Base 
{
	public static $_table = 'addresses';
	public static $_controller = 'addresses';

	public static $_belongsTo = array(
		'customer' => array(
			'class' => 'Customer',
			'fk'    => 'customer_id'
		)
	);
}

?>