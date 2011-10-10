<?php

/**
 * Description of service_column_value
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class ServiceColumnValue extends P3\ActiveRecord\Base
{
	public static $_table = 'service_column_values';

//- Relations
	public static $_belongsTo = array(
		'service' => array(
			'class' => 'Service',
			'fk'    => 'service_id'
		),
		'column' => array(
			'class' => 'ServiceCategoryColumn',
			'fk'    => 'service_category_column_id'
		)
	);
}

?>