<?php foreach($products as $product): ?>
<tr>
	<td>
		<img src="<?php echo $product->image->url('small'); ?>" />
	</td>
	<td>
		<?php echo $product->name; ?>
	</td>
	<td>
		<?php echo money_format('%n', $product->price); ?>
	</td>
	<td class="utils">
		<ul>
			<li>
				<a href="admin/products/<?php echo $product->id(); ?>/edit">Edit</a>
			</li>
			<li>
				<a class="delete" href="admin/products/<?php echo $product->id(); ?>">Delete</a>
			</li>
		</ul>
	</td>
</tr>
<?php endforeach; ?>