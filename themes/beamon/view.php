<?php
$this->inc('analyticstracking.php');	
defined('C5_EXECUTE') or die("Access Denied.");
	$this->inc('elements/header.php');
		$this->inc('elements/navbar.php');
?>


		
<div class="container">
	<div class="row">
		<div class="span12"><?php print $innerContent;?></div>
	</div>
</div>
		
<?php $this->inc('elements/footer.php'); ?>