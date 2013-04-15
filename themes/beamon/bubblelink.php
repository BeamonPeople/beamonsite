<?php defined('C5_EXECUTE') or die(_("Access Denied."));
defined('C5_EXECUTE') or die(_("Access Denied."));
$html = Loader::helper('html');
$themePath = $this->getThemePath();

$this->inc('elements/header.php');
$this->inc('elements/navbar.php');
?>
<ul class="page-list">
	<li class="bubbleLink">
		<a href="#">
			<p class="desc">
			<?php 
			$c->getAttribute("BubbleHeading");
			$c->getCollectionName();
			?>
			</p>
		<p><?php $c->getAttribute("BubbleFooter");?></p>
	</a>
	</li>
</ul>
<?php
	
$this->inc('elements/footer.php');
?>