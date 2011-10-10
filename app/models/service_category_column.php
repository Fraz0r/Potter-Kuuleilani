<?php


/**
 * Description of service_category_column
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class ServiceCategoryColumn extends P3\ActiveRecord\Base
{
	public static $_table = 'service_category_columns';

//- Relations
	public static $_belongsTo = array(
		'category' => array(
			'class' => 'ServiceCategory',
			'fk'    => 'service_category_id'
		)
	);

	public static $_hasMany = array(
		'values' => array(
			'class' => 'ServiceColumnValue',
			'fk'    => 'service_category_column_id'
		)
	);
}

?>