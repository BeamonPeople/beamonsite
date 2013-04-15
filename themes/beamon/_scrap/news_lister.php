<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
Loader::model('page_list');

class NewsLister
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
			echo '<article><h2>'.$page->getCollectionName().'</h2><time datetime="'.$page->getCollectionDatePublic().'">'.$page->getCollectionDatePublic("d F Y").'</time>';
			foreach($page->getBlocks() as $block)
			{
				$block->display();
			}
			echo "</article>";
		}	
		if($this->options["desc"])
		{
			echo '<article><h3>'.$page->getCollectionName().'</h3><time datetime="'.$page->getCollectionDatePublic().'">'.$page->getCollectionDatePublic("d F Y").'</time></article>';
			echo "<p>".$page->getCollectionDescription()."<a href='".View::url($page->getCollectionPath())."' title='Läs mer'>"."Läs mer"."</a></p>";
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