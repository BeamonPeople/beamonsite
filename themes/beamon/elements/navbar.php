<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
?>
<header>
	<div class="beamon-green-bg ticker full">
			<?php
				$a = new GlobalArea("Ticker");
				$a->display();
			?>
		</div>

	<nav class="container">

			<a href="<?php echo $this->url('')?>"><img class="beamon-logo" src="<?php echo $GLOBALS['imgs']?>/BeamonLoggaStor.png" alt="Beamon Logo"/></a>
				<div class="navbar pull-right">
					<div>
				      	<div class="container">
						<a class="menu-icon btn-navbar btn collapsed" data-toggle="collapse" data-target=".nav-collapse">
							Meny
			        	</a>
							<?php
								echo '<div class="nav-collapse collapse nav_collapse_custom" >';
							    $nav = BlockType::getByHandle('autonav');
							    $nav->controller->orderBy = 'display_asc';
							    $nav->controller->displayPages = 'top'; 
							    $nav->controller->displaySubPages = 'none';
							    $nav->render('view');

							    echo '</div>';
							?>
						
			          </div>
					</div>
			</div>
		</nav>
</header>