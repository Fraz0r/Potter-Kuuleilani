<?php

namespace KU\Component;

/**
 * Description of Contact
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Contact extends Base
{
	private static $_categories = array('Requesting more information', 'Other');


//- Public
	public function __construct()
	{
		parent::__construct(array('view_dir' => 'contacts'));
	}

	public function form()
	{
		$this->contact = new \Contact;  // (we want the p3-model, not this class)
	}


//- View methods
	public function getCategoryOptions()
	{
		return array_combine(self::$_categories, self::$_categories);
	}
}

?>