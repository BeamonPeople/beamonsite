<?php defined('C5_EXECUTE') or die(_("Access Denied."));
$file = File::getByID($imageID);
$filePath = $file->getVersion()->getRelativePath();
echo "<div class='career'>
	<div class='bubble'>";
	echo '<img src="' . $filePath . '" alt="'.$Heading.'"/>' ;
	echo "</div>";
	echo "<div class='text'>";
	echo "<h2>".$Heading."</h2>";
/* 	echo '<time datetime="'.Date("Y-m-d",strtotime($Date)).'">'.Date("d F Y",strtotime($Date)).'</time>'; Används inte för tf*/
	echo "<div class='teaser'";
	echo "<p>".$Teaser."</p>";
	echo "</div>";
	echo "<p>".$Text."</p>";
	echo "";

?>

