<?php $f = form::forModel(array('component', $contact), array('id' => 'contact-form', 'class' => 'validate')); ?>
<table class="form-table">
	<tbody>
		<tr>
			<td style="width:49.5%;">
				<?php $f->labelFor('name', 'Your name (required):'); ?>
				<?php $f->textField('name'); ?>
			</td>
			<td style="width:49.5%;">
				<?php $f->labelFor('email', 'Your email (required):'); ?>
				<?php $f->textField('email'); ?>
			</td>
		</tr>
		<tr>
			<td>
				<?php $f->labelFor('category', 'Category:'); ?>
				<?php $f->select('category', $this->component->getCategoryOptions()); ?>
			</td>
			<td>
				<?php $f->labelFor('subject', 'Subject:'); ?>
				<?php $f->textField('subject'); ?>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<?php $f->labelFor('message', 'Message'); ?>
				<?php $f->textArea('message'); ?>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>
				<?php $f->submitField('Submit message', null, array('style' => 'float: right;')); ?>
			</td>
		</tr>
	</tbody>
</table>
<?php $f->close(); ?>