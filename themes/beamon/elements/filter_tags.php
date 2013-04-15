<?php
	defined('C5_EXECUTE') or die(_("Access Denied."));
	class FilterTags
	{
		private $page;
		private $attribKey;
		public $tags;
		function __construct($page,$attribKey)
		{
			$this->page = $page;
			$this->attribKey = $attribKey;
			$this->jsonBool = $jsonBool;
			$this->tags = $this->getTagsFromAttribute($this->attribKey);
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
		public function jsLink()
		{
			return "/js/ajaxListing.js";
		}
		public function getTags()
		{
			return $this->tags;
		}
		public function createHTML()
		{
			return "<ul class='filter-list'></ul>";
		}
	}
?>