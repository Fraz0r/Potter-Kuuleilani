<!DOCTYPE html>
<html>
	<head>
		<base href="/" />
		<link rel="stylesheet" href="css/gazier/template.css" />
		<link rel="stylesheet" href="css/admin/base.css" />
		<link rel="stylesheet" href="css/south-street/jquery-ui-1.8.16.custom.js" />
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
		<script type="text/javascript" src="js/application.js"></script>
		<script type="text/javascript" src="js/tiny_mce/tiny_mce_dev.js"></script>
		<script type="text/javascript">
			tinyMCE.init({
				mode: 'specific_textareas',
				editor_selector: 'mceEditor',
				theme: 'advanced',
				plugins : "autolink,lists,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

				// Theme options
				theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
				theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
				theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
				theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage",
				theme_advanced_toolbar_location : "top",
				theme_advanced_toolbar_align : "left",
				theme_advanced_statusbar_location : "bottom",
				theme_advanced_resizing : true,
			});
		</script>
		<title>Awesome Admin</title>
	</head>
	<body>
		<header>
			<nav>
				<a href="admin/pages">Pages</a>
				<a href="admin/service_categories">Services</a>
				<a href="admin/products">Products</a>
			</nav>
		</header>
		<section>
			<?php echo $content; ?>
		</section>
		<footer>
			Copyright &copy; 2011. I Am Awesome Productions.
		</footer>
	</body>
</html>