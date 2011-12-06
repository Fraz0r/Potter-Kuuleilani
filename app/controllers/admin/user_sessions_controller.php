<?php

namespace Admin;

/**
 * Description of user_sessions
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class UserSessionsController extends AdminController
{
	const AUTH_SALT = 'thisisverylongonpurposesopplcanthackmystuff';
	const AUTH_HASH = '$2a$10$c7ad44cbad762a5da0a45uODwxiGbrX3IwGAbdE5zfbWRkVmn8TFK';
	const AUTH_TOKEN = '7304buVUBbbVC859CEcnr5WMH';
	// admin : 2011!kuu

	protected static $_requiresLogin = false;

	public function create()
	{
		if($this->_crypt($_POST['username'], $_POST['password']) != self::AUTH_HASH)
			$this->redirect(':back');

		$_SESSION['token'] = self::AUTH_TOKEN;

		$this->redirect('/admin/');
	}

	public function add()
	{
	}

	public function destroy()
	{
		session_destroy();
		$this->redirect(':back');
		exit;
	}

	protected function _init()
	{
	}

	private function _crypt($username, $password)
	{
		return crypt(self::AUTH_SALT.$username.$password.'x5243', '$2a$10$'.hash('sha512', $username).self::AUTH_SALT.'$');
	}
}
?>
