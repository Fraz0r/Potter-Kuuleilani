<div class="product">
	<img src="<?php echo $product->image->url('thumb'); ?>" />

	<div class="properties">
		<div class="name-category">
			<div class="name"><?php echo $product->name; ?></div>
			<?php /*
			<div class="category"><?php echo $product->category; ?></div>
			 */ ?>
		</div>

		<div class="description-price">
			<div class="description"><?php echo $product->description; ?></div>
		</div>

		<div class="add-link">
			<form method="post" action="/cart/line_items">
				<input type="hidden" name="line_item[product_id]" value="<?php echo $product->id(); ?>" />
				<input type="hidden" name="line_item[quantity]" value="1" />
				<button class="add-to-cart" type="submit">
					<?php echo money_format('%n', $product->price); ?>
					<img src="/images/ico/add_to_cart.jpg" alt="Add To Cart" align="top" />
				</button>
			</form>
		</div>
	</div>
</div>