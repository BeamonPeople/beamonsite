<?php defined('C5_EXECUTE') or die(_("Access Denied."));
$ih = Loader::helper('image');
$file = File::getByID($imageID);
$image = $ih->getThumbnail($file,188,188,true);
echo "<div class='milestone'><div class='image'>";
	echo '<img src="' . $image->src . '" alt="'.$Heading.'"/>' ;
echo "</div><div class='text'>";
	echo "<p class='big'>".$Date."</p>";
	echo "<p >".$Text."</p>";
echo "</div></div>";

?>