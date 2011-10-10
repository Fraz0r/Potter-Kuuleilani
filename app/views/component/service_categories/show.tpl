<div class="service-table-wrap">
	<div class="service-table-wrap-inner">
		<table cellpadding="0" cellspacing="0" border="0">
			<thead>
				<tr>
					<th class="first">Service</th>
					<?php foreach($columns as $col): ?>
						<th><?php echo $col; ?></th>
					<?php endforeach; ?>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="<?php echo count($columns) + 1; ?>">
						<p>*Prices are per service/subject to change</p>
					</td>
				</tr>
			</tfoot>
			<tbody>
				<?php $this->x = 0; ?>
				<?php $this->render('_service', array('collection' => array('services' => $service_category->services))); ?>
			</tbody>
		</table>
	</div>
</div>