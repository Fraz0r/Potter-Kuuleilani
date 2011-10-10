<?php $f = form::forModel(array('component', $reservation)); ?>
<table class="form-table">
	<tbody>
		<tr>
			<td style="width:49.5%;">
				<?php $f->labelFor('service_id', 'Choose Service:'); ?>
				<?php $f->collectionSelect('service_id', $services, 'name'); ?>
			</td>
			<td style="width:49.5%">
				<?php $f->labelFor('num_adults', 'No. of adults:'); ?>
				<?php $f->select('num_adults', $component->numAdultOptions(), array('blankOption' => false, 'style' => 'width: 70px;')); ?>
			</td>
		</tr>
		<tr>
			<td>
				<?php $f->labelFor('email', 'Your email address:'); ?>
				<?php $f->textField('email'); ?>
			</td>
			<td class="no-full">
				<?php $f->labelFor('service_date', 'Service Date:'); ?>
				<?php $f->dateSelect('service_date', array('start_year' => ($cy = date('Y')), 'end_year' => $cy + 1)); ?>
			</td>
		</tr>
	</tbody>
</table>
<div class="reservation-note">
	<div style="float: right;" class="form-table">
		<?php $f->submitField('Send now', 'Sending...'); ?>
	</div>
	<p>Please note this is not an actual reservation, but only a request for one.<br /><strong>We will contact you for a confirmation</strong> shortly after.  Thank you!</p>
</div>
<?php $f->close(); ?>