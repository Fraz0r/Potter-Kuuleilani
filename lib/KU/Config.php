<?php

namespace KU;

/**
 * Description of Config
 *
 * @author Tim Frazier <tim.frazier at gmail.com>
 * @package KU
 * @version $Id$
 */
class Config extends \P3\Config\Parser
{
	private static $_instance;

	public static function singleton()
	{
		if(is_null(self::$_instance)) {
			self::$_instance = new self;
			self::$_instance->read(array(\P3\ROOT.'/config/default.ini'));
		}

		return self::$_instance;
	}
}
?>