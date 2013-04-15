<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$html = Loader::helper('html');
$themePath = $this->getThemePath();

$this->inc('elements/header.php');
$this->inc('elements/navbar.php');
echo '<div class="container wrapper">
	<div class="row">
	<div class="span12"><div class="section-header">';
		$a = new Area("Main");
		$a->display($c);
echo '</div></div>
</div>';

$this->inc('elements/filter_tags.php');

$this->inc('elements/grid_list.php');

$FilterNav = new FilterTags(Page::getCurrentPage(),"TagFilters",array("enable" => true, "edit" => $c->isEditMode()));
echo $FilterNav->createHTML();
$GridList = new GridList(Page::getCurrentPage(),"TagFilters",$c->isEditMode());
echo $GridList->createHTML();
$json = Array(
	"tagData" => $FilterNav->getTags(),
	"editMode" => $c->isEditMode(),
	"defaultPage" => $_GET["page"]);
$this->addFooterItem($html->script("window.DataSettings=".json_encode($json).";"));
$this->addFooterItem($html->javascript($themePath."/".$FilterNav->jsLink()));
echo "</div>";
$this->inc('elements/footer.php');
?>
