<?php

$map->withOptions(array('namespace' => 'admin'), function($admin){
	$admin->resources('pages');
	$admin->resources('products');
	$admin->connect('/login', array('controller' => 'user_sessions', 'action' => 'login'));
	$admin->connect('/logout', array('controller' => 'user_sessions', 'action' => 'destroy'));
	$admin->root(array('controller' => 'dashboards', 'action' => 'show'));
});

$map->withOptions(array('namespace' => 'component', 'prefix' => ''), function($com){
	$com->resources('contacts');
	$com->resources('reservations', array('as' => 'com_reservations')); // to avoid conflict

	$cart = $com->resource('cart', array('only' => array('show', 'update')));
	$cart->resources('line_items', array('only' => array('create', 'delete')));

	$com->connect('/cart/checkout', array('controller' => 'carts', 'action' => 'checkout'), 'post');
	$com->connect('/cart/thank-you', array('controller' => 'carts', 'action' => 'thank_you'), 'get');
});

$map->withOptions(array('controller' => 'pages', 'action' => 'show'), function($page){ 
        $page->connect('/:url-key');
        $page->root(array('url-key' => 'index'));
});

?>