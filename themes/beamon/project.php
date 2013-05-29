<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
//$headers = ;
if(($_GET["type"] != "ajax") && ($_GET["type"] != "edit") && !($c->isEditMode()))
{
	$script = "window.location.href = '".View::url(Page::getCollectionPathFromID(Page::getCurrentPage()->getCollectionParentID()))."?page=".Page::getCurrentPage()->getCollectionID()."'";
	$this->addHeaderItem($html->script($script));

}
$headerBlock = new Area("Header");
$MainBlock = new Area("Main");
$imgBlock = new Area('ImageCarousel');

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

if($_GET["type"] == "ajax")
{
echo '<div class="row">
	<div class="span6">';
		if(!$c->isEditMode())
		{
			$arr = $imgBlock->getAreaBlocksArray($c);
			$first = true;
			//echo arr
			if(count($arr) > 0)
			{
				echo "<div id='Pager-".$c->getCollectionID()."' class='carousel slide'><div class='carousel-inner'>";
					foreach($arr as $block)
					{
						echo '<div class="';
						if($first)
						{
							echo "active ";
							$first = false;
						}
						echo 'item">';
						$block->display();
						echo '</div>';

					}
				echo "</div>";
				echo "</div>";
			}
		}
		else
		{
			$imgBlock->display($c);
			echo "<span class='editnote'>Lägg bara till bilder här. Detta blir en bild-carousel.</span>";	
		}

echo '</div>
	<div class="span6">
		<div class="row">
			<div class="span6">';
				$headerBlock->display($c);
		echo '</div>';
			if($tags)
			{
				echo "<div class='span6'>";
					echo "<ul class='filter-list tag-list'>";
					foreach($tags as $tag)
					{
						echo "<li>".$tag."</li>";
					}
					echo "</ul>";
				echo "</div>";
			}
			echo '<div class="span6">';
				$MainBlock->display($c);
			echo '
			</div>
	</div>
	</div>
</div>
';
die();
}

$this->inc('elements/header.php');
$this->inc('elements/navbar.php');
?>
<div class="row">
	<div class="span6">
		<?php
		if(!$c->isEditMode())
		{
			$arr = $imgBlock->getAreaBlocksArray($c);
			$first = true;
			//echo arr
			if(count($arr) > 0)
			{
				echo "<div id='myCarousel' class='carousel slide'><div class='carousel-inner'>";
					foreach($arr as $block)
					{
						echo '<div class="';
						if($first)
						{
							echo "active ";
							$first = false;
						}
						echo 'item">';
						$block->display();
						echo '</div>';

					}
				echo "</div>";
				echo "<a class='carousel-control left' href='#myCarousel' data-slide='prev'>&lsaquo;</a>
    				 <a class='carousel-control right' href='#myCarousel' data-slide='next'>&rsaquo;</a>";
				echo "</div>";
			}
		}
		else
		{
			$imgBlock->display($c);
			echo "<span class='editnote'>Lägg bara till bilder här. Detta blir en bild-carousel.</span>";	
		}
		?>
	</div>
	<div class="span6">
		<div class="row">
			<div class="span6">
				<?php
					$headerBlock->display($c);
				?>
			</div>
			<?php
			if($tags)
			{
				echo "<div class='span6'>";
					echo "<ul class='filter-list tag-list'>";
					foreach($tags as $tag)
					{
						echo "<li>".$tag."</li>";
					}
					echo "</ul>";
				echo "</div>";
			}
			?>
			<div class="span6">
			<?php			
				$MainBlock->display($c);
			?>
			</div>
	</div>
	</div>
</div>

<?php
	$this->inc('elements/footer.php'); 
?>
