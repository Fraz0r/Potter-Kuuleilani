<?php
KU\Session::start();

$config = KU\Config::singleton();

date_default_timezone_set($config->getValue('app', 'timezone'));
setlocale(LC_MONETARY, $config->getValue('app', 'locale'));

if(!P3::production())
	P3::getLogger()->level(P3\System\Logging\LEVEL_DEBUG);

/* I don't support non-p3 helpers yet.. dont judge me */
include(dirname(__FILE__).'/helpers/application_helper.php');

?>