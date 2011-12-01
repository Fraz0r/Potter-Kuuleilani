<h2>Shopping Cart</h2>

<p>Mahalo for viewing our products.  If you have any questions, please feel free to call us at <strong>808-277-8604</strong>.<br />
	We also offer Jan Marini products (please call for pricing and availability)</p>

<div class="form-table">
	<form method="post" action="/cart" class="cart-form">
		<input type="hidden" name="_method" value="put" />

		<?php if(count($cart->line_items)): ?>
			<?php $this->render('_line_items', array('line_items' => $cart->line_items)); ?>
		<?php else: ?>
			<p>You haven't added any items to your cart</p>
		<?php endif; ?>

	</form>
	<div class="button-bar">
		<form method="post" action="/cart/checkout">
			<a href="/our-store.html">Continue Shopping</a>
			<input type="submit" name="commit" style="display: inline-block;" value="Checkout" />
		</form>
	</div>
</div>