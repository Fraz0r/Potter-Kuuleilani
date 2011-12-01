<div id="slider">
	<div id="slider-display">
		<?php foreach($slides as $s): ?>
		<?php echo html::_t('img', array_merge($this->component->getDimensions(), array('src' => $s))); ?>
		<?php endforeach; ?>
	</div>
</div>