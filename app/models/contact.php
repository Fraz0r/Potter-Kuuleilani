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
		//':_send_emails'
	);

//- Validators
	public static $_validatesPresence = array(
		//'name',
		//'email'
	);

//- Protected
	protected function _send_emails()
	{
		Mailer::deliver_new_contact($this);
		Mailer::deliver_contact_thanks($this);
	}
}

?>