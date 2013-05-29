<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
$this->inc('elements/navbar.php');
$this->inc('elements/mini_grid.php');
$this->inc('elements/news_lister.php');
?>
<div class="container wrapper">
<div class="row">
	<div class="span10 intro-text">
		<?php
			$a = new Area("Header");
			$a->display($c);
		?>
	</div>
</div>
</div>
<div class="gray-box full">
	<div class="container project-box">
		<div class="row">
			<div class="span3 pull-right">
				<?php
					$a = new Area("Project Info");
					$a->display($c);
				?>
			</div>
			<div class="span9">
				<?php
// amount fångas inte upp av minigrid.php (i Elements/) så sätts därför direkt i createHTML() i minigrid.php
					$_projectPage = Page::getByPath("/projekt");
					$projectLinks = new MiniGrid($_projectPage,true,array(
						"emphasize" => "only",
						"amount" => 4
						)
					);
					$projectLinks->createHTML();
				?>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="span6 news-list">
			<h2 class="subsection-header">Aktuellt</h2>
			<span class="firstpage-news">
			<?php
				$_aktuelltPage = Page::getByPath("/aktuellt");
				$optionsArray = array("page" =>$_aktuelltPage,"amount"=>3,"offset" => 0,"full" => true);
				$optionsArray["edit"] = $c->isEditMode();
				$news = new NewsLister($optionsArray); $news->createHTML();
				echo "<a class='green' title='Alla nyheter' href='".View::url($_aktuelltPage->getCollectionPath())."'>Alla nyheter</a>";
			?>
			</span>
		</div>
		<div class="span6">
			<?php
				$a = new Area("Work at us");
				$a->display($c);
			?>
		</div>
	</div>
</div>	

	<div class="gray-box full">
		<div class="container persons-box">
			<div class="row">
				<div class="span12">
					<?php
						$a = new Area("Persons Info");
						$a->display($c);
					?>
				</div>
			</div>
			<div class="row">
				<div class="span12">
					<?php
// amount fångas inte upp av minigrid.php (i Elements/) så sätts därför direkt i createHTML() i minigrid.php
						$_personPage = Page::getByPath("/medarbetare");
						$personLinks = new MiniGrid($_personPage,true,array(
							"emphasize" => "mix",
							"amount" => 10
							)
						);
						$personLinks->createHTML();
					?>
				</div>
			</div>
		</div>
	</div>
<div class="container">
	<div class="row">
		<div class="span6">
			<?php
				$a = new Area("Consultants Subject");
				$a->display($c);
			?>
		</div>
		<div class="span6">
			<div class="row competences mini">
				<div class="span6">
					<h2 class="subsection-header">Kompetenser</h2>
					<p>Hos Beamon hittar du konsulter som är experter inom ledning, arkitektur, analys, user experience, utveckling och  kvalitet. Hos oss hittar du IT-branschens stjärnor, där värderingar som öppenhet, enkelhet, professionalism och resultat speglar vår vardag. </p>
					<a href="/kompetenser/" title="Kompetenser" class="green">Läs om våra kompetenser</a>
				</div>
				<div class="span6">
					<ul class="competences mini"><li>
							<div class="bubble"><img alt="Strategi" src="/files/8913/5582/3141/strategi.png"></div>
							<p>Strategi</p>
						</li><li>
							<div class="bubble"><img alt="Ledning" src="/files/1813/5582/3142/ledning.png"></div>
							<p>Ledning</p>
						</li><li>
							<div class="bubble"><img alt="Krav" src="/files/9513/5582/3143/krav.png"></div>
							<p>Krav</p>
						</li><li>
							<div class="bubble"><img alt="Arkitektur/Utveckling" src="/files/4013/5582/3144/arkitektur-utveckling.png"></div>
							<p>Arkitektur/ Utveckling</p>
						</li><li>
							<div class="bubble"><img alt="UX/Webb" src="/files/1113/5582/3140/ux-webb.png"></div>
							<p>UX/Webb</p>
						</li><li>
							<div class="bubble"><img alt="QA/Test" src="/files/9713/5582/3141/qa-test.png"></div>
							<p>QA/qa-test</p>
						</li></ul>
				</div>
			</div>
		</div>
	</div>
</div>	
<?php
$this->inc('elements/footer.php'); 
?>
