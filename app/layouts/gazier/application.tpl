<!DOCTYPE html>
<!--[if lt IE 7 ]><html lang=en-us class="no-js ie6"><![endif]--> 
<!--[if IE 7 ]><html lang=en-us class="no-js ie7"><![endif]--> 
<!--[if IE 8 ]><html lang=en-us class="no-js ie8"><![endif]--> 
<!--[if (gte IE 9)|!(IE)]><!--> <html lang=en-us class=no-js> <!--<![endif]-->
<head>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<title><?php if(isset($title)) echo $title.' | '; ?>Kuuleilani Day Spa</title>
		<?php $this->render('shared/_head'); ?>
	</head>
	<body id="<?php echo $_GET['url-key']; ?>" class="<?php echo canRenderSidebar() ? 'twocol' : 'onecol'; ?>">
		<div id="page-wrap">
			<div id="page">
				<div id="head-con">
					<div id="head">
						<h1><a href="/" title="Kuuleilani Day Spa"><img id="logo" src="/images/logo.png" /></a></h1>

						<div id="contact">
							<p id="phone">
								Contact us directly: <span class="emph">808-277-8604</span>
							</p>
							<p id="map">
								1600 Kapiolani Blvd, <a href="http://maps.google.com/maps?q=1600+Kapiolani+Blvd,+Suite+224,+Honolulu,+HI+96813&hl=en&sll=37.0625,-95.677068&sspn=56.59387,135.263672&vpsrc=0&hnear=1600+Kapiolani+Blvd+%23224,+Honolulu,+Hawaii+96814&t=m&z=17" target="_blank" class="emph">View on Map</a>
							</p>
						</div>
					</div>
				</div>
				<div id="menu-con">
					<?php menu('main'); ?>
				</div>
				<div id="banner-con">
					<?php if($_GET['url-key'] != 'index'): ?>
						<div id="banner" class="interior"></div>
					<?php else: ?>
						<?php KU\Component::render('slideshow display'); ?>
						<div id="banner" class="home">
							<ul>
								<li class="reservations">
									<a href="/reservations.html"></a>
								</li>
								<li class="services">
									<a href="/services.html"></a>
								</li>
								<li class="promotions">
									<a href="/monthly-specials.html"></a>
								</li>
							</ul>
						</div>
					<?php endif; ?>
				</div>
				<div id="content-con">
					<div id="content">
						<?php $this->render('shared/_sidebar'); ?>
						<div id="component">
							<?php echo $content; ?>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
		<div id="footer-con">
			<div id="footer">
				<?php menu('main'); ?>
				<p id="address">
					Kuuleilani Day Spa LLC<br />
					1600 Kapiolani Blvd, Suite 224, Honolulu, HI 96813<br />
					Phone: 808-277-8604<br />
					Email: <a href="mailto:kuuleilani8@yahoo.com">kuuleilani8@yahoo.com</a>
				</p>
				<div id="social">
					<p>
						Follow us on: <a id="facebook" href="http://www.facebook.com/kuuleilanidayspalomilomi" target ="_blank">Facebook</a><a id="twitter" href="http://twitter.com/#!/kuuleilanispahi" target ="_blank">Twitter</a>
					</p>
				</div>
				<p id="syndicate">&copy; <?php echo date("Y"); ?> Kuuleilani Day Spa</p>
			</div>
		</div>
		<script type="text/javascript" src="/js/jquery-validation/lib/jquery.js"></script>
		<script type="text/javascript" src="/js/jquery.validate.js"></script>
		<script type="text/javascript" src="/js/application.js"></script>
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
	</body>
</html>