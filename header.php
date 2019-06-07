<?php ob_start(); ?>
<?php require_once("config\init.php"); 

$database = new Database();
$db = $database->getConnection();
 
$count= new Counts($db);
$total_series = $count->countSeries();
$total_figures = $count->countVariations('Figure');
$total_cardbacks = $count->countVariations('Cardback');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>oohtini</title>
    
    <link href="libs/styles.css" rel="stylesheet"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   <!-- Custom Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
 
</head>
<body>
  <div id="page-container">
    <div id="content-wrap">
      <div class="headertitle">
        <div><span class="header_title"><a href="#">OOHTINI</a></span></div>
        <div><span class="header_subtitle">ACTION FIGURE COLLECTIONS</span></div>
      </div>
      <div class="topnav" id="myTopnav">
        <a href="#" class="active"><span class="title">HOME</span></a>
        <a href="#">ABOUT OOHTINI</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()"><i class="fa fa-bars"></i></a>
        <span class="permalink"><a href="#">LOGIN</a></span>
        <span class="permalink"><a href="#">REGISTER</a></span>
      </div>    
    <div class='infogrid'>
      <div> <?php echo $total_series; ?> Series - 
            <?php echo $total_figures; ?> Figures - 
            <?php echo $total_cardbacks; ?> Cardbacks
      </div>
    </div>

  <script>
  function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
      x.className += " responsive";
    } else {
      x.className = "topnav";
    }
  }
  </script>

  <?php // Flush the buffered output.
    ob_end_flush();
  ?>

