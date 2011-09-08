<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<title><?php if(isset($title)) echo $title.' | '; ?>Kuuleilani Day Spa</title>
		<?php $this->render('shared/_head'); ?>
	</head>
	<body>
		<?php menu('main'); ?>
		<?php echo $content; ?>
	</body>
</html>
