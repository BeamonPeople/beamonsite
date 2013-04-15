<?php   
defined('C5_EXECUTE') or die(_("Access Denied."));

class PageListTeasersHelper {
	
	public function getPageTeaser($cObj, $aHandle = 'Main', $maxBlocks = null, $truncateChars = 0, $blockWrapperStart = '', $blockWrapperEnd = '', $ignoreBlockTypes = array('page_list')) {
		$layout_blocks = $this->get_layout_blocks($cObj, $aHandle);
		$nonlayout_blocks = $cObj->getBlocks($aHandle); //Returns blocks in the order they're on the page
		$blocks = array_merge($layout_blocks, $nonlayout_blocks);
		$blocks = $this->remove_excluded_blocks($blocks, $ignoreBlockTypes);
		
		$block_count = count($blocks);
		$maxBlocks = empty($maxBlocks) ? $block_count : $maxBlocks;
		$maxBlocks = ($maxBlocks < $block_count) ? $maxBlocks : $block_count;
		
		$th = Loader::helper('text');
		$teaser = '';
		for ($i = 0; $i < $maxBlocks; $i++) {
			$b = $blocks[$i];
			$bi = $b->getInstance();
			$btHandle = $b->getBlockTypeHandle();
			
			$teaser .= $blockWrapperStart;
			
			if ($truncateChars && ($btHandle == 'content' || $btHandle == 'html')) {
				
				$content = ($btHandle == 'content') ? $bi->getContent() : $bi->content;
				$teaser .= $th->shortenTextWord($content, $truncateChars);
				
			} else {
				
				ob_start();
				$b->display();
				$teaser .= ob_get_clean(); //combines ob_get_contents() and ob_end_clean()
				
			}
			
			$teaser .= $blockWrapperEnd;
		}
		
		return $teaser;
	}
	
	private function get_layout_blocks($cObj, $aHandle) {
		$blocks = array();
		$area = new Area($aHandle);
		$layouts = $area->getAreaLayouts($cObj); //returns empty array if no layouts
		foreach ($layouts as $layout) {
			$maxCell = $layout->getMaxCellNumber();
			for ($i=1; $i<=$maxCell; $i++) {
				$cellAreaHandle = $layout->getCellAreaHandle($i);
				$cellBlocks = $cObj->getBlocks($cellAreaHandle);
				$blocks = array_merge($blocks, $cellBlocks);
			}
		}
		return $blocks;
	}
	
	private function remove_excluded_blocks(&$blocks, $excludeBlockTypes = array()) {
		$keepBlocks = array();
		foreach($blocks as $block) {
			if (array_search($block->getBlockTypeHandle(), $excludeBlockTypes) === false) {
				$keepBlocks[] = $block;
			}
		}
		return $keepBlocks;
	}


	//Modification of code found in concrete/blocks/page_list/controller.php
 	// This function forces the use of our custom RSS "tools" file which provides real content excerpts.
	function getRssUrl($b){
		$uh = Loader::helper('concrete/urls');
		if(!$b) return '';
		$btID = $b->getBlockTypeID();
		$bt = BlockType::getByID($btID);
		$c = $b->getBlockCollectionObject();
		$a = $b->getBlockAreaObject();
		$rssUrl = $uh->getToolsURL('rss', 'page_list_teasers')."?bID=".$b->getBlockID()."&amp;cID=".$c->getCollectionID()."&amp;arHandle=" . $a->getAreaHandle();
		return $rssUrl;
	}
}