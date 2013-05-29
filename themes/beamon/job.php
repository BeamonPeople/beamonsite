<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));

if($_GET["type"] != "ajax")
{
$this->inc('elements/header.php');
$this->inc('elements/navbar.php'); 
}
?>
<div class="container wrapper job">
	<article class="row">

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
