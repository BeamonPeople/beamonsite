<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$options = $_optArray("page" =>$c,"amount"=>1,"offset" => 0,"ajax" => true);

?>

<div class="container wrapper">
	<?php 
		$news = new NewsLister($options);
		$news->createHTML();
	?>
</div>