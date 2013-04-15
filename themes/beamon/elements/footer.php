<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
?>
<footer class="full">
<div id="map-canvas" class="map-bg full"></div>
<div class="container">
	<div class="row">
		<div class="span4"> 
			<?php
				$a = new GlobalArea("FooterLeft");
				$a->display();
			?>
		</div>
		<div class="span4 hidden-phone">
			<?php
				$a = new GlobalArea("FooterMid");
				$a->display();
			?>
		</div>
		<div class="span4 company-name">
			<img src="<?php echo $GLOBALS['imgs']?>/beamonLogo.png" alt="Beamon Logo"/>
		</div>
	</div>
</div>
</footer>
<?php
	$html = Loader::helper('html');
	$themePath = $this->getThemePath();
	$this->addFooterItem('<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD9QVBKUcNa8rAcvruDRKNXblcSrO7PKws&sensor=false" type="text/javascript"></script>');
	Loader::element('footer_required');
?>

</body>
</html>
