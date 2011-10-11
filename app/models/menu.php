<?php

/**
 * Description of menu
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Menu extends P3\ActiveRecord\Base
{
	public static $_table = 'menus';
	public static $_controller = 'menus';

	public static $_hasMany = array(
		'menu_items' => array(
			'class' => 'MenuItem',
			'fk'    => 'menu_id'
		)
	);
}

?>