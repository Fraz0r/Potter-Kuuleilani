<?php

/**
 * Description of page
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Page extends P3\ActiveRecord\Base
{
	public static $_table = 'pages';
	public static $_controller = 'pages';

	public static $_hasMany = array(
		'menu_items' => array(
			'class' => 'MenuItem',
			'as' => 'linkable'
		)
	);

	public static $_scope = array(
		'published' => array(
			'conditions' => array('published' => 1)
		)
	);
}

?>