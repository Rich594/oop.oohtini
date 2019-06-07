<?php 

require_once("header.php"); 

$record = new FigureViews($db);
$stmt = $record->getFiguresList();

$count = new Counts($db);

$seriesname = (isset($_GET['series']) ? $_GET['series'] : null);
$total_figures = $count->countVarOriginBySeries($seriesname, 'Figure');
$total_cardbacks = $count->countVarOriginBySeries($seriesname, 'Cardback');



?>

<!-- <div id="loadingMask" style="width: 100%; height: 100%; position: fixed; background: #fff;">Loading...</div> -->

    <div class='grid-container0'>
        <div class="figure_view_title">
<?php       
            echo $seriesname . " - "; 
            echo $total_figures . " Figures - "; 
            echo $total_cardbacks . " Cardbacks";
?>
        </div>    
    </div>
    <div class='grid-container1'>
        <div class='header2'>Ref.</div>
        <div class='header2'>Figure Name</div>
    </div>

    <?php   while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){ 
                    extract($row);

            $individual_figures = $count->countFigureVariationsBySeries('Figure', $seriesname, $reference);
            $individual_cardbacks = $count->countFigureVariationsBySeries('Cardback', $seriesname, $reference);

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

    $stmt2 = $record->getVariationList($seriesname, $reference);
    
       while ($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)){ 
        extract($row2);

        if($variation_origin == 'Cardback') {
            $vo_key = 'C';
    } else {
        $vo_key = 'F';
    }          ?>

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
                                $stmt3 = $record->getVariationFrontDetails($front_view_code_ref);
                                while ($row3 = $stmt3->fetch(PDO::FETCH_ASSOC)){ 
                                extract($row3);
                            ?>
                                    <p id="<?php echo $front_view_code_ref; ?><?php echo $x; ?>" class="var image_tag <?php echo $front_view_code_ref; ?><?php echo $x; ?>">
                                        <a href="#C<?php echo $x; ?>"><?php echo $x +1 ; ?></a></p>
                                            <div id="C<?php echo $front_view_code_ref; ?><?php echo $x; ?>" class="varlink front"><span class="var-detail-header">Variation <?php echo $x +1; ?></span><hr><span class="var-detail"> <?php echo $variation_detail  ?></span><hr><span class="var-information"><?php echo $variation_information ?><span></div>
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
                                $stmt3 = $record->getVariationBackDetails($back_view_code_ref);
                                while ($row3 = $stmt3->fetch(PDO::FETCH_ASSOC)){ 
                                extract($row3);
                            ?>
                                    <p id="<?php echo $back_view_code_ref; ?><?php echo $x; ?>" class="var image_tag <?php echo $back_view_code_ref; ?><?php echo $x; ?>">
                                        <a href="#C<?php echo $x; ?>"><?php echo $x +1 ; ?></a></p>
                                            <div id="C<?php echo $back_view_code_ref; ?><?php echo $x; ?>" class="varlink back"><span class="var-detail-header">Variation <?php echo $x +1; ?></span><hr><span class="var-detail"> <?php echo $variation_detail ?></span><hr><span class="var-information"><?php echo $variation_information ?></span> </div>
                                                <?php $x++; ?>
                                                    <?php } ?>
                                                        <div class="newplace back<?php echo $reference; echo $pidm; ?>" id="<?php echo $reference; echo $pidm; ?>"></div>
                                                             <p class="hidelink back"><button>Show Reverse</button></p>
                    </div>
                </div>
            </div>

            <div>
            <div class="grid-container1a">
                <div class="grid-container2a">
                    <div class="headtitle">Year</div>
                    <div class="headinfo">2010</div>
                </div>
                <div class="grid-container2a">
                    <div class="headtitle">Source</div>
                    <div class="headinfo">And Almost Rhubarb Wins</div>
                </div>
                <div class="grid-container2a">
                    <div class="headtitle">Test</div>
                    <div class="headinfo">Test</div>
                </div>
                <div class="grid-container2a">
                    <div class="headtitle">Test</div>
                    <div class="headinfo">Test</div>
                </div>
            </div>
        </div>                       



         
             
    </div>


        <?php } ?>
        <?php } ?>

        </div></div>


        <script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}


 $(document).ready( function() {   
    
    $(document).on('click', 'input[name="ownorwant"]', function(){
    if($(this).val() == 'Own'){
        $(this).closest('.grid-container5').find('.hidecarded').removeClass( 'hidecarded' )
        $(this).closest('.grid-container5').find('.hideloose').removeClass( 'hideloose' )
        $(this).closest('.grid-container5').find('.block2').empty();
    }else {
        $(this).closest('.grid-container5').find('.hidecarded').removeClass( 'hidecarded' )
        $(this).closest('.grid-container5').find('.hideloose').removeClass( 'hideloose' )
        $(this).closest('.grid-container5').find('.block1').empty();
    }
});
 
$(document).on('click', 'input[name="packaging"]', function(){
    if($(this).val() == 'Loose'){
        $(this).closest('.grid-container5').find('.hidecomplete').removeClass( 'hidecomplete' )
        $(this).closest('.grid-container5').find('.hideincomplete').removeClass( 'hideincomplete' )
        $(this).closest('.grid-container5').find('.block4').empty();
    }else{
        $(this).closest('.grid-container5').find('.hidepunched').removeClass( 'hidepunched' )
        $(this).closest('.grid-container5').find('.hideunpunched').removeClass( 'hideunpunched' )
        $(this).closest('.grid-container5').find('.field20').css({"grid-area": "5 / 4 / span 1 / span 1"})
        $(this).closest('.grid-container5').find('.field21').css({"grid-area": "5 / 5 / span 1 / span 1"})
        $(this).closest('.grid-container5').find('.field16').css({"grid-area": "6 / 4 / span 1 / span 1"})
        $(this).closest('.grid-container5').find('.field17').css({"grid-area": "6 / 5 / span 1 / span 1"})
        $(this).closest('.grid-container5').find('.block3').empty();
    }
});

$(document).on('click', 'input[name="accessories"]', function(){
    if($(this).val() == 'Complete'){
        $(this).closest('.grid-container5').find('.save').removeClass( 'save' )
        $(this).closest('.grid-container5').find('.field25').css({"grid-area": "6 / 5 / span 1 / span 1"})
        $(this).closest('.grid-container5').find('.field21').css({"grid-area": "7 / 5 / span 1 / span 1"})
        $(this).closest('.grid-container5').find('.block6').empty();
    }else{
        $(this).closest('.grid-container5').find('.save').removeClass( 'save' )
        $(this).closest('.grid-container5').find('.field25').css({"grid-area": "6 / 5 / span 1 / span 1"})
        $(this).closest('.grid-container5').find('.field21').css({"grid-area": "7 / 5 / span 1 / span 1"})
        $(this).closest('.grid-container5').find('.block5').empty();
    }
});

$(document).on('click', 'input[name="hanger"]', function(){
    if($(this).val() == 'Punched'){
        $(this).closest('.grid-container5').find('.save').removeClass( 'save' )
        $(this).closest('.grid-container5').find('.field25').css({"grid-area": "6 / 5 / span 1 / span 1"})
        $(this).closest('.grid-container5').find('.field17').css({"grid-area": "7 / 5 / span 1 / span 1"})
        $(this).closest('.grid-container5').find('.block8').empty();
    }else{
        $(this).closest('.grid-container5').find('.save').removeClass( 'save' )
        $(this).closest('.grid-container5').find('.field25').css({"grid-area": "6 / 5 / span 1 / span 1"})
        $(this).closest('.grid-container5').find('.field17').css({"grid-area": "7 / 5 / span 1 / span 1"})
        $(this).closest('.grid-container5').find('.block7').empty();
    }
}); 


$(document).ready(function() {

  var marginBottom = ($(this).height() * $(this).nextAll('.grid-container3').length) + $('body').height();
  $('.page-end').css('margin-bottom', marginBottom + 'px');
  var distanceToBottom = $('.grid-container2').scrollHeight - $('.grid-container2').height() - $('.grid-container3').height() - $('.grid-container2').scrollTop();


  $(".grid-container3").hide();
  
  $(".grid-container2").click(function() {
 if($(this).parent().data("prevClicked")){
            var old = ($(this).parent().data("prevClicked"));
            var trimmedOld = parseInt(old.substring(2));
        }
        $(this).parent().data("prevClicked", this.id).index();
        
        var id = $(this).attr('id');
        var trimmedId = parseInt(id.substring(2));

            if(old == null) {
                var outerHeight2 = 6;
            }
            else if (trimmedOld > trimmedId) {
                var outerHeight2 = 6;
            } else {
                var outerHeight2 = $(this).siblings('.grid-container2').outerHeight(true);
            }
      
            $(this).prevAll(".grid-container3").slideUp(400);
            $(this).nextAll(".grid-container3").slideUp(400);
            $(".plusminus2").text('Show (+)');
            $(".plusminus3").text('Show (+)');


        if ($(this).next(".grid-container3").is(':visible')) {

            $(this).nextAll(".grid-container5").slideUp(300);
            $(this).nextAll(".grid-container4").slideUp(400);
            $(this).next(".grid-container3").slideUp(500);
            $(".plusminus2").text('Show (+)');
            $(".plusminus3").text('Show (+)');
            
        } 
        
        else {
           $(this).nextUntil(".grid-container2").slideDown(400);
           $(".grid-container4").hide();
           $(".grid-container5").hide();
           $(this).find(".plusminus2").text('Hide (-)');
           $('html,body').animate({scrollTop: $(this).offset().top - outerHeight2 }, 500);
    }
  });
});




$(document).ready(function() {
    $(".grid-container4").hide();
    $(".grid-container5").hide();

    $(".grid-container3").click(function() {
            $(this).nextUntil(".grid-container2").slideUp(300);
            $(".plusminus3").text('Show (+)');
            $(".plusminus4").text('Show (+)');
          

        if ($(this).next('.grid-container4').is(':visible')) {
            $(".grid-container4").slideUp(300)
            $(".plusminus3").text('Show (+)');
            $(".plusminus4").text('Show (+)');
            $(this).find(".plusminus2").text('Hide (-)');
        }

        if ($(this).next(".grid-container4").is(':visible')) {
            $(this).next(".grid-container4").slideUp(300);
            $(".plusminus3").text('Show (+)');
            $(this).find(".plusminus2").text('Hide (-)');
        } 
        
        else {
           $(this).nextUntil(".grid-container2").slideDown(300);
           $(".grid-container5").hide();
           $(this).find(".plusminus3").text('Hide (-)');
    }
  });
});



$(document).ready(function() {
  
  
  $(".grid-container4").click(function() {
        



        if ($('.grid-container5').is(':visible')) {
            $(".grid-container5").slideUp(300)
            $(".plusminus1").text('Show (+)');
            $(".plusminus4").text('Show (+)');
        }
        if ($(this).next(".grid-container5").is(':visible')) {
            $(this).next(".grid-container5").slideUp(300);
            $(".plusminus1").text('Show (+)');
            $(".plusminus4").text('Show (+)');
            
        } else {
           $(this).next(".grid-container5").slideDown(300);

           $(this).find(".plusminus1").text('Hide (-)');
           $(this).find(".plusminus4").text('Hide (-)');
    }
  });
});


$(document).ready(function(){
$(".plusminus4, .plusminus2, .plusminus3").click(function(){
    $('.var, img').show();
   $( ".varlink, .hidelink" ).hide();
  });
});



$(document).ready(function(){
   
    $(".varlink, .hidelink").hide();

    $("p.var").click(function(){
        var div_class = ($(this).parent('div').attr('class'));
        var id = this.id;
        var img_id = ($(this).siblings('img').attr('id'));
        var img_class = ($(this).siblings('img').attr('class').split(' ')[0]);
        var new_class = ($(this).siblings('.newplace').attr('class'));
        var new_id = ($(this).siblings('.newplace').attr('id'));
       // alert (new_id);





            if(div_class == 'front') {
                var div_other = 'back';
            };

            if(div_class == 'back') {
                var div_other = 'front';
            };




        $('.newplace').empty();
        $('.' + img_class).not('#' + img_id).hide().siblings('.hidelink').show().siblings('.var').hide();
        $(this).siblings('#C' + id).show().clone().attr('id', id).appendTo('.newplace.' + div_other + new_id);
       
        //$('div#' + id).siblings("#C" + id).show();
       $('div.varlink').not('#' + id).hide();
  
     
     
  });
  
  $("p.hidelink").click(function(){
          $('img, .var').show(); 
          $('.varlink, .hidelink').hide();
    });
});
   


    if ( window.history.replaceState ) {
        window.history.replaceState( null, null, window.location.href );
    }

  $('#loadingMask').fadeOut();
});


function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}




            </script>

