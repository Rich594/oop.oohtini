<?php 
    require_once("header.php"); 

    $figures = new FigureViews($db);
    $action = new ActionFigures($db);
    $count = new Counts($db);

    $seriesname = (isset($_GET['series']) ? $_GET['series'] : null);
    $figures->setSeriesname($seriesname);
    $count->setSeriesname($seriesname);
    $stmt = $action->getFiguresList();
?>

<!-- <div id="loadingMask" style="width: 100%; height: 100%; position: fixed; background: #fff;">Loading...</div> -->

    <div class='grid-container0'>
        <div class="figure_view_title">
            <?php       
                echo $figures->getSeriesname() . " - "; 
                echo $count->countVarOriginBySeries('Figure') . " Figures - "; 
                echo $count->countVarOriginBySeries('Cardback') . " Cardbacks";
            ?>
        </div>
    </div>

        <div class='grid-container1'>
            <div class='header2'>Ref.</div>
            <div class='header2'>Figure Name</div>
        </div>

            <?php while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){ 
                extract($row);
                    $count->setReference($reference);
                    $figures->setReference($reference);
                    $individual_figures = $count->countFigureVariationsBySeries('Figure');
                    $individual_cardbacks = $count->countFigureVariationsBySeries('Cardback');
            ?>
            <div class='grid-container2' id="<?php echo $reference; ?>">
                <div class='header2'><?php echo $reference; ?></div>
                <div class='header1'><?php echo $figurename; ?></div>
                <div class='header6'><span class='plusminus2'>Show (+)</span></div>
            </div>

                <div class='grid-container3' id="<?php echo $reference; ?>">
                    <div id='figures' class='header4'>Figures - <?php echo $individual_figures; ?></div>
                    <div id='carded' class='header4'>Cardbacks - <?php echo $individual_cardbacks; ?></div>
                    <div id='all' class='header6'><span class='plusminus3'>Show (+)</span></div>
                </div>

                    <?php  
                        $stmt2 = $figures->getVariationList();
                            while ($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)){ 
                                extract($row2);
                                if($variation_origin == 'Cardback') {
                                    $vo_key = 'C';
                                    } else {
                                        $vo_key = 'F';
                                    } ?>

                    <div class='grid-container4 <?php echo $variation_origin ?>'>
                        <div class='headervar1'><?php echo $region ?></div>
                        <div class='headervar1'><?php echo $vo_key . "-" . $name ?></div>
                        <div class='headervar2'><span class='plusminus4'>Show (+)</span></div>
                    </div>

        <div class='grid-container5'>
            <div class="interior-header img">
                <div class="headerimage grid-container10">
                    <div class="front">
                        <img id="front<?php echo $reference; echo $pidm;  ?>" onerror="this.src='images/default.png'" class="<?php echo $pidm; echo $reference; ?> responsive2" src="images/<?php echo $image_front ?>">
                            <?php
                                $x=0;
                                $stmt3 = $figures->getVariationFrontDetails($front_view_code_ref);
                                while ($row3 = $stmt3->fetch(PDO::FETCH_ASSOC)){ 
                                extract($row3);
                            ?>
                                    <p id="<?php echo $front_view_code_ref; ?><?php echo $x; ?>" class="var image_tag <?php echo $front_view_code_ref; ?><?php echo $x; ?>">
                                        <a href="#C<?php echo $x; ?>"><?php echo $x +1 ; ?></a></p>
                                            <div id="C<?php echo $front_view_code_ref; ?><?php echo $x; ?>" class="varlink front">
                                                <span class="var-detail-header">Variation <?php echo $x +1; ?></span><hr>
                                                <span class="var-detail"> <?php echo $variation_detail  ?></span><hr>
                                                <span class="var-information"><?php echo $variation_information ?></span>
                                                <span class="test3"><img class="responsive3" src="images/<?php echo $front_view_code_ref. $x?>.jpg" onerror="this.src='images/default2.png'"></span>
                                            </div>
                                                    <?php $x++; ?>
                                                        <?php } ?>
                                                            <div class="newplace front<?php echo $reference; echo $pidm; ?>" id="<?php echo $reference; echo $pidm; ?>"></div>
                                                                <p class="hidelink front"><button>Show Front</button></p>
                    </div>
                </div>
           </div>

           <div class="interior-header img">
                <div class="headerimage grid-container10">
                    <div class="back">
                        <img id="back<?php echo $reference; echo $pidm; ?>" onerror="this.src='images/default.png'" class="<?php echo $pidm; echo $reference; ?> responsive2" src="images/<?php echo $image_back ?>">
                            <?php
                                $x=0;
                                $stmt3 = $figures->getVariationBackDetails($back_view_code_ref);
                                while ($row3 = $stmt3->fetch(PDO::FETCH_ASSOC)){ 
                                extract($row3);
                            ?>
                                    <p id="<?php echo $back_view_code_ref; ?><?php echo $x; ?>" class="var image_tag <?php echo $back_view_code_ref; ?><?php echo $x; ?>">
                                        <a href="#C<?php echo $x; ?>"><?php echo $x +1 ; ?></a></p>
                                            <div id="C<?php echo $back_view_code_ref; ?><?php echo $x; ?>" class="varlink back">
                                                <span class="var-detail-header">Variation <?php echo $x +1; ?></span><hr>
                                                <span class="var-detail"> <?php echo $variation_detail ?></span><hr>
                                                <span class="var-information"><?php echo $variation_information ?></span> 
                                                <span class="test3"><img class="responsive3" src="images/<?php echo $back_view_code_ref. $x?>.jpg" onerror="this.src='images/default2.png'"></span>
                                            </div>
                                                <?php $x++; ?>
                                                    <?php } ?>
                                                        <div class="newplace back<?php echo $reference; echo $pidm; ?>" id="<?php echo $reference; echo $pidm; ?>"></div>
                                                             <p class="hidelink back"><button>Show Reverse</button></p>
                    </div>
                </div>
            </div>

                                <div>
                                <div class="grid-container1a">
                                        <div class="headinfo">Figure</div>
                                        <div class="headtitle"><?php echo $reference . " - " . $figurename; ?></div>
                                        <div class="headinfo">Variation</div>
                                        <div class="headtitle"><?php echo $name; ?></div>
                                        <div class="headinfo">Year</div>
                                        <div class="headtitle">2010</div>
                                        <div class="headinfo">Source</div>
                                        <div class="headtitle"><?php echo $source; ?></div>
                                </div>
                            </div>                       
    </div>
        <?php } ?>
        <?php } ?>

        </div></div>
        <div class="page-end"></div>
     <?php   require_once('footer.php'); ?>