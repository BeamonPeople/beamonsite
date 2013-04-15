<?php 

defined('C5_EXECUTE') or die("Access Denied.");
$form = Loader::helper('form');
$al = Loader::helper('concrete/asset_library');
$bf = null;

if ($imageID > 0)
{ 
	$bf =File::getById($imageID);
}

?>
<div class="ccm-ui">
	<div class="alert-message block-message info">
		<?php echo t("Select image-icon from file libary, it will be wrapped with a greencircle. Type text in corresponding fields") ?>
	</div>

	<div class='clearfix'>
	<?php
		echo $al->image('ccm-b-file', 'imageID', t('Choose File'), $bf);
	?>
	</div>
	<div class='control-group'>
	<?php
		echo $form->label('Date', t('När hände det?'),array("class"=>"control-label"));
		echo "<div class='controls'>".$form->text('Date',$Date)."</div>"; 
		
	?>
	</div>
	<div class='control-group'>
		<?php
			echo $form->label('Text', t('Vad hände då?'),array("class"=>"control-label"));
			echo "<div class='controls'>".$form->textarea('Text',$Text)."</div>"; 
		?>
	</div>
</div>
