<?php      
defined('C5_EXECUTE') or die(_("Access Denied."));

class PageListTeasersPackage extends Package {
	
	protected $pkgHandle = 'page_list_teasers';
	protected $appVersionRequired = '5.5';
	protected $pkgVersion = '1.2';
	
	public function getPackageName() {
		return t('Page List Teasers'); 
	}
	
	public function getPackageDescription() {
		return t('Custom template for Page List block (and feed) that displays excerpts of page content instead of descriptions.');
	}

	public function install() {
		parent::install();
	}

}