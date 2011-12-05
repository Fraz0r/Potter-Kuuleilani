<h2>Please Confirm Your Payment Details</h2>

<table class="vertical">
	<tbody>
	  <tr class="<?php echo cycle(array('odd', 'even')); ?>"><th>Amount</th><td><?php echo money_format('%n', $cart->calculateTotal()); ?></td></tr>
	  <tr class="<?php echo cycle(array('odd', 'even')); ?>"><th>Name</th><td><?php echo $address['name'] ?></td></tr>
	  <tr class="<?php echo cycle(array('odd', 'even')); ?>"><th>Company</th><td><?php echo $address['company'] ?></td></tr>
	  <tr class="<?php echo cycle(array('odd', 'even')); ?>"><th>Address 1</th><td><?php echo $address['address1'] ?></td></tr>
	  <tr class="<?php echo cycle(array('odd', 'even')); ?>"><th>Address 2</th><td><?php echo $address['address2'] ?></td></tr>
	  <tr class="<?php echo cycle(array('odd', 'even')); ?>"><th>City</th><td><?php echo $address['city'] ?></td></tr>
	  <tr class="<?php echo cycle(array('odd', 'even')); ?>"><th>State</th><td><?php echo $address['state'] ?></td></tr>
	  <tr class="<?php echo cycle(array('odd', 'even')); ?>"><th>Country</th><td><?php echo $address['country'] ?></td></tr>
	  <tr class="<?php echo cycle(array('odd', 'even')); ?>"><th>Zip</th><td><?php echo $address['zip'] ?></td></tr>
	</tbody>
</table>

<div class="form-table" style="margin: 1em 0; text-align: right;">
	<form method="get" action="/cart/complete">
		<input type="hidden" name="token" value="<?php echo $_GET['token']; ?>" />
		<input type="hidden" name="payer_id" value="<?php echo $_GET['PayerID']; ?>" />
		<input type="submit" value="Complete Payment" style="display: inline-block;"/>
	</form>
</div>