<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
Loader::model('page_list');

class MiniGrid
{
	private $page;
	private $pageList;
	private $emphasizeList;
	private $liList = array();
	private $cssClass = "page-list clearfix";
	private $maxiterations;
	public $pageArray;
	public function __construct($page,$labelBool,$extraArgs = false)
	{
		$this->imgWidth = 186;
		$this->imgHeight = 186;
		if($extraArgs != false)
		{
			$this->argsArray = $extraArgs;
		}
		$this->ih = Loader::helper('image');
		$this->page = $page;
		$this->editMode = $editMode;
		$this->pageList = new PageList();
		$this->pageList->filterByParentID($page->getCollectionID());
		if($extraArgs["emphasize"] == "only")
		{
			$this->pageList->filterByAttribute('DisplayFirstPage', 1);
		}
		else if($extraArgs["emphasize"] == "mix")
			{
				$this->emphasizeList = new PageList();
				$this->emphasizeList->filterByParentID($page->getCollectionID());
				$this->emphasizeList->filterByAttribute('DisplayFirstPage', 1);
				$this->emphasizeList->sortByDisplayOrder();
				$this->emphasizedPages = $this->emphasizeList->get();
			}
		$this->pageList->sortByDisplayOrder();
		$this->pages = $this->pageList->get();



	}
	private function blockImage($_page)
	{
		foreach($_page->getBlocks() as $block)
		{
			if($block->btHandle == "image")
			{
				$_img = $block;
				break;
			}
		}
		if($_img)
		{
			$controller = $_img->getInstance();
			$file = File::getByID($controller->getFileID());
			$_img = $this->ih->getThumbnail($file, $this->imgWidth, $this->imgHeight,true,true);
			//$_ret .= "<img src='".$_img->src."' alt='project-image' height='".$this->imgHeight."' width='".$this->imgWidth."'/>";
			$_ret = $_img->src;
		}
		else
		{
			$_ret = "/themes/beamon/images/project-no-img.png";
		}
		return $_ret;
	}
	private function createProject($_page)
	{
		if($this->editMode)
		{
			$_url = View::url($_page->getCollectionPath())."?type=edit";
		}
		else
		{
			$_url = View::url($_page->getCollectionPath());
		}

		$_ret = "<li>";
		$_ret .="<a href='".$_url;
		$_ret .= "' style='background-image:url(\"";
		$_ret .= $this->blockImage($_page);
		$_ret .= "\")'";
		$_ret .= ">";
		$_ret .= "<div class='inner'><div class='front'>&nbsp;</div>";
		$_ret .= "<div class='back'><span>".$_page->getCollectionName()."</span></div>";
		$_ret .= "</div>";
		$_ret .= "<p class='info'>".$_page->getCollectionName()."</p>";
		$_ret .="</a>";
		$_ret .= "</li>";
		return $_ret;
	}
	private function createLinkBubble($_page,$i)
	{

		if($this->editMode)
		{
			$_url = View::url($_page->getCollectionPath());
		}
		else
		{
			$_url = View::url(Page::getCollectionPathFromID($_page->getAttribute("PageLink")));
		}
		$_ret = "<li id='page-".$_page->getCollectionID()."'";
		$_ret .= " class='bubbleLink'>";
		$_ret .= "<a href='".$_url."'>";
		$_ret .= "<div class='inner'><div class='front'>";
		$_ret .= "<span>".$_page->getAttribute("BubbleHeading");
		$_ret .= "<strong>".$_page->getCollectionName()."</strong>";
		$_ret .= "</span>";
		$_ret .="</div>";
		$_ret .= "<div class='back'><span>"."Läs mer"."</span></div>";
		$_ret .= "</div>";
		$_ret .= "<p class='info'>".$_page->getAttribute("BubbleFooter")."</p>";
		$_ret .="</a>";
		$_ret .= "</li>";
		return $_ret;
	}
	private function createPerson($_page)
	{
		if($this->editMode)
		{
			$_url = View::url($_page->getCollectionPath())."?type=edit";
		}
		else
		{
			$_url = View::url($_page->getCollectionPath());
		}

		$_ret = "<li>";
		$_ret .="<a href='".$_url;
		$_ret .= "' style='background-image:url(\"";
		$_ret .= $this->blockImage($_page);
		$_ret .= "\")'";
		$_ret .= ">";
		$_ret .= "<div class='inner'><div class='front'>&nbsp;</div>";
		$_ret .= "<div class='back'><span>".$_page->getAttribute("person_title")."</span></div>";
		$_ret .= "</div>";
		$_ret .= "<p class='info'>".$_page->getCollectionName()."</p>";
		$_ret .="</a>";
		$_ret .= "</li>";
		return $_ret;
	}
	public function createHTML()

		// Antal visade projekt och personer sätt nedan som $maxiterations. Inte så snyggt och rätt resurskrävdande. Sorry...
		{
		echo "<ul class='page-list mini clearfix'>";
		$i = 0;
		$maxiterations = 1;
		shuffle($this->pages);
		foreach ($this->pages as $page) {
			if ($i < $maxiterations) {
				if ($page->getCollectionTypeHandle() == "project"){
					$maxiterations = 4;
					array_push($this->liList,$this->createProject($page,$i));
				}
				else if($page->getCollectionTypeHandle() == "bubblelink")
						array_push($this->liList,$this->createLinkBubble($page,$i));
					else if($page->getCollectionTypeHandle() == "person")
						{
							$maxiterations = 12;
							array_push($this->liList,$this->createPerson($page,$i));
						}
					else
					{
						echo $page->getCollectionTypeHandle();
					}
				$i++;
				// echo "<li class='".implode(checkSet($page,'TagFilters')," ")."'><a href='".View::url($page->getCollectionPath())."'>".$page->getCollectionName()."</a></li>";
			}

			else break;

		}

		echo implode($this->liList,"");
		echo "</ul>\n";
		return $_ret;

	}



}



?>