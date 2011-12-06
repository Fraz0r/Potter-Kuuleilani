<?php foreach($pages as $page): ?>
<tr class="<?php echo cycle(array('odd', 'even')); ?>">
	<td><?php echo $page->title; ?></td>
	<td><?php echo $page->url_key; ?></td>
	<td class="utils">
		<ul>
			<li>
				<a href="<?php echo '/admin/pages/'.$page->id(); ?>/edit">Edit</a>
			</li>
			<li>
				<a href="<?php echo '/'.$page->url_key; ?>" target="new">View</a>
			</li>
		</ul>
	</td>
</tr>
<?php endforeach; ?>