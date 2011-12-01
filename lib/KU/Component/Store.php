<?php

namespace KU\Component;
use       Product;

/**
 * Description of Contact
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Store extends Base
{
	const INDEX_COLUMNS = 4;

//- Public
	public function __construct()
	{
		parent::__construct(array('view_dir' => 'stores'));
	}

	public function show()
	{
		$this->products = Product::all();
	}


//- View methods
	public function getColumnCount()
	{
		return self::INDEX_COLUMNS;
	}
}

?>