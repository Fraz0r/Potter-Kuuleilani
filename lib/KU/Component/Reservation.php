<?php

namespace KU\Component;

/**
 * Description of Reservation
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Reservation extends Base
{
//- Public
	public function __construct()
	{
		parent::__construct(array('view_dir' => 'reservations'));
	}

	public function form()
	{
		$this->reservation = new \Reservation(array('service_date' => date('Y-m-d')));
		$this->services    = \Service::all();
	}

//- View Helper Methods
	public function numAdultOptions()
	{
		$range = \number::range(1, 10);

		return array_combine($range, $range);
	}
}

?>
