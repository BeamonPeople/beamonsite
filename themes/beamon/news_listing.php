<?php 
$this->inc('analyticstracking.php');
defined('C5_EXECUTE') or die(_("Access Denied."));
$hh = Loader::helper('html');
$this->inc('elements/news_lister.php');
$this->addFooterItem($html->javascript($this->getThemePath().'/libs/jquery.masonry.min.js'))."\n";
$this->addFooterItem($html->javascript($this->getThemePath().'/libs/jquery.infinitescroll.min.js'))."\n";
$amount = 6;

if($_GET["type"] == "ajax")
{
		$news = new NewsLister(array("page" =>$c,"amount"=>$_GET["amount"],"offset" => $_GET["offset"],"full"=>true));
		$news->createHTML();	
}
else
{
	$this->inc('elements/header.php');
	$this->inc('elements/navbar.php');
	
	
	$offset = intval(($_GET["ccm_paging_p"]*$amount)-$amount);
	$offset = ($offset > 0 ) ? $offset : 0;
	echo '<div class="container wrapper news-list news-list-full"><div class="row"><div class="span12">';
			$news = new NewsLister(array("page" =>$c,"amount"=>$amount,"offset" => $offset,"outputJS" => true,"full"=>true));
			$news->createHTML();
			$news->pageList->displayPaging();
		echo '</div></div></div>';

	

	$json = array("amount" => $amount, "offset" => $offset);
	$this->addFooterItem($html->script("window.DataSettings=".json_encode($json).";"));
	$this->addFooterItem($html->javascript($this->getThemePath()."/js/news_listing.js"));
	$this->inc('elements/footer.php');
}
?>
