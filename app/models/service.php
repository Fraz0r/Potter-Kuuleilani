<?php

/**
 * Description of service
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Service extends \P3\ActiveRecord\Base
{
	public static $_table = 'services';

//- Relations
	public static $_belongsTo = array(
		'category' => array(
			'class' => 'ServiceCategory',
			'fk'    => 'service_category_id'
		)
	);

	public static $_hasMany = array(
		'column_values' => array(
			'class' => 'ServiceColumnValue',
			'fk'    => 'service_id'
		)
	);


}

?>