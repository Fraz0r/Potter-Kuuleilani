<?php

namespace KU;

/**
 * Description of Gateway
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 */
class Gateway extends \P3\Merchant\Billing\Gateway\PayPalExpress
{
	protected static $_conf;
	protected static $_instance;

	public static function singleton()
	{
		if(!isset(self::$_instance))
			self::$_instance = new self(self::_getConf());

		return self::$_instance;
	}

//- Private Static
	private static function _getConf()
	{
		if(!isset(self::$_conf))
			self::_loadConf();

		return self::$_conf;
	}

	private static function _loadConf()
	{
		$config = new \P3\Config\Parser();
		$config->read(\P3\ROOT.'/config/paypal.ini');

		self::$_conf = $config->getSection(static::$gateway_mode == 'test' ? 'sandbox' : \P3::getEnv());
	}
}

?>
