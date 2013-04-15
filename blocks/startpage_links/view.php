<?php defined('C5_EXECUTE') or die(_("Access Denied."));
$file = File::getByID($imageID);
$filePath = $file->getVersion()->getRelativePath();
echo "<div class='competence'>
	<div class='bubble'>";
	echo '<img src="' . $filePath . '" alt="'.$Heading.'"/>' ;
echo "</div>
	<div class='text'>";
	echo "<h2>".$Heading."</h2>";
	echo "<p>".$Text."</p>";
	echo "</div></div>";

?>