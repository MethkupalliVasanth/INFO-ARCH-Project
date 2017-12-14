<?php 


	$db_host = "localhost"; 
	$db_username = "root";   
	$db_pass = "";  
	$db_name = "StayBeautiful"; 
	 
	$conn=mysqli_connect("$db_host","$db_username","$db_pass") or die ("could not connect to mysql");
	mysqli_select_db($conn,"$db_name") or die ("no database");
	
	$db_host = "localhost"; 
	$db_username = "root";   
	$db_pass = "";  
	$db_name = "login"; 
session_start();  
 

	 
	$conn=mysqli_connect("$db_host","$db_username","$db_pass") or die ("could not connect to mysql");
	mysqli_select_db($conn,"$db_name") or die ("no database");
	

	
?>

<!DOCTYPE HTML>
<html>
<head>
<title>EverythingIndian | Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,900,700,500' rel='stylesheet' type='text/css'>
<link href="css1/bootstrap.css" rel="stylesheet">   
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css1/indexstyle.css" rel="stylesheet" type="text/css" media="all" />
<link href="css1/style.css" rel="stylesheet" type="text/css" media="all" />
<!--- start-mmmenu-script---->
<script src="js1/jquery.min.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="css1/jquery.mmenu.all.css" />
<script type="text/javascript" src="js1/jquery.mmenu.js"></script>
		<script type="text/javascript">
			//	The menu on the left
			$(function() {
				$('nav#menu-left').mmenu();
			});
		</script>
<!-- start slider -->
	<link href="css1/slider.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js1/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="js1/easing.js"></script>
        <script type="text/javascript">
            $(function() {
                $('#ei-slider').eislideshow({
					animation			: 'center',
					autoplay			: true,
					slideshow_interval	: 3000,
					titlesFactor		: 0
                });
            });
        </script>
<!-- start top_js_button -->
<script type="text/javascript" src="js1/move-top.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>-->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style>
	  .carousel-inner > .item > img,
	  .carousel-inner > .item > a > img {
		  width: 30%;
		  
		  margin: auto;
	  }
	  </style>
	
</head>
<body>
<!-- start header -->
<div class="top_bg">
<div class="wrap">
	<div class="header">
		<div class="logo">
			<a href="index.php"><img src="images1/logo.png" alt="" height=125px width=150px;/></a>
		</div>
		 <div class="log_reg">
				<ul>
					
                
                  <li style="font-size:16px; color:white;" class="hidden-xs">	
						<?php if(isset($_SESSION['username'])){
						echo "Welcome ";
						echo $_SESSION['username'];
						echo ',';
						echo "<a style='color:white' href=logout.php>Logout</a>";
							}else{
							echo "<a style='color:white' href=login.php>Login</a>";
					} ?> </li>
												   
					<div class="clear"></div>
				</ul>
		</div>	
		<div class="web_search">
		 	<form action="SearchResult.php" method="post" id="searchForm">
                  <input type="text" name="q" id="searchbox" placeholder="Search here for anything" maxlength="25" >
                  <button type="submit" >Go!<span class="fa fa-search"></span></button>
                </form>
	    </div>						
		<div class="clear"></div>
	</div>	
</div>
</div>
<!-- start header_btm -->

<?php
	
	$pdo = new PDO("mysql:host=localhost;dbname=staybeautiful",'root','');
	
	$sql = "SELECT * FROM Menu ORDER BY MenuId";
	$stmt = $pdo->prepare($sql);
	$stmt->execute();

?>

<div class="wrap">
<div class="header_btm">
		
		 <div class="navbar navbar-default" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>          
          </div>
          <div class="navbar-collapse collapse">
            <!-- Left nav -->
			<ul class="nav navbar-nav">
			<li><a href="index.php">Home</a></li>
				<?php
					while ($row = $stmt->fetch(PDO::FETCH_OBJ)){
						$sub_sql = "SELECT * FROM Submenu WHERE CatId=:MenuId";
						$sub_stmt = $pdo->prepare($sub_sql);
						$sub_stmt->bindParam(':MenuId',$row->MenuId,PDO::PARAM_INT);
						$sub_stmt->execute();
						
						?>
						<li><a href=""><?php echo $row->MenuName; ?></a>
						<?php
						if($sub_stmt->rowCount()){
							?>
							<ul class="dropdown-menu">
								<?php
								while($sub_row = $sub_stmt->fetch(PDO::FETCH_OBJ)){
									?>
									<li><a href="<?php echo $sub_row->Href;  ?>">
									<?php echo $sub_row->SubName;  ?>
									
									</a></li>
									<?php
								}
								
								
								?>
							
							</ul>
							<?php
						}
						?>
						</li>
						<?php
					}
					
			
			
				?>
			</ul>
			
              
              
              
          
          </div><!--/.nav-collapse -->
        </div>
	<div class="clear"></div>
</div>
</div>

<!-- start slider -->
<div class="slider" style="float:center">
				<!---start-image-slider---->
				<div class="image-slider">
					 <div class="wrapper">
                <div id="ei-slider" class="ei-slider">
                    <ul class="ei-slider-large">
						<li>
                            <img src="images/carousel/yoga.jpg" alt="image06"/>
                         
                        </li>
                        <li>
                            <img src="images/carousel/biryani.jpg" alt="image01" />

                        </li>
                        <li>
                            <img src="images/carousel/konda.jpg" alt="image02" />
                          
                        </li>
                        <li>
                            <img src="images/carousel/astrology.jpg" alt="image02" />
                           
                        </li>
                       
                    </ul><!-- ei-slider-large -->
                    <ul class="ei-slider-thumbs">
                        <li class="ei-slider-element">Current</li>
						<li>
							<a href="#">
								<span class="active">Yoga</span>
								<p>A way of life</p> 
							</a>
							<img src="images/carousel/yoga.jpg" alt="thumb01" />
						</li>
                        <li class="hide1"><a href="#"><span>Hyderabadi biryani</span><p>Lipsmacking and South Indian favorite</p> </a><img src="images/carousel/biryani.jpg" alt="thumb01" /></li>
                        <li  class="hide1"><a href="#"><span>Handicrafts</span><p>Kondapalli Toys</p></a><img src="images/carousel/konda.jpg" alt="thumb02" /></li>
                        <li class="hide1"><a href="#"><span>Astrology</span><p>Know your signs</p> </a><img src="images/carousel/astrology.jpg" alt="thumb03" /></li>
                       
                    </ul><!-- ei-slider-thumbs -->
                </div><!-- ei-slider -->
            </div><!-- wrapper -->
		</div>
		<!---End-image-slider---->	
</div>

<!-- start image1_of_3 -->
<div class="top_bg">
<div class="wrap">
<h2 style="color:white">New Recipes</h2>
<div class="main1">
	
	<div class="image1_of_3">
		<img src="images1/butterchicken.jpg" alt=""/>
	    <a href="http://localhost/StayBeautiful/Prod_Desc.php?itemid=1"><span class="tag">North Indian</span></a>
	</div>
	<div class="image1_of_3">
		<img src="images1/dosa.jpg" alt=""/>
		<a href="http://localhost/StayBeautiful/Prod_Desc.php?itemid=2"><span class="tag"> South Indian</span></a>
	</div>
	<div class="image1_of_3">
		<img src="images1/vadapav.jpg" alt=""/>
		<a href="http://localhost/StayBeautiful/Prod_Desc.php?itemid=3"><span class="tag">Far West</span></a>
	</div>
	<div class="clear"></div>
</div>
</div>
</div>


    <ul id="slides">
	<li class="slide"><img src="images1/carousel/8.jpg" width="100%" height="600" ></li>
    <li class="slide"><img src="images1/carousel/9.jpg" width="100%" height="600"></li>
    <li class="slide"><img src="images1/carousel/10.jpg" width="100%" height="600"></li>
    <li class="slide"><img src="images1/carousel/11.jpg" width="100%" height="600"></li>
    <li class="slide"><img src="images1/carousel/12.jpg" width="100%" height="600"></li>

	
	</ul>
	<script type="text/javascript">
var slides = document.querySelectorAll('#slides .slide');
var currentSlide = 0;
var slideInterval = setInterval(nextSlide,2000);

function nextSlide() {
    slides[currentSlide].className = 'slide';
    currentSlide = (currentSlide+1)%slides.length;
    slides[currentSlide].className = 'slide showing';
}
</script>
	

 
	<footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
     <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-top-area">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Useful Links</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="index.php">Home</a></li>
                                          
                      
                    </ul>
                  </div>
                </div>
              </div>
              
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Contact Us</h3>
                    <address>
                      <p> 107 S Indiana Ave, Bloomington, IN 47405</p>
                      <p><span class="fa fa-phone"></span>+1 812-955-1456</p>
                      <p><span class="fa fa-envelope"></span>everythingIndian@gmail.com</p>
                    </address>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    </div>
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
      <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-bottom-area">
            <p>Designed by Group 8</a></p>
            
          </div>
        </div>
      </div>
      </div>
    </div>
  </footer>
  <!-- / footer -->


<script type="text/javascript" src="js1/jquery.smartmenus.js"></script>
<script type="text/javascript" src="js1/jquery.smartmenus.bootstrap.js"></script> 

</body>
</html>