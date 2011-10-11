<?php

/**
 * Description of mailer
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Mailer extends \P3\ActionMailer\Base
{
	public function deliver_new_contact($contact)
	{
		$this->to = 'kuuleilani8@yahoo.com';
		$this->from = 'info@kuuleilanidayspa.com';
		$this->subject = 'New Contact Form Submitted';

		$this->contact = $contact;
	}

	public function deliver_new_reservation($reservation)
	{
		$this->to = 'kuuleilani8@yahoo.com';
		$this->from = 'info@kuuleilanidayspa.com';
		$this->subject = 'New Contact Reservation Submitted';

		$this->reservation = $reservation;
	}
}

?>