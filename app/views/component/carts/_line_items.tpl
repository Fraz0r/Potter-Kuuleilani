<div class="table-wrap"> 
	<div class="table-wrap-inner form-table"> 
		<table class="cart-table">
			<thead>
				<tr>
					<th class="qty-col">QTY</th>
					<th class="product-col">Product</th>
					<th class="price-col">Price</th>
					<th class="line-price-col">Line Total</th>
				</tr>
			</thead>
			<tbody>
				<?php $total = 0; ?>
				<?php foreach($cart->line_items as $item): ?>
				<tr class="line-item <?php echo cycle(array('odd', 'even')); ?>">
					<td><input type="text" size="2" style="width: 50px;" name="line_items[<?php echo $item->id(); ?>]" value="<?php echo $item->quantity; ?>" /></td>
					<td>
						<p>
							<img src="<?php echo $item->product->image->url('small'); ?>" />
							<span class="name">
								<?php echo $item->product->name; ?>
							</span>
							<br />
							<br />
							<span class="description">
								<?php echo $item->product->description; ?>
							</span>
						</p>
					</td>
					<td><?php echo money_format('%n', $item->product->price); ?></td>
					<td><?php echo money_format('%n', $item->line_total); ?></td>
				</tr>
				<?php $total += $item->line_total; ?>
				<?php endforeach; ?>
			</tbody>
			<tfoot>
				<tr>
					<td>
						<input type="submit" name="commit" style="display: inline-block;" value="Update Cart" />
					</td>
					<td colspan="2"></td>
					<td>
						<?php echo money_format('%n', $total); ?>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</div>