<?php  defined('C5_EXECUTE') or die(_("Access Denied."));
$teaserBlockCount = ($controller->truncateSummaries ? 1 : null);
$teaserTruncateChars = ($controller->truncateSummaries ? $controller->truncateChars : 0);
$plth = Loader::helper('page_list_teasers', 'page_list_teasers');
$rssUrl = $plth->getRssUrl($b);
$th = Loader::helper('text');
//Note that $nh (navigation helper) is already loaded for us by the controller (for legacy reasons)
?>

<div class="ccm-page-list">

	<?php  foreach ($pages as $page):
		$title = $th->entities($page->getCollectionName());
		$url = $nh->getLinkToCollection($page);
		$target = ($page->getCollectionPointerExternalLink() != '' && $page->openCollectionPointerExternalLinkInNewWindow()) ? '_blank' : $page->getAttribute('nav_target');
		$target = empty($target) ? '_self' : $target;
		$teaser = $plth->getPageTeaser($page, 'Main', $teaserBlockCount, $teaserTruncateChars);
		?>
		
		<h3 class="ccm-page-list-title">
			<a href="<?php  echo $url; ?>" target="<?php  echo $target; ?>"><?php  echo $title; ?></a>
		</h3>
		<div class="ccm-page-list-description">
			<?php  echo $teaser; ?>
		</div>
		
	<?php  endforeach; ?>


	<?php  if ($showRss): ?>
		<div class="ccm-page-list-rss-icon">
			<a href="<?php  echo $rssUrl; ?>" target="_blank"><img src="<?php  echo $rssIconSrc; ?>" width="14" height="14" alt="<?php  echo t('RSS Icon'); ?>" title="<?php  echo t('RSS Feed'); ?>" /></a>
		</div>
		<link href="<?php  echo BASE_URL.$rssUrl; ?>" rel="alternate" type="application/rss+xml" title="<?php  echo $rssTitle; ?>" />
	<?php  endif; ?>

</div><!-- end .ccm-page-list -->


<?php  if ($showPagination): ?>
	<div id="pagination">
		<div class="ccm-spacer"></div>
		<div class="ccm-pagination">
			<span class="ccm-page-left"><?php  echo $paginator->getPrevious('&laquo; ' . t('Previous')); ?></span>
			<?php  echo $paginator->getPages(); ?>
			<span class="ccm-page-right"><?php  echo $paginator->getNext(t('Next') . ' &raquo;'); ?></span>
		</div>
	</div>
<?php  endif; ?>
