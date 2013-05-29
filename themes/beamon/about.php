<?php 
$this->inc('analyticstracking.php');
?>
<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('elements/header.php');
$this->inc('elements/navbar.php');
?>
<div class="container wrapper">
	<div class="row">
		<div class="span6 pull-right"> 
			<div class="emphasized-circle black">
				<div class="image">
				<?php
					$a = new Area("BlackCircleImage");
					$a->display($c);
				?>
				</div>
				<div class="text">
					<div class="wrap">
					<?php
						$a = new Area("BlackCircleText");
						$a->display($c);
					?>
					</div>
				</div>
		</div>
	</div>
	<div class="span5"> 
		<?php
			$a = new Area("Main");
			$a->display($c);
		
		?>
	</div>
	</div>
</div>
<div class="gray-box full">
	<div class="container nutshell-box">
		<div class="row">
			<div class="span12">
			<?php
				$a = new Area("Nutshell Info");
				$a->display($c);
			?>
			</div>
		</div>
		<div class="row">
			<div class="span12">
			<?php
				$a = new Area("Nutshell");
				$a->display($c);
			?>	
			</div>
		</div>
	</div>
</div>
<div class="container milestone-box">
	<div class="row">
		<div class="span12">
			<?php
				$a = new Area("Milestone Info");
				$a->display($c);
			?>
		</div>
	</div>
	<div class="row">
		<div class="span12">
			<?php
				$a = new Area("Milestones");
				$a->display($c);
			?>
		</div>
	</div>
</div>
<?php
$this->inc('elements/footer.php'); 
?>
