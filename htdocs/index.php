<?php
/**
 *   This file is responsible for Booting your application.  Little to no modification
 * should be needed
 */
$root = dirname(dirname(__FILE__));
define("P3\ROOT", $root);
require($root.'/lib/P3/P3.php');

if(!P3::production()) {
	ini_set("display_errors", "true");
	error_reporting(E_ALL);
}

try {
	P3::boot();
} catch(P3\Exception\Base $e) {
	switch ((int)$e->getCode()) {
		case 404:
			header("HTTP/1.0 404 Not Found");
		case 500:
		default:
			var_dump($e);
	}
}

?>
