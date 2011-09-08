<?php

$map->withOptions(array('controller' => 'pages', 'action' => 'show'), function($page){ 
        $page->connect('/:url-key');
        $page->root(array('url-key' => 'index'));
});
?>