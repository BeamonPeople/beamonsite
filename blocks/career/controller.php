<?php defined('C5_EXECUTE') or die(_("Access Denied."));
	
class CareerBlockController extends BlockController {
	
	protected $btTable = "btCareer";
	protected $btInterfaceWidth = "1000";
	protected $btInterfaceHeight = "700";

	public function getBlockTypeName() {
		return t('Beamon - Karriär');
	}

	public function getBlockTypeDescription() {
		return t('Block för Karriär');
	}
}
