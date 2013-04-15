<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
Loader::model('page_list');

class CareerLister
{
	public $pageList;
	private $options;
	public function __construct($options)
	{
		$this->options = $options;
		$this->pageList = new PageList();
		$this->pageList->filterByParentID($options["page"]->getCollectionID());
		$this->pageList->sortByDisplayOrder();
		$this->pages = $this->pageList->get($options["amount"],$options["offset"]);
	}
	private function createNewsItem($page)
	{
		if($this->options["edit"])
		{
			echo "<a href='".View::url($page->getCollectionPath())."' title='edit'>";
		}
		if($this->options["full"])
		{
			foreach($page->getBlocks() as $block)
			{
				$block->display();
			}
			echo "<p class='teaser'>"."<a href='".View::url($page->getCollectionPath())."' title='Läs mer'>"."Läs mer"."</a></p></div></div>";

			
		}	
		if($this->options["desc"])
		{
			
			echo "<p class='teaser'>".$page->getCollectionDescription()."<a href='".View::url($page->getCollectionPath())."' title='Läs mer'>"."Läs mer"."</a></p>";
		}
		if($this->options["edit"])
		{
			echo "</a>";
		}
		//print_r($page->getBlocks());
	}
	public function createHTML()
	{
		if(count($this->pages) == 0 )
			echo 0;
		else
		{
			foreach ($this->pages as $page)
			{	
				$this->createNewsItem($page);
			}	
		}
	}
}

?>