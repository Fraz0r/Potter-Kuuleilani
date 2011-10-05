<?php

$map->withOptions(array('namespace' => 'admin'), function($admin){
	$admin->resources('pages');
	$admin->connect('/login', array('controller' => 'user_sessions', 'action' => 'login'));
	$admin->connect('/logout', array('controller' => 'user_sessions', 'action' => 'destroy'));
	$admin->root(array('controller' => 'dashboards', 'action' => 'show'));
});

$map->withOptions(array('controller' => 'pages', 'action' => 'show'), function($page){ 
        $page->connect('/:url-key');
        $page->root(array('url-key' => 'index'));
});

?>