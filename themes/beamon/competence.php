<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
$html = Loader::helper('html');
$themePath = $this->getThemePath();

$this->inc('elements/header.php');
$this->inc('elements/navbar.php');

echo '<div class="container wrapper">';
echo '<div class="row">
	<div class="span12">
	<div class="section-header">';
		$a = new Area("Header");
		$a->display($c);
echo '</div></div>
</div>';
echo '<div class="row competences">';
	$a = new Area("Main");
	$a->display($c);

echo '</div>';
echo '</div>';
$this->inc('elements/footer.php');
?>
