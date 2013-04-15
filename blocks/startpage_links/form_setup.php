<?php 

defined('C5_EXECUTE') or die("Access Denied.");
$form = Loader::helper('form');
$al = Loader::helper('concrete/asset_library');

$bf = File::getByID($imageID);

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
			echo $form->label('Heading', t('Heading'),array("class"=>"control-label"));
			echo "<div class='controls'>".$form->text('Heading',$controllerObj->Heading)."</div>"; 
		?>
	</div>
	<div class='control-group'>
		<?php
			echo $form->label('text', t('Text'),array("class"=>"control-label"));
			echo "<div class='controls'>".$form->textarea('text',$controllerObj->text)."</div>"; 
		?>
	</div>

</div>


