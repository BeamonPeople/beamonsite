<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$form = Loader::helper('form');
Loader::element('editor_init');
Loader::element('editor_config');
Loader::element('editor_controls');

?>
<div class="ccm-ui">
	<div class='control-group'>
		<?php
			echo $form->label('Label', t('Label'),array("class"=>"control-label"));
			echo "<div class='controls'>".$form->text('Label',$Label)."</div>"; 
		?>
	</div>
	<div class='control-group'>
		<?php
			echo $form->label('Css', t('Ikon typ'),array("class"=>"control-label"));
			$arr = array(
				'animal' => 'animal',
				'book' => 'book',
				'eat' => 'eat',
				'clock' => 'clock',
				'drink' => 'drink',
				'location' => 'location',
				'mail' => 'mail',
				'movie' => 'movie',
				'phone' => 'phone',
				'time' => 'time',
				'trip' => 'trip');
			echo "<div class='controls'>".$form->select('Css', $arr, $Css)."</div>";
		?>
	</div>
	<div class='control-group'>
		<?php
			echo $form->label('Text', t('Text'),array("class"=>"control-label"));
			echo "<div class='controls'>".$form->textarea('Text',$Text,array("class"=>"ccm-advanced-editor advancedEditor"))."</div>"; 
		?>
	</div>

</div>
