<?php

/**
 * Description of menu_item
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class MenuItem extends P3\ActiveRecord\Base
{
	const TYPE_PAGE_LINK  = 1;
	const TYPE_LINK_ALIAS = 2;

	public static $_table = 'menu_items';
	public static $_controller = 'menu_items';

//- Relations
	public static $_belongsTo = array(
		'menu' => array(
			'class' => 'Menu',
			'fk'    => 'menu_id'
		),
		'linkable' => array(
			'polymorphic' => true
		)
	);

	public static $_hasMany = array(
		'aliases' => array(
			'class' => __CLASS__,
			'as'    => 'linkable'
		)
	);

//- Public
	public function path()
	{
		if(!$this->linkable)
			throw new KU\Exception('Could not find link, therefore cannot generate a link.', array(), 500);

		switch($this->item_type) {
			case self::TYPE_PAGE_LINK:
				return $this->linkable->url_key == 'index' ? '/' : '/'.$this->linkable->url_key.'.html';
				break;
		}
	}
}

?>