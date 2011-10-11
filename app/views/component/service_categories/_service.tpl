<?php $class = $this->x++ % 2 == 1 ? 'even' : 'odd'; ?>
<tr class="<?php echo $class; ?>">
	<td class="first"><?php echo $service->name; ?></td>
	<?php foreach($columns as $col_id => $col_name): ?>
		<td><?php echo isset($values[$col_id][$service->id()]) ? money_format('%n', $values[$col_id][$service->id()]) : 'x'; ?></td>
	<?php endforeach; ?>
</tr>