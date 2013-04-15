<?php
	defined('C5_EXECUTE') or die(_("Access Denied."));
	class ListItem
	{
		private $page;
		private $attribKey;
		public $tags;
		public $texts = array();
		function __construct($page)
		{
			$this->page = $page;
			$this->attribKey = $attribKey;
			$this->tags = $this->getTagsFromAttribute($this->attribKey);
			$this->texts["Header"] = $this->page->getCollectionName();
			$this->image = $this->getImage();
		}
		private function getImage()
		{
			foreach ($this->page->GetBlocks() as $block)
			{
				print_r($block);
			}
		}
		private function getTagsFromAttribute($_key)
		{
			if ($attrib = $this->page->getAttribute($_key))
			{
				$_ret = [];
				foreach($attrib->getOptions() as $key => $value)
				{
					$_item = array("label" => $value->value, "value" => str_replace("/","-",$value));
					array_push($_ret,$_item);
				}
				return $_ret;
			}
			else
			{
				return false;
			}
		}
	}
	class Person extends ListItem
	{
		function __construct($page)
		{
			parent::__construct($page);
		}
		public function renderHTML()
		{

		}
	}
?>