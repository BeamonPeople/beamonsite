<?php defined('C5_EXECUTE') or die(_("Access Denied."));
	
class NutshellItemBlockController extends BlockController {
	
	protected $btTable = "btNutShellItem";
	protected $btInterfaceWidth = "370";
	protected $btInterfaceHeight = "300";

	public function getBlockTypeName() {
		return t('Beamon Nötskal - Nöt');
	}

	public function getBlockTypeDescription() {
		return t('Nöt till Beamon i ett nötskal. Liten information puff.');
	}
}
