<?php foreach($meta as $k => $v): ?>
	<meta name="<?php echo $k; ?>" content="<?php echo $v; ?>" />
<?php endforeach; ?>

<?php html::head(); ?>