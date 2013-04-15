<?php  defined('C5_EXECUTE') or die("Access Denied.");

//Permissions Check
$vnh = Loader::helper('validation/numbers');
if($_GET['bID'] && $_GET['cID'] && $vnh->integer($_GET['bID']) && $vnh->integer($_GET['cID'])) {
	
	$c = Page::getByID($_GET['cID']);
	
	if (is_object($c) && !$c->isError()) {
		
		$a = Area::get($c, $_GET['arHandle']);
		$b = Block::getByID($_GET['bID'], $c, $a);
		$controller = new PageListBlockController($b);
		
		$teaserBlockCount = ($controller->truncateSummaries ? 1 : null);
		$teaserTruncateChars = ($controller->truncateSummaries ? $controller->truncateChars : 0);
		$plth = Loader::helper('page_list_teasers', 'page_list_teasers');
		$rssUrl = $plth->getRssUrl($b);
		
		$bp = new Permissions($b);
		if ($bp->canRead() && $controller->rss) {
			
			$pages = $controller->getPages();
			$nh = Loader::helper('navigation');
			$th = Loader::helper('text');
			
			header('Content-type: text/xml');
			echo "<" . "?" . "xml version=\"1.0\"?>\n";
			?>
			
			<rss version="2.0">
				<channel>
					<title><?php  echo $controller->rssTitle?></title>
					<link><?php  echo BASE_URL.$rssUrl?></link>
					<description><?php  echo $controller->rssDescription?></description>
					<?php  foreach ($pages as $page) {
						$title = $th->entities($page->getCollectionName());
						$url = BASE_URL . $nh->getLinkToCollection($page);
						$teaser = $plth->getPageTeaser($page, 'Main', $teaserBlockCount, $teaserTruncateChars);
						$date = date('D, d M Y H:i:s T', strtotime($page->getCollectionDatePublic()));
						?>
						<item>
							<title><?php  echo $title; ?></title>
							<link><?php  echo $url; ?></link>
							<description><![CDATA[<?php  echo $teaser; ?>]]></description>
							<pubDate><?php  echo $date; ?></pubDate>
						</item>
					<?php  } ?>
				</channel>
			</rss>

		<?php  } else {
			$v = View::getInstance();
			$v->renderError(t('Permission Denied'), t("You don't have permission to access this RSS feed"));
			exit;
		}
	}

} else {
	echo t("You don't have permission to access this RSS feed");
}
exit;
