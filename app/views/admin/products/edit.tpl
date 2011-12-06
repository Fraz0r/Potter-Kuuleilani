<h1>Edit: <?php echo $product->name; ?></h1>
<img src="<?php echo $product->image->url('small'); ?>" />

<?php $this->f = \form::forModel(array('admin', $product)); ?>
<?php $this->render('_form'); ?>
<?php $this->f->submitField('Update Item'); ?>
<?php $this->f->close(); ?>