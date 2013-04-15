<?php defined('C5_EXECUTE') or die(_("Access Denied."));
	
class IconTextBlockController extends BlockController {
	
	protected $btTable = "btIconText";
	protected $btInterfaceWidth = "370";
	protected $btInterfaceHeight = "300";

	public function getBlockTypeName() {
		return t('Beamon - Ikontext');
	}

	public function getBlockTypeDescription() {
		return t('Block för text med ikn');
	}
}
