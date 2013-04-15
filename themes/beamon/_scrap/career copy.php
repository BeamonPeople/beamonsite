<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$html = Loader::helper('html');
$themePath = $this->getThemePath();
$this->addFooterItem($html->javascript($this->getThemePath().'/libs/jquery.masonry.min.js'))."\n";
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

echo '<div class="row career-list"><div class="span12">';
	$a = new Area("Main");
	$a->display($c);

echo '</div>';
echo '</div>';
echo '</div>';

$this->addFooterItem($html->script("\$().ready(function(){\$('.career-list').masonry({itemSelector: '.career',gutterWidth: 40})});"));

$this->inc('elements/footer.php');
?>
