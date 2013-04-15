<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
Loader::model('page_list');

class GridList
{
	private $page;
	private $pageList;
	private $liList = array();
	private $cssClass = "page-list clearfix";
	public $pageArray;
	public function __construct($page,$tagKey,$editMode = false)
	{
		$this->img = Loader::helper('image');
		$this->page = $page;
		$this->tagKey = $tagKey;
		$this->editMode = $editMode;
		$this->pageList = new PageList();
		$this->pageList->filterByParentID($page->getCollectionID());
		$this->pageList->sortByDisplayOrder();
		$this->pages = $this->pageList->get();
		$this->imgWidth = 186;
		$this->imgHeight = 186;
		$this->ih = Loader::helper("image");

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
	private function getTagsFromAttribute($_key,$_page)
	{
		if ($attrib = $_page->getAttribute($_key))
		{
			$_ret = [];
			foreach($attrib->getOptions() as $key => $value)
			{
				$_item = array("label" => $value->value, "value" => str_replace("/","-",$value->value));
				array_push($_ret,$_item);
			}

			return $_ret;


		}
		else
		{
			return false;
		}
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
		$_tags = $this->getTagsFromAttribute($this->tagKey,$_page);
		
		$_ret = "<li id='page-".$_page->getCollectionID()."'";
		$_ret .=" class='";
		foreach($_tags as $tag)
		{
			$_ret.= $tag["value"]." ";
		}
		$_ret .="'>";
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
	private function createLinkBubble($_page)
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
		//skum jävla bugg får element att droppa ner utan bilden?????????????????
		//$_ret .= "<img src='"."/themes/beamon/images/project-no-img.png"."' alt='project-image' height='".$this->imgHeight."' width='".$this->imgWidth."'/>";	
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
		$_tags = $this->getTagsFromAttribute($this->tagKey,$_page);
		
		$_ret = "<li id='page-".$_page->getCollectionID()."'";
		$_ret .=" class='";
		foreach($_tags as $tag)
		{
			$_ret.= $tag["value"]." ";
		}
		$_ret .="'>";
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
	{
		echo "<ul class='page-list clearfix first'>";

		foreach ($this->pages as $page)
		{
			if($page->getCollectionTypeHandle() == "project")
				array_push($this->liList,$this->createProject($page));
			else if($page->getCollectionTypeHandle() == "bubblelink")
				array_push($this->liList,$this->createLinkBubble($page));
			else if($page->getCollectionTypeHandle() == "person")
			{
				array_push($this->liList,$this->createPerson($page));
			}
			else
			{
				echo $page->getCollectionTypeHandle();
			}
		//	echo "<li class='".implode(checkSet($page,'TagFilters')," ")."'><a href='".View::url($page->getCollectionPath())."'>".$page->getCollectionName()."</a></li>";
		}
	
		echo implode($this->liList,"");
		echo "</ul></div>\n";
		echo "<div class='ajax-response gray-box full hide'><div class='container'></div></div>";
		echo "<div class='container'><ul class='page-list clearfix second'></ul></div>";
		return $_ret;

	}
}

/*$themePath = $this->getThemePath();


function getOptionValues($_key,$_page)
{
	if ($attrib = $_page->getAttribute($_key))
	{
		return $attrib->getOptions();
	}
	else
		return false;
}
function createJSON($_key,$_page)
{
	$_ret = [];
	foreach (getOptionValues($_key,$_page) as $key => $value)
	{
		$_item = array("label" => $value->value, "value" => str_replace("/","-",$value));
		array_push($_ret,$_item);
	}
	return $_ret;
}
function checkSet($_page,$_key)
{
	$_ret = [];
	foreach (getOptionValues($_key,$_page) as $key => $value)
	{

		array_push($_ret,str_replace("/","-",$value));
	}
	return $_ret;
}
//$this->addFooterItem($html->script("window.TagFilters = ". json_encode(getOptionValues('TagFilters',$c))));
if($c->isEditMode())
{
	$editMode = "true";
}
else
{
	$editMode = "false";	
}
echo "<ul class='filter-list'>";
echo "</ul>";
$page = Page::getCurrentPage();*/



?>