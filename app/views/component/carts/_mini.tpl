<div id="cart-mini">
	<h3>My Cart</h3>

	<table>
		<tbody>
			<?php $total = 0; ?>
			<?php foreach($cart->line_items as $item): ?>
			<tr>
				<td><?php echo $item->quantity; ?> - </td>
				<td><?php echo $item->school->name; ?></td>
				<td><?php echo money_format('%n', $item->line_total); ?></td>
			</tr>
			<?php $total += $item->line_total; ?>
			<?php endforeach; ?>
		</tbody>
		<tfoot>
			<tr>
				<th>&nbsp;</th>
				<th>Total: </th>
				<td><?php echo money_format('%n', $total); ?></td>
			</tr>
		</tfoot>
	</table>
	<form method="get" action="/cart">
		<input type="submit" value="Checkout" />
	</form>
</div>