<?php 
$this->inc('analyticstracking.php');
defined('C5_EXECUTE') or die(_("Access Denied."));
//$headers = ;
if(($_GET["type"] != "ajax") && ($_GET["type"] != "edit") && !($c->isEditMode()))
{
	$script = "window.location.href = '".View::url(Page::getCollectionPathFromID(Page::getCurrentPage()->getCollectionParentID()))."?page=".Page::getCurrentPage()->getCollectionID()."'";
	$this->addHeaderItem($html->script($script));

}
$headerBlock = new Area("Header");
$MainBlock = new Area("Main");
$SideBlock = new Area("Side");
$imgBlock = new Area('ImageCarousel');
$img = Loader::helper('image');
$Blocks = array("Shuffle"=>array(),"Display"=>array());
foreach($MainBlock->getAreaBlocksArray($c) as $Block)
{
	if($Block->getBlockTypeObject()->btHandle == "icon_text")
	{
		array_push($Blocks["Shuffle"], $Block);
	}
	else
	{
		array_push($Blocks["Display"], $Block);
	}
}

function getOptionValues($_key,$_page)
{
	$attrib = $_page->getAttribute($_key);
	if ($attrib)
	{
		$_ret = [];
		foreach($attrib->getOptions() as $key => $value)
		{	
			array_push($_ret,$value->value);
		}
		return $_ret;
	}
	else
		return false;
}
$tags = getOptionValues('TagFilters',$c);


if(!($_GET["type"] == "ajax"))
{
	$this->inc('elements/header.php');
	$this->inc('elements/navbar.php');
	echo '<div class="container">';
}
?>
<div class="row person">
	<div class="span4">
		<?php
		if(!$c->isEditMode())
		{
			if($imgBlock->getAreaBlocksArray($c)[0])
			{
				$controller = $imgBlock->getAreaBlocksArray($c)[0]->getInstance();
				$tmb = $img->getThumbnail(File::getByID($controller->getFileID()), 400, 400,true,true);
				echo '<img class="coworker-image" src="'.$tmb->src.'" width="'. $tmb->width.'" height="'. $tmb->height."' alt='". $c->getCollectionName() .'"/>';
			}
		}
		else
		{
			$imgBlock->display($c);
			echo "<span class='editnote'>Lägg bara till bilder här. Detta blir en bild-carousel.</span>";	
		}
		?>
	</div>
	<div class="span8 text">
		<div class="row">
			<div class="span4">
				<?php
					echo "<h1>".$c->getCollectionName()."</h1>";
					echo "<h2 class='title'>".$c->getAttribute("person_title")."</h2>";
				?>
			</div>
			<?php
			if($tags)
			{
				echo "<div class='span4'>";
					echo "<ul class='filter-list tag-list'>";
					foreach($tags as $tag)
					{
						echo "<li>".$tag."</li>";
					}
					echo "</ul>";
				echo "</div>";
			}
			?>
		</div>
		<div class="row">
			<div class="span4">
			<?php
			if($c->isEditMode())
			{
				$MainBlock->display($c);
			}
			else
			{
				$shuff = $Blocks["Shuffle"];
				shuffle($shuff);
				for($i=0;$i<(count($shuff) <3 ? count($shuff) : 3);$i++)
				{
					$shuff[$i]->display();
				}
				foreach($Blocks["Display"] as $block)
				{
					$block->display();
				}
			}
			?>
			</div>
			<div class="span4">
			<?php
				$SideBlock->display($c);
			?>
			</div>
</div></div>
</div>
<?php
if(!($_GET["type"] == "ajax"))
{
	echo '</div>';
	$this->inc('elements/footer.php'); 
}
?>
