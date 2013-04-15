<?php defined('C5_EXECUTE') or die(_("Access Denied."));
$file = File::getByID($imageID);
$filePath = $file->getVersion()->getRelativePath();
echo "<div class='emphasized-circle'>
	<div class='image'>";
	echo '<img src="' . $filePath . '" alt="'.$Heading.'"/>' ;
echo "</div>
	<div class='text'>";
	echo "<div class='wrap'>";
	echo "<h2>".$Heading."</h2>";
	echo "<p>".$Text."</p>";
	if($linkText != "")
	{
		echo "<a class='green' title='".$linkText."' href='".View::url(Page::getCollectionPathFromID($linkID))."'>".$linkText."</a>";
	}
	echo "</div></div></div>";

?>