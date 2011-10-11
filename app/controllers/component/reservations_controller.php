<?php

namespace Component;
use       Reservation;

/**
 * Description of reservations_controller
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class ReservationsController extends \P3\ActionController\Base
{
	public function create()
	{
		$this->reservation = new Reservation($_POST['reservation']);

		$this->reservation->save();

		$this->redirect('/thank-you.html');
	}
}

?>