<?php

/**
 * Description of service_category
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class ServiceCategory extends P3\ActiveRecord\Base
{
	public static $_table = 'service_categories';

//- Relations
	public static $_hasMany = array(
		'columns' => array(
			'class' => 'ServiceCategoryColumn',
			'fk'    => 'service_category_id'
		),
		'services' => array(
			'class' => 'Service',
			'fk'    => 'service_category_id'
		)
	);
}

?>