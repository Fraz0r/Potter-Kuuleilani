<h1>Services Categories</h1>

<div class="table-wrap">
	<div class="table-wrap-inner">
		<table cellspacing="0">
			<thead>
				<tr>
					<th>Title</th>
					<th>Code Key</th>
					<th>&nbsp;</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($service_categories as $service_category): ?>
				<tr>
					<td><?php echo $service_category->title; ?></td>
					<td><?php echo $service_category->name; ?></td>
					<td class="utils">
						<ul>
							<li>
								<a href="/admin/service_categories/<?php echo $service_category->id(); ?>/edit">Edit</a>
							</li>
						</ul>
					</td>
				</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
</div>