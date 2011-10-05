<?php

function menu($key)
{
	static $_cache = array();

	if(!isset($_cache[$key]))
		$_cache[$key] = Menu::find_by_token($key);

	if(!$_cache[$key])
		throw new KU\Exception('Unkown menu \'%s\', cannot render', array($key), 500);

	$ret = html::_t('ul', array(
		'class' => 'p3cms-menu',
		'id'    => $key.'-menu'
	));

	$x = 0;
	if(0 < ($c = count($_cache[$key]->menu_items)))
		foreach($_cache[$key]->menu_items as $i)
			$ret .= '<li id="item-'.$i->id().'" class="'.($x++ == 0 ? 'first' : ($x == $c ? 'last' : '')).'"><a href="'.$i->path().'"><span>'.$i->display.'</span></a></li>';

	$ret .= '</ul>';

	echo $ret;
}

function canRenderSidebar($key = null)
{
	if(is_null($key))
		$key = $_GET['url-key'];

	return !in_array($_GET['url-key'], array('index', 'beauty-tips', 'our-store'));
}

?>