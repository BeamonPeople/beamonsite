<?php defined('C5_EXECUTE') or die(_("Access Denied."));
	
class StartPageLinksBlockController extends BlockController {
	
	protected $btTable = "btStartPageLinks";
	protected $btInterfaceWidth = "370";
	protected $btInterfaceHeight = "300";

	public function getBlockTypeName() {
		return t('btStartPageLinks');
	}

	public function getBlockTypeDescription() {
		return t('btStartPageLinks');
	}
}
