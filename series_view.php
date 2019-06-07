<?php require_once("header.php"); 

$record = new SeriesViews($db);
$stmt = $record->getSeriesList();
$count = new Counts($db);

?>

<div class="series-box">

    <?php   while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){ 
                    extract($row);
                        $total_figures = $count->countVarOriginBySeries($seriesname, 'Figure');
                        $total_cardbacks = $count->countVarOriginBySeries($seriesname, 'Cardback');
    ?>
        <a href="figure_view.php?series=<?php echo $seriesname; ?>">
            <div class="series-container">
                <span class="seriesdisplay1"><?php echo $seriesname; ?></span>
                <img class="iconphoto responsive" src="images/<?php echo $series_image; ?>" alt=""><br>
                <span class='seriesdisplay5'>
                    <?php  ?> Figures <?php echo $total_figures; ?> - 
                    <?php  ?> Cardbacks <?php echo $total_cardbacks; ?></span>
                </span>
            </div>
        </a> 
        <?php } ?>    
</div>

<?php include("footer.php"); ?>