<?php foreach($meta as $k => $v): ?>
	<meta name="<?php echo $k; ?>" content="<?php echo $v; ?>" />
<?php endforeach; ?>
	<meta charset="utf-8" />
	<meta name="google-site-verification" content="SmY3QFlUB5ZE7iKpQbQe-rzCAtiEkTaxJ1-Nrhtc34I" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;" />

<?php html::head(); ?>

<link rel="stylesheet" href="/css/reset.css" />
<link rel="stylesheet" href="/css/html5.css" />
<link rel="stylesheet" href="/css/gazier/template.css" />
<!--[if lt IE 7 ]>
<script src="http://ajax.googleapis.com/ajax/libs/chrome-frame/1/CFInstall.min.js"></script>
<script>
		CFInstall.check({
				onmissing: function(){window.location.href = "/ie6"}
		});
</script>
<![endif]-->


<!--[if lte IE 8 ]>
		<script src="/js/selectivizr-min.js?v=1"></script>
<![endif]-->



<script src="/js/modernizr.js"></script>