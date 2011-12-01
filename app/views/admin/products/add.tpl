<h1>New Product</h1>

<?php $this->f = \form::forModel(array('admin', $product)); ?>
<?php $this->render('_form'); ?>
<?php $this->f->close(); ?>