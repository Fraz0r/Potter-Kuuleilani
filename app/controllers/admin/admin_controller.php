<?php

namespace Admin;

/**
 * Description of admin_controller
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class AdminController extends \ApplicationController
{
	protected static $_requiresLogin = true;
	protected $_layout = 'admin/application.tpl';

	protected function _init()
	{
		parent::_init();

		$this->user = isset($_SESSION->token) && $_SESSION->token == UserSessionsController::AUTH_TOKEN;

		if(static::$_requiresLogin && !$this->user)
			if($_GET['controller'] != 'admin/user_sessions')
				$this->redirect('/admin/login');
	}
}

?>