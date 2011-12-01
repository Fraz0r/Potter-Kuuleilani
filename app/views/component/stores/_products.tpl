<?php 
	$x = 0; 
	$cols = $this->component->getColumnCount();
?>

<div class="row">
<?php foreach($products as $product): ?>
	<?php if($x++ != 0 && $x % $cols == 1): ?>
		</div>
		<div class="row">
	<?php endif; ?>

	<?php $this->render('_product', array('product' => $product)); ?>
<?php endforeach; ?>
</div>