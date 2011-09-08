<?php

/**
 * Description of application_controller
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class ApplicationController extends P3\ActionController\Base
{
	protected $_layout = 'application.tpl';

	protected function _init()
	{
		 $this->user = User::current();
		 $this->meta = array();
	}
}

?>