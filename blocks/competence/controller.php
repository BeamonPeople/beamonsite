<?php defined('C5_EXECUTE') or die(_("Access Denied."));
	
class CompetenceBlockController extends BlockController {
	
	protected $btTable = "btCompetence";
	protected $btInterfaceWidth = "370";
	protected $btInterfaceHeight = "300";

	public function getBlockTypeName() {
		return t('Kompetens');
	}

	public function getBlockTypeDescription() {
		return t('Block för kompetens');
	}
}
