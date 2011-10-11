<?php

/**
 * Description of contact
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Contact extends P3\ActiveRecord\Base
{
	public static $_table = 'contacts';

//- Triggers
	protected $_afterCreate = array(
		':_send_email'
	);

//- Validators
	public static $_validatesPresence = array(
		'name',
		'email'
	);

	public static $_validatesEmail = array(
		'email'
	);

//- Protected
	protected function _send_email()
	{
		Mailer::deliver_new_contact($this);
	}
}

?>