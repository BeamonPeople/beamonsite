<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>

<div class="error-wrap">
	<h1 class="error"><?php echo t('Sidan kan inte hittas')?></h1>
	<?php echo t('Det finns inget innehåll på angiven address.')?>
	<?php  if (is_object($c)) { ?>
		<?php  $a = new Area("Main"); $a->display($c); ?>
	<?php  } ?>
</div>