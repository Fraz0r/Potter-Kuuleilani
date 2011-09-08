<?php

/**
 * Description of pages_controller
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class PagesController extends ApplicationController
{
	public function show()
	{
		$this->render(array('text' => 'Hello World'));
	}
}

?>