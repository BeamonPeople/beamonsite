<?php defined('C5_EXECUTE') or die(_("Access Denied."));
$html = Loader::helper('html');


$themePath = $this->getThemePath();
/*Libs*/
	/*twitter bootstrap*/
		$this->addHeaderItem('<meta name="viewport" content="width=device-width, initial-scale=1.0">');
		$this->addHeaderItem($html->css($themePath."/css/main.css"));
		$this->addHeaderItem($html->css($themePath."/libs/bootstrap/css/bootstrap-responsive.css"));
		$this->addHeaderItem($html->css($themePath."/libs/bootstrap/css/bootstrap.css"));
		
		$this->addFooterItem($html->javascript($themePath."/js/site.js"));
		$this->addFooterItem($html->javascript($themePath."/libs/bootstrap/js/bootstrap.min.js"));
		

		
$GLOBALS['imgs'] = $themePath."/images";

?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="edge">
<?php 
//pollyfillz
Loader::element('header_required');

echo "<!--[if IE 7]>"."\n";
echo $html->css($this->getThemePath().'/css/ie7.css')."\n";
echo $html->javascript($this->getThemePath().'libs/html5shiv.js')."\n";
//echo $html->javascript($themePath."/libs/css3-mediaqueries.min.js")."\n";
echo "<![endif]-->"."\n";




?>	
<!-- Site Header Content //-->

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-12423733-5']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<link rel="shortcut icon" href="/favicon.ico" />

</head>
<body>