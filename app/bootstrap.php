<?php
KU\Session::start();

$config = KU\Config::singleton();

date_default_timezone_set($config->getValue('app', 'timezone'));
setlocale(LC_MONETARY, $config->getValue('app', 'locale'));

?>