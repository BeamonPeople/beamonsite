<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
$html = Loader::helper('html');
$themePath = $this->getThemePath();
$this->addFooterItem($html->javascript($this->getThemePath().'/libs/jquery.masonry.min.js'))."\n";
$this->inc('elements/header.php');
$this->inc('elements/navbar.php');
$this->inc('elements/career_lister.php');
echo '<div class="container wrapper">';
echo '<div class="row">
    <div class="span12">
    <div class="section-header">';
$a = new Area("Header");
$a->display($c);
echo '</div></div>
</div>';

echo '<div class="row career-list"><div class="span12">';
$a = new Area("Main");
$a->display($c);

echo '</div>';
echo '</div>';
echo '</div>';

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">


    <div class="container">
        <div class="row careers">
                <?php
                $_aktuelltPage = Page::getByPath("/karriar");
                $optionsArray = array("page" =>$_aktuelltPage,"amount"=>99,"offset" => 0,"full" => true);
                $optionsArray["edit"] = $c->isEditMode();
                $news = new CareerLister($optionsArray); $news->createHTML();
                
                ?>
           
            </div>
    </div>
    
    <?php

    $this->addFooterItem($html->script("\$().ready(function(){\$('.career-list').masonry({itemSelector: '.career',gutterWidth: 40})});"));

    $this->inc('elements/footer.php');
    ?>
