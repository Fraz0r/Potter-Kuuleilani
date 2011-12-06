<h1>Edit: <?php echo $service_category->title; ?></h1>

<div class="table-wrap">
	<div class="table-wrap-inner">
		<table cellspacing="0">
			<thead>
				<tr>
					<th class="first">Service</th>
					<?php foreach($columns as $column): ?>
						<th><?php echo $column; ?></th>
					<?php endforeach; ?>
				</tr>
			</thead>
			<tbody>
				<?php foreach($service_category->services as $service): ?>
				<tr>
					<td class="first"><?php echo $service->name; ?></td>
					<?php foreach($columns as $col_id => $col_name): ?>
						<?php $value = isset($values[$col_id][$service->id()]) ? $values[$col_id][$service->id()] : false; ?>
						<td>
							<?php if(!$value): ?>
								<input type="text" name="services[<?php echo $service->id(); ?>][<?php echo $col_id; ?>]" />
							<?php else: ?>
								<input type="text" name="service_column_value[<?php echo $value->id(); ?>]" value="<?php echo $value->value; ?>" />
							<?php endif; ?>
						</td>
					<?php endforeach; ?>
				</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
</div>