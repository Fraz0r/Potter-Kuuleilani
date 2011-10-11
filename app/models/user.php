<?php
/**
 * Description of User
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class User extends \P3\ActiveRecord\Base
{
	public static $_controller = 'users';
	public static $_table = 'users';

	private static $_singleton = null;

//- Validations
	public static $_validatesEmail = array(
		'username'
	);

	public static $_validatesLength = array(
		//'password' => array('min' => '6')
	);

	public static $_validatesPresence = array(
		'username',
		'password'
	);

//- Public
	public function activate()
	{
		$this->active = true;
		return $this->save();
	}

	public function inactivate()
	{
		$this->active = false;
		return $this->save();
	}

	public function validatePassword($password) {
		return $this->password == $this->_passwordCrypt($password) || $this->password == $this->_passwordCrypt($password, true);
	}

	public function resetPassword()
	{
		$new = substr(md5(time().rand(0, 1000)), 0, 7);
		$this->password = $new;
		$this->was_reset = true;
		$this->save();
		Notifier::deliver_password_reset($new);
	}

	public function startSession()
	{
		$_SESSION['token'] = $this->token;
	}

	public function isValid()
	{
		return isset($_SESSION['token']) && $_SESSION->token == $this->token;
	}


//- Protected
	protected function  _insert()
	{
		$this->password = $this->_passwordCrypt($this->password);
		$this->token    = $this->_tokenCrypt($this->password);
		return parent::_insert();
	}

	protected function  _update()
	{
		if($this->fieldChanged('password') || $this->fieldChanged('username')) {
			if($this->fieldChanged('password'))
				$this->password = $this->_passwordCrypt($this->password);

			$this->token    = $this->_tokenCrypt($this->password);
		}
		return parent::_update();
	}


//- Private
	private function _passwordCrypt($str, $old_mode = false) {
		if($old_mode)
			return crypt($str, '$2a$10$'.hash('sha512', $this->username).'$');
		else
			return crypt($str, '$2a$10$'.hash('sha512', $this->application_id.$str).'$');
	}

	public function _tokenCrypt($str) {
		return md5($this->application_id.'#'.$this->username);
	}

//- Finds
	public static function current()
	{
		if(is_null(self::$_singleton))
			self::$_singleton =  isset($_SESSION->token) ? self::find_by_token($_SESSION->token) : false;

		return self::$_singleton;
	}
}
?>
