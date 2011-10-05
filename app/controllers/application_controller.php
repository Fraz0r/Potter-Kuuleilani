<?php

/**
 * Description of application_controller
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class ApplicationController extends P3\ActionController\Base
{
	protected $_layout = 'gazier/application.tpl';

	protected function _init()
	{
		 $this->user = User::current();
		 $this->meta = array();
	}

	protected function add_error($str)
	{
		$_SESSION['error'] = $str;
	}

	protected function add_message($str)
	{
		$_SESSION['message'] = $str;
	}
}

?>