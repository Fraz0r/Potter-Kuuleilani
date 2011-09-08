<?php

$map->withOptions(array('controller' => 'pages', 'action' => 'show'), function($page){ 
        $page->connect('/:url-hash');
        $page->root(array('page' => 'url-hash'));
});

?>