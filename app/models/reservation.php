<?php

/**
 * Description of reservation
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Reservation extends \P3\ActiveRecord\Base
{
	public static $_table = 'reservations';

//- Triggers
	protected $_afterCreate = array(
		':_send_email'
	);

//- Validators
	public static $_validatesPresence = array(
		'email'
	);

	public static $_validatesEmail = array(
		'email'
	);

//- Protected
	protected function _send_email()
	{
		Mailer::deliver_new_reservation($this);
	}
}

?>
