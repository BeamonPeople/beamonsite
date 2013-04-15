<?php defined('C5_EXECUTE') or die(_("Access Denied."));
$file = File::getByID($imageID);
$filePath = $file->getVersion()->getRelativePath();
echo "<div class='nutshell-nut'>
	<div class='bubble'>";
	echo '<img src="' . $filePath . '" alt="'.$Heading.'"/>' ;
echo "</div>
	<div class='text'>";
	echo "<p>".$Label."</p>";
	echo "<p class='big'>".$Text."</p>";
	echo "</div></div>";

?>