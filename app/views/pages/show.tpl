<?php
	$title = $page->title;
	
	if(!empty($page->description))
		$meta['description'] = $page->description;
?>
<?php echo $page->parsedBody(); ?>