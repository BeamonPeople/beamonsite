<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));

if($_GET["type"] != "ajax")
{
$this->inc('elements/header.php');
$this->inc('elements/navbar.php');
}
?>
<div class="container wrapper">
	<article class="row">
		<div class="span12">
		<div class="news">
			<h1><?php echo $c->getCollectionName();?></h1>
			<p><time datetime="<?php echo $c->getCollectionDatePublic(); ?>"><?php echo $c->getCollectionDatePublic("d F Y"); ?></time></p>
			<?php $a = new Area("Main");
					$a->display($c);
				//$newsLister = new NewsLister();
			?>
		</div>
		</div>
	</article>
</div>
<?php
if($_GET["type"] != "ajax")
{
$this->inc('elements/footer.php');
}
?>
