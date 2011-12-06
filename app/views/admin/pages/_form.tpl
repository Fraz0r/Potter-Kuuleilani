<?php $f = form::forModel(array('admin', $page)); ?>
	<?php $f->labelFor('title'); ?>
	<?php $f->textField('title'); ?>
	<br />
	<?php $f->labelFor('description'); ?>
	<?php $f->textArea('description'); ?>
	<br />
	<?php $f->textArea('body', array('class' => 'mceEditor')); ?>
	<br />
	<?php $f->submitField('Save', 'Saving...', array('class' => 'ui-button')); ?>
<?php $f->close(); ?>