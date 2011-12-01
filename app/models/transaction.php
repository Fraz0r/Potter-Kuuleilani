<?php

/**
 * Description of order_transaction
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class OrderTransaction extends P3\ActiveRecord\Base 
{
	public static $_table = 'order_transactions';
	public static $_controller = 'order_transactions';

//- Relations
	public static $_belongsTo = array(
		'order' => array(
			'class' => 'Order',
			'fk'    => 'order_id'
		)
	);
}

?>