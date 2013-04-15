<?php 

defined('C5_EXECUTE') or die("Access Denied.");
$form = Loader::helper('form');
$al = Loader::helper('concrete/asset_library');
$bf = File::getByID($imageID);
$formPageSel = Loader::helper('form/page_selector');

?>
<div class="ccm-ui">
	<div class="alert-message block-message info">
		<?php echo t("Block för circle formad bild med tillhörande paragraf. Optional sidlänk därunder.") ?>
	</div>

	<div class='clearfix'>
	<?php
		echo $al->image('ccm-b-file', 'imageID', t('Choose File'), $bf);
	?>
	</div>
	<div class='control-group'>
		<?php
			echo $form->label('Heading', t('Heading'),array("class"=>"control-label"));
			echo "<div class='controls'>".$form->text('Heading',$Heading)."</div>"; 
		?>
	</div>
	<div class='control-group'>
		<?php
			echo $form->label('Text', t('Text'),array("class"=>"control-label"));
			echo "<div class='controls'>".$form->textarea('Text',$Text)."</div>"; 
		?>
	</div>
	<div id="ccm-autonav-page-selector">
	<?php
		$cpo = Page::getByID($linkID);
		if (is_object($cpo)) {
			print $formPageSel->selectPage('linkID', $linkID);
		}
		else
		{
			echo $formPageSel->selectPage('linkID');
		}
	?>
	</div>
		<div class='control-group'>
		<?php
			echo $form->label('linkText', t('Länk text'),array("class"=>"control-label"));
			echo "<div class='controls'>".$form->text('linkText',$linkText)."</div>"; 
		?>
	</div>
</div>


