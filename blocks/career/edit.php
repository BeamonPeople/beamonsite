<?php 

defined('C5_EXECUTE') or die("Access Denied.");
$form = Loader::helper('form');
$al = Loader::helper('concrete/asset_library');
$dp = Loader::helper('form/date_time');
$bf = null;
Loader::element('editor_init');
Loader::element('editor_config');
Loader::element('editor_controls');

if ($imageID > 0)
{ 
	$bf =File::getById($imageID);
}

?>
<div class="ccm-ui">
	<div class="alert-message block-message info">
		<?php echo t("Välj rätt ikonbild från filhanteraren. Teasertext syns endast på Jobbsidan. Full text på jobbannonsen.") ?>
	</div>

	<div class='clearfix'>
	<?php
		echo $al->image('ccm-b-file', 'imageID', t('Choose File'), $bf);
	?>
	</div>
<!--
		<div class='clearfix'>
	<?php
		echo $form->label('Date', t('Datum'),array("class"=>"control-label"));
		echo $dp->Date('Date', $dp->translate($Date), true);
		
	?>
	</div>
-->
	<div class='control-group'>
		<?php
			echo $form->label('Heading', t('Heading'),array("class"=>"control-label"));
			echo "<div class='controls'>".$form->text('Heading',$Heading)."</div>"; 
		?>
	</div>
	<div class='control-group'>
		<?php
			echo $form->label('Teaser', t('Teaser'),array("class"=>"control-label"));
			echo "<div class='controls'>".$form->textarea('Teaser',$Teaser)."</div>"; 
		?>
	</div>
	<div class='control-group'>
		<?php
			echo $form->label('text', t('Text'),array("class"=>"control-label"));
			echo "<div class='controls'>".$form->textarea('Text',$Text,array("class"=>"ccm-advanced-editor advancedEditor"))."</div>"; 
		?>
	</div>
</div>
