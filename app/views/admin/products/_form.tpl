<table>
	<tbody>
		<tr>
			<th><?php $f->labelFor('name'); ?></th>
			<td><?php $f->textField('name'); ?></td>
		</tr>
		<tr>
			<th><?php $f->labelFor('image'); ?></th>
			<td><?php $f->file('image'); ?></td>
		</tr>
		<tr>
			<th><?php $f->labelFor('price'); ?></th>
			<td><?php $f->textField('price'); ?></td>
		</tr>
		<tr>
			<th><?php $f->labelFor('category'); ?></th>
			<td><?php $f->textField('category'); ?></td>
		</tr>
		<tr>
			<th><?php $f->labelFor('description'); ?></th>
			<td><?php $f->textArea('description'); ?></td>
		</tr>
	</tbody>
</table>
<?php $f->submitField('Add Item'); ?>