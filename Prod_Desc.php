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
 

	 
	$conn1=mysqli_connect("$db_host","$db_username","$db_pass") or die ("could not connect to mysql");
	mysqli_select_db($conn1,"$db_name") or die ("no database");
	
	
	$query="Select ProductName,ImageLink,ItemId,Description FROM Inventory where ItemId={$_GET['itemid']} limit 1";
	$result = mysqli_query($conn,$query);
	$value = mysqli_fetch_object($result);
    
	$prodname=$value->ProductName;
	$image=$value->ImageLink;
	$description=$value->Description;
	
	
							
							
				
	
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>EverythingIndian | Product Description</title>
    
    <!-- Font awesome -->
    
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">    
    
    <!-- Theme color -->
    <link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->

    <!-- Main style sheet -->
    <link href="css/style1.css" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet">
	<link href="css/star-rating.min.css" media="all" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    
    <script src="js/star-rating.min.js" type="text/javascript"></script>

	<style>
	
	.review-link{
	font-size: 20px;
	}
	
	</style>
	
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
	
  </head>
  <body> 
   <!-- wpf loader Two -->
    <div id="wpf-loader-two">          
      <div class="wpf-loader-two-inner">
        <span>Loading</span>
      </div>
    </div> 
    <!-- / wpf loader Two -->       
  <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->

	<div id="site">
  <!-- start header -->
<div class="top_bg">
<div class="wrap">
	<div class="header">
		<div class="logo">
			<a href="index.php"><img src="images1/logo.jpg" alt="" height=125px width=150px;/></a>
		</div>
		 <div class="log_reg">
				<ul>
					 
					<!--  <li class="hidden-xs">Welcome <?php echo $_SESSION['username']; ?>,<a href="logout.php">Logout</a></li> -->
		<li style="font-size:16px; color:white;" class="hidden-xs">	
		<?php if(isset($_SESSION['username'])){
		echo "Welcome ";
		echo $_SESSION['username'];
		
		echo ',';
		echo "<a style='color:white' href=logout.php>Logout</a>";
			}	
		else {
			echo "<a style='color:white' href=login.php>Login</a>";
			} ?> </li> 
				</ul>
		</div>	
		<div class="web_search">
		 	<form action="SearchResult.php" method="post" id="searchForm">
                  <input type="text" name="q" id="searchbox" placeholder="Search here ex. 'Chicken' " maxlength="25" >
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
						$sub_stmt->execute();0
						
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

  <!-- / menu -->
  <!-- Product Description-->
  <div id="site">
    <section id="aa-product-details">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-product-details-area">
            <div class="aa-product-details-content">
			
              <div class="row">
                <!-- Modal view slider -->
                <div class="col-md-5 col-sm-5 col-xs-12">                              
                  <div class="aa-product-view-slider">                                
                    <div id="demo-1" class="simpleLens-gallery-container">
                      <div class="simpleLens-container">
                        <div class="simpleLens-big-image-container"><a data-lens-image=<?php echo $image ?> class="simpleLens-lens-image"><img src=<?php echo $image ?> class="simpleLens-big-image"></a></div>
                      </div>
                      <div class="simpleLens-thumbnails-container">
                                                            
                          
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Modal view content -->
				
                <div class="col-md-7 col-sm-7 col-xs-12">
                  <div class="aa-product-view-content">
					
                    <h2 class ="product-name"><strong style="color:#57C5A0"><?php echo $prodname ?></strong></h2>
					<?php
						$prod_id = $_GET['itemid'];
						echo "<a class='review-link' href='review.php?itemid=" .$prod_id. "'> Reviews and Ratings</a>";
					?>
          
					<p><br><strong style="color:#57C5A0">Description </strong></br></p>
                    <p> <?php echo $description ?></p>
                    
                    
								<br>
								<div class="product-description" data-name=<?php echo $prodname ?> data-price="<?php echo $priceU ?>">
								</div>
                  </div>
				  
                </div>
				
              </div>
            </div>
			</div></div></div></div>
			</section>
			
            
  <!-- /Product Description-->
  
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


  <!-- Login Modal -->  
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4>Login or Register</h4>
          <form class="aa-login-form" action="">
            <label for="">Username or Email address<span>*</span></label>
            <input type="text" placeholder="Username or email">
            <label for="">Password<span>*</span></label>
            <input type="password" placeholder="Password">
            <button class="aa-browse-btn" type="submit">Login</button>
            <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
            <p class="aa-lost-password"><a href="#">Lost your password?</a></p>
            <div class="aa-register-now">
              Don't have an account?<a href="BuyerRegistration.php">Register now!</a>
            </div>
          </form>
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>    

  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="js/nouislider.js"></script>
  <!-- Custom js -->
  <script src="js/custom.js"></script> 
  <!-- Add to cart Jquery -->
  <script type="text/javascript" src="js/jquery.shop.js"></script> 

  </body>
</html>