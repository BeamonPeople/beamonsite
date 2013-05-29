<?php //
//$this->inc('analyticstracking.php');
//?>
<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
$html = Loader::helper('html');
$themePath = $this->getThemePath();
$this->addFooterItem($html->javascript($this->getThemePath().'/libs/jquery.masonry.min.js'))."\n";
$this->inc('elements/header.php');
$this->inc('elements/navbar.php');
$this->inc('elements/career_lister.php');
$amount = 99;

echo '<div class="container wrapper">';
echo '<div class="row">
    <div class="span12">
    <div class="section-header">';
$a = new Area("Header");
$a->display($c);
echo '</div></div></div></div>';


?>


<div class="container wrapper">
	<div class="row careers">
        <div class="span12">
        <div id="shuffle">
            <?php
            $_aktuelltPage = Page::getByPath("/karriar");
            $optionsArray = array("page" =>$_aktuelltPage,"amount"=>99,"offset" => 0,"full" => true);
            $optionsArray["edit"] = $c->isEditMode();
            $news = new CareerLister($optionsArray); $news->createHTML();
            ?>
        </div>
        </div>
    </div>
</div>

    <?php

    $this->addFooterItem($html->script("\$().ready(function(){\$('#shuffle').masonry({itemSelector: '.career',gutterWidth: 40})});"));

    $this->inc('elements/footer.php');

    ?>
<!--
<?php 
	$CareerPage = Page::getByPath("/karriar");
	$offset = intval(($_GET["ccm_paging_p"]*$amount)-$amount);
	$offset = ($offset > 0 ) ? $offset : 0;
	echo '<div class="container wrapper news-list news-list-full"><div class="row careers"><div class="span12">123456789';
			$news = new CareerLister(array("page" =>$CareerPage,"amount"=>$amount,"offset" => $offset,"outputJS" => true,"full"=>true));
			$news->createHTML();
			$news->pageList->displayPaging();
		echo '</div></div></div>';

	

	$json = array("amount" => $amount, "offset" => $offset);
	$this->addFooterItem($html->script("window.DataSettings=".json_encode($json).";"));
	$this->addFooterItem($html->javascript($this->getThemePath()."/js/news_listing.js"));
	$this->inc('elements/footer.php');
	?>
-->