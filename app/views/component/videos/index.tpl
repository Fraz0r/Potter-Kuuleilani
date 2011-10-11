<div id="videos">
	<?php $x = 1; ?>

	<?php foreach($videos as $video): ?>
		<?php $mod = $x++ % 2; ?>

		<?php if($mod == 1): ?>
			<div class="video-row clearfix">
		<?php endif; ?>
		<div class="video <?php echo $mod ? 'first' : 'last'; ?>">
			<?php echo $video->youtube_embed; ?>
			<div class="description"><p><?php echo $video->description; ?></p></div>
		</div>
		<?php if($mod != 1): ?>
			</div>
		<?php endif; ?>
	<?php endforeach; ?>
</div>