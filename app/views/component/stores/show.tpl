<div id="products">
	<?php if(count($products)): ?>
		<?php $this->render('_products'); ?>
	<?php else: ?>
		<p class="red">We don't currently have any products for sale.  Please check back later.</p>
	<?php endif; ?>
</div>