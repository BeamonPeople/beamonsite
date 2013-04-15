<?php defined('C5_EXECUTE') or die(_("Access Denied."));
	
class StartPageCircleBlockController extends BlockController {
	
	protected $btTable = "btStartPageCircle";
	protected $btInterfaceWidth = "370";
	protected $btInterfaceHeight = "300";

	public function getBlockTypeName() {
		return t('StartPageCircle');
	}

	public function getBlockTypeDescription() {
		return t('StartPageCircle');
	}
}
