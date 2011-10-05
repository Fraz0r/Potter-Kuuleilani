<?php $f = form::forModel(array('admin', $page)); ?>
	<?php $f->labelFor('title'); ?>
	<?php $f->textField('title'); ?>
	<?php $f->submitField('Save', 'Saving'); ?>
<?php $f->close(); ?>