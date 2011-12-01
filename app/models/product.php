<?php

/**
 * Description of product
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Product extends P3\ActiveRecord\Base
{
	public static $_table = 'products';

//- Attachments
	public static $_hasAttachment = array(
		'image' => array(
			'styles' => array(
				'thumb' => '218x139',
				'small' => '100',
				'large' => '400'
			)
		)
	);
}

?>