<?php defined('C5_EXECUTE') or die(_("Access Denied."));
	
class MilestoneItemBlockController extends BlockController {
	
	protected $btTable = "btMilestoneItem";
	protected $btInterfaceWidth = "370";
	protected $btInterfaceHeight = "300";

	public function getBlockTypeName() {
		return t('Beamon Tidslinje - Milstolpe');
	}

	public function getBlockTypeDescription() {
		return t('Nöt till Beamon i ett nötskal. Liten information puff.');
	}
}
