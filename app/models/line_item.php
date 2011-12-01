<?php

/**
 * Description of cart_line_item
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class LineItem extends P3\ActiveRecord\Base 
{
	public static $_table = 'cart_line_items';
	public static $_controller = 'cart_line_items';

//- Relations
	public static $_belongsTo = array(
		'cart' => array(
			'class' => 'Cart',
			'fk'    => 'cart_id'
		),
		'product' => array(
			'class' => 'Product',
			'fk'    => 'product_id'
		)
	);

//- Triggers
	protected $_beforeUpdate = array(
		':_updateLineTotal'
	);

	protected $_afterCreate = array(
		':_updateLineTotalAndSave'
	);
//- Protected
	protected function _updateLineTotal()
	{
		if(!isset($this->quantity) || $this->quantity < 0)
			$this->quantity = 1;

		$this->line_total = $this->quantity * $this->product->price;
		return true;
	}

	protected function _updateLineTotalAndSave()
	{
		$this->_updateLineTotal();
		return $this->save();
	}

}

?>