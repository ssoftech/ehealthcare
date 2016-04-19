<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/index.css">
<head>
<title>Medicine</title>
    <script src="js/float-panel.js"></script>
    <style>
        body {font-family:Verdana, sans-serif;}
        p {padding:20px 0;}

        #backtop {
	        position: fixed;
            left:auto;right: 20px;top:auto;bottom: 20px;
	        outline: none;
            overflow:hidden;
            color:#fff;
            text-align:center;
            background-color:rgba(49,79,96,0.84);
            height:40px;
            width:40px;
            line-height:40px;
            font-size:14px;
            border-radius:2px;
            cursor:pointer;
            transition:all 0.3s linear;
            z-index:999999;

            opacity:1;
            display:none;
        }
        #backtop:hover {
            background-color:#27CFC3;
        }
        #backtop.mcOut {
            opacity:0;
        }
    </style>      
<style type="text/css">

div.img {
	margin: 5px;
	border: 10px solid #FFF;
	float: left;
	width: 180px;
}
div.img:hover {
	border: 1px solid #777;
}
div.img img {
	width: 100%;
	height: auto;
}
div.desc {
	padding: 15px;
	text-align: center;
}


/*=========================
  Icons
 ================= */

/* footer social icons */
ul.social-network {
	list-style: none;
	display: inline;
	margin-left:0 !important;
	padding: 0;
}
ul.social-network li {
	display: inline;
	margin: 0 5px;
}


/* footer social icons */
.social-network a.icoRss:hover {
	background-color: #F56505;
}
.social-network a.icoFacebook:hover {
	background-color:#3B5998;
}
.social-network a.icoTwitter:hover {
	background-color:#33ccff;
}
.social-network a.icoGoogle:hover {
	background-color:#BD3518;
}
.social-network a.icoVimeo:hover {
	background-color:#0590B8;
}
.social-network a.icoLinkedin:hover {
	background-color:#007bb7;
}
.social-network a.icoRss:hover i, .social-network a.icoFacebook:hover i, .social-network a.icoTwitter:hover i,
.social-network a.icoGoogle:hover i, .social-network a.icoVimeo:hover i, .social-network a.icoLinkedin:hover i {
	color:#fff;
}
a.socialIcon:hover, .socialHoverClass {
	color:#44BCDD;
}

.social-circle li a {
	display:inline-block;
	position:relative;
	margin:0 auto 0 auto;
	-moz-border-radius:50%;
	-webkit-border-radius:50%;
	border-radius:50%;
	text-align:center;
	width: 50px;
	height: 50px;
	font-size:20px;
}
.social-circle li i {
	margin:0;
	line-height:50px;
	text-align: center;
}

.social-circle li a:hover i, .triggeredHover {
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-ms--transform: rotate(360deg);
	transform: rotate(360deg);
	-webkit-transition: all 0.2s;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-ms-transition: all 0.2s;
	transition: all 0.2s;
}
.social-circle i {
	color: #000;
	-webkit-transition: all 0.8s;
	-moz-transition: all 0.8s;
	-o-transition: all 0.8s;
	-ms-transition: all 0.8s;
	transition: all 0.8s;
}

a {
 background-color: #D3D3D3;   
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/index.css" type="text/css" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
body
{
    padding-top: 0px;
}
#myCarousel .nav a small
{
    display: block;
}
#myCarousel .nav
{
    background: #eee;
}
.nav-justified > li > a
{
    border-radius: 0px;
}
.nav-pills>li[data-slide-to="0"].active a { background-color: #16a085; }
.nav-pills>li[data-slide-to="1"].active a { background-color: #e67e22; }
.nav-pills>li[data-slide-to="2"].active a { background-color: #2980b9; }
.nav-pills>li[data-slide-to="3"].active a { background-color: #8e44ad; }
* --------------------------------------------------
*/
html,
body {
    overflow-x: hidden; /* Prevent scroll on narrow devices */
}
body {
    padding-top: 0px;
}
footer {
    padding: 30px 0;
}

/*
 * Custom styles
 */
 
.navbar-brand {
    padding:0px 10px;
}

.navbar-brand img {
    height:100px;
    
    transition:.5s all ease-in-out;
}

.navbar-container {
    padding: 0px 0 0px 0;
}

.navbar.navbar-fixed-top.fixed-theme {
    background-color: #222;
    border-color: #080808;
    box-shadow: 0 0 5px rgba(0,0,0,.8);
}

.navbar-brand.fixed-theme img {
    height:0px;
}

.navbar-container.fixed-theme {
    padding: 0;
}

.navbar-brand.fixed-theme,
.navbar-container.fixed-theme,
.navbar.navbar-fixed-top.fixed-theme,
.navbar-brand,
.navbar-container{
    transition: 0.8s;
    -webkit-transition:  0.8s;
}

@media (min-width: 768px)
.navbar>.container .navbar-brand {
    margin-top: 0px;
}
@import url(http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900);
[am-LatoSans] {
  font-family: 'Lato', sans-serif;
}
[am-TopLogo] {
    max-height: 70px;
    max-width: 210px;
    margin: 12px 11px;
}
[am-CallNow] {
    font-weight: 200;
    color: #333;
    vertical-align: middle;
    line-height: 35px;
    font-size: 19px;
    padding-right: 8px;
}
/*
  Relevant styles below
*/
.topper {
  display: flex;
  justify-content: space-between;
  align-items: flex-end;
}

.navbar.navbar-inverse {
  border-top: 0px inset rgba(255, 255, 255, 0.1);
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.5);
  border-radius: 0px;
  margin-top: 0px;
}

.navbar .navbar-nav > li > a {
  color: #fff;
  font-weight: 400;
  text-rendering: optimizeLegibility;
  text-shadow: 0px -1px black, 0px 1px rgba(255, 255, 255, 0.25);
  line-height: 18px;
}

.navbar .navbar-nav > li.active {
  color: #f8f8f8;
  background-color: #080808;
  box-shadow: inset 0px -28px 23px -21px rgba(255, 255, 255, 0.15);
  border-left: 0px solid #2A2A2A;
  border-right: 0px solid #272727;
}

.btn.btn-gradient-blue {
  background-color: #0c5497 !important;
  background-image: -webkit-linear-gradient(top, #127bde 0%, #072d50 100%);
  background-image: -o-linear-gradient(top, #127bde 0%, #072d50 100%);
  background-image: linear-gradient(to bottom, #127bde 0%, #072d50 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff127bde', endColorstr='#ff072d50', GradientType=0);
  border-color: #072d50 #072d50 #0c5497;
  color: #fff !important;
  text-shadow: 0 -1px 0 rgba(31, 31, 31, 0.29);
  -webkit-font-smoothing: antialiased;
}
</style>
<script>$(document).ready(function(){

/**
 * This object controls the nav bar. Implement the add and remove
 * action over the elements of the nav bar that we want to change.
 *
 * @type {{flagAdd: boolean, elements: string[], add: Function, remove: Function}}
 */
var myNavBar = {

    flagAdd: true,

    elements: [],

    init: function (elements) {
        this.elements = elements;
    },

    add : function() {
        if(this.flagAdd) {
            for(var i=0; i < this.elements.length; i++) {
                document.getElementById(this.elements[i]).className += " fixed-theme";
            }
            this.flagAdd = false;
        }
    },

    remove: function() {
        for(var i=0; i < this.elements.length; i++) {
            document.getElementById(this.elements[i]).className =
                    document.getElementById(this.elements[i]).className.replace( /(?:^|\s)fixed-theme(?!\S)/g , '' );
        }
        this.flagAdd = true;
    }

};

/**
 * Init the object. Pass the object the array of elements
 * that we want to change when the scroll goes down
 */
myNavBar.init(  [
    "header",
    "header-container",
    "brand"
]);

/**
 * Function that manage the direction
 * of the scroll
 */
function offSetManager(){

    var yOffset = 0;
    var currYOffSet = window.pageYOffset;

    if(yOffset < currYOffSet) {
        myNavBar.add();
    }
    else if(currYOffSet == yOffset){
        myNavBar.remove();
    }

}

/**
 * bind to the document scroll detection
 */
window.onscroll = function(e) {
    offSetManager();
}

/**
 * We have to do a first detectation of offset because the page
 * could be load with scroll down set.
 */
offSetManager();
});</script>
<script>
$(document).ready( function() {
    $('#myCarousel').carousel({
    	interval:   2000
	});
	
	var clickEvent = false;
	$('#myCarousel').on('mouseover', '.nav a', function() {
			mouseoverEvent = true;
			$('.nav li').removeClass('active');
			$(this).parent().addClass('active');		
	}).on('slid.bs.carousel', function(e) {
		if(!clickEvent) {
			var count = $('.nav').children().length -1;
			var current = $('.nav li.active');
			current.removeClass('active').next().addClass('active');
			var id = parseInt(current.data('slide-to'));
			if(count == id) {
				$('.nav li').first().addClass('active');	
			}
		}
		mouseoverEvent = false;
	});
});
  </script>
  <style>
  .vline
  {
	  height:20px;
	  color:#333;
	  border-left: 1px solid;
	  
  }
    .b
  {
	  height:20px;
	  color:#333;
  }
 </style>
 <style>
  /* Note: Try to remove the following lines to see the effect of CSS positioning */
  .affix {
      top: 0;
      width: 100%;
	  z-index:100;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }
  </style>
</head>

<body>
<header> 
  <!-- 2nd row-->
<div id="backtop">&#9650;</div>
<div class="container-fluid">
	<div class="row">
    	<div class="col-md-6">

         </div>
		<div class="col-md-6 well-sm text-right">
 <a href="#" class="b"><span class="glyphicon glyphicon-home">Home</span></a>
 <a href="#" class="vline"> &nbsp;<span class="glyphicon glyphicon-heart">About</a>
 <a href="#" class="vline"> &nbsp;<span class="glyphicon glyphicon-th">Services</a>
 <a href="#" class="vline"> &nbsp;<span class="glyphicon glyphicon-certificate">Company</a>
		</div>
        
        
	</div>
</div>
<!-- End top header -->

<!-- Start header -->
<div class="container-fluid">
	<div class="row bg-info" data-spy="affix" data-offset-top="197">
   	  <div class="col-md-2">
 <img src="images/Untitled-1.png" height="100" width="100"/>
        </div>
      <div class="col-md-8" style="padding-top:30px;">
    <div class="input-group">
    <input type="text" class="form-control" placeholder="Search for...">
    <span class="input-group-btn">
    <button class="btn btn-info" type="button"><span class="glyphicon glyphicon-search"></span>Search</button>
    </span>
    </div>
        </div>
    <div class="col-lg-2" style="padding-top:30px;">
    <span class="input-group-btn">
    <button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</button>
    </span>
    </div><!-- /.col-lg-6 -->
    </div>
</div>

<!-- nav bar start -->
   <div class="container-fluid">
  <nav id="header" class="navbar navbar-inverse" role="navigation">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand visible-xs-inline-block nav-logo" href="/"><h3>SSTL</h3></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav js-nav-add-active-class">
            <li><a href="/index.html">Home</a></li>
            <li class="active"><a href="#">About</a></li>
            <li><a href="#">Product</a></li>
            <li><a href="#">Our Service</a></li>
            <li><a href="#">Training</a></li>
            <li><a href="#">Contact Us</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Company <b class="caret"></b></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="about.html">About Us</a></li>
                <li><a href="careers.html">Careers</a></li>
                <li><a href="press-release.html">Press Release</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
    </ul>
          
        </div><!-- /.navbar-collapse -->
      </div>
    </nav>
</div>
 <!-- nav bar end --> 
</header>
<!--end header--> 
<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="images/slide-medical-staff.jpg"/>
              
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="images/medical-slide-1.jpg"/>
              
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="images/slide1.jpg"/>
              
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="images/medical-slide-21.jpg">
              
            </div>
            <!-- End Item -->
        </div>
        <!-- End Carousel Inner -->
        <ul class="nav nav-pills nav-justified">
            <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#">Doctor<small>Lorem
                ipsum dolor sit</small></a></li>
            <li data-target="#myCarousel" data-slide-to="1" class="active"><a href="#">Clinic<small>Lorem ipsum
                dolor sit</small></a></li>
            <li data-target="#myCarousel" data-slide-to="2" class="active"><a href="#">Patholgy<small>Lorem ipsum
                dolor sit</small></a></li>
            <li data-target="#myCarousel" data-slide-to="3" class="active"><a href="#">Hospital<small>Lorem ipsum
                dolor sit</small></a></li>
        </ul>
    </div>
    <!-- End Carousel -->
</div>


<!--<div class="clearfix"></div>--> 
<br />
<div class="container">
  <div class="row bg-primary">
    <div class="col-md-12 text-center">
      <h3><b>PRODUCTS</b></h3>
    </div>
  </div>
  <div class="row">
    <div class="col-md-9">
      <h3> Medicine Product</h3>
    </div>
    <div class="col-md-3"> 
      <!-- Controls -->
      <div class="controls pull-right hidden-xs"> <a class="left fa fa-chevron-left btn btn-success" href="#carousel-example"
                        data-slide="prev"></a><a class="right fa fa-chevron-right btn btn-success" href="#carousel-example"
                            data-slide="next"></a> </div>
    </div>
  </div>
  <div id="carousel-example" class="carousel slide" data-ride="carousel"> 
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <div class="row">
          <div class="col-sm-3">
            <div class="col-item">
              <div class="photo"> <img src="images/23335_1.jpg" class="img-responsive" alt="a" height="300" width="260"/> </div>
              <div class="info">
                <div class="row text-center">
                  <div class="price col-md-12">
                    <h5> Product Example</h5>
                    <h5 class="price-text-color"> $149.99</h5>
                  </div>
                </div>
                <div class="separator clear-left">
                  <p class="btn-add"> <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to cart</a></p>
                  <p class="btn-details"> <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                </div>
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="col-item">
              <div class="photo"> <img src="images/325593.jpg" class="img-responsive" alt="a"/> </div>
              <div class="info">
                 <div class="row text-center">
                  <div class="price col-md-12">
                    <h5> Product Example</h5>
                    <h5 class="price-text-color"> $149.99</h5>
                  </div>
                </div>
                <div class="separator clear-left">
                  <p class="btn-add"> <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to cart</a></p>
                  <p class="btn-details"> <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                </div>
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="col-item">
              <div class="photo"> <img src="images/box2-left.png" class="img-responsive" alt="a"/> </div>
              <div class="info">
               <div class="row text-center">
                  <div class="price col-md-12">
                    <h5> Product Example</h5>
                    <h5 class="price-text-color"> $149.99</h5>
                  </div>
                </div>
                <div class="separator clear-left">
                  <p class="btn-add"> <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to cart</a></p>
                  <p class="btn-details"> <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                </div>
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="col-item">
              <div class="photo"> <img src="images/hepatoprotective-medicine.jpg" class="img-responsive" alt="a"/> </div>
              <div class="info">
                 <div class="row text-center">
                  <div class="price col-md-12">
                    <h5> Product Example</h5>
                    <h5 class="price-text-color"> $149.99</h5>
                  </div>
                </div>
                <div class="separator clear-left">
                  <p class="btn-add"> <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to cart</a></p>
                  <p class="btn-details"> <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                </div>
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="item">
        <div class="row">
          <div class="col-sm-3">
            <div class="col-item">
              <div class="photo"> <img src="images/honitus.jpg" class="img-responsive" alt="a"/> </div>
              <div class="info">
                <div class="row text-center">
                  <div class="price col-md-12">
                    <h5> Product Example</h5>
                    <h5 class="price-text-color"> $149.99</h5>
                  </div>
                </div>
                <div class="separator clear-left">
                  <p class="btn-add"> <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to cart</a></p>
                  <p class="btn-details"> <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                </div>
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="col-item">
              <div class="photo"> <img src="images/sorbitrate-1406055343-10000960.jpg" class="img-responsive" alt="a" /> </div>
              <div class="info">
                <div class="row text-center">
                  <div class="price col-md-12">
                    <h5> Product Example</h5>
                    <h5 class="price-text-color"> $149.99</h5>
                  </div>
                </div>
                <div class="separator clear-left">
                  <p class="btn-add"> <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to cart</a></p>
                  <p class="btn-details"> <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                </div>
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="col-item">
              <div class="photo"> <img src="images/Saridon-Tablet-10Tabs.jpg" class="img-responsive" alt="a" /> </div>
              <div class="info">
                <div class="row text-center">
                  <div class="price col-md-12">
                    <h5> Product Example</h5>
                    <h5 class="price-text-color"> $149.99</h5>
                  </div>
                </div>
                <div class="separator clear-left">
                  <p class="btn-add"> <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to cart</a></p>
                  <p class="btn-details"> <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                </div>
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="col-item">
              <div class="photo"> <img src="images/omez-ff-1406055217-10000599.jpg" class="img-responsive" alt="a" /> </div>
              <div class="info">
                 <div class="row text-center">
                  <div class="price col-md-12">
                    <h5> Product Example</h5>
                    <h5 class="price-text-color"> $149.99</h5>
                  </div>
                </div>
                <div class="separator clear-left">
                  <p class="btn-add"> <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to cart</a></p>
                  <p class="btn-details"> <i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">More details</a></p>
                </div>
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<br/>
<div class="container">
  <div class="row bg-primary">
    <div class="col-md-12 text-center">
      <h3><b>OUR SERVICES</b></h3>
    </div>
  </div>
</div>
<div class="container">
  <div class="row" style="padding-top:2%;">
    <div class="col-md-3 col-xs-6 text-center"> 
      <!--<div class="">--> 
      <a href="#"><img style="border-radius:100px;" src="images/unnamed.png" width="150" height="150" /> </a>
      <!--<div>-->
      <h3>DOCTOR</h3>
      <div class="desc">
        <p>Doctor Page</p>
        <button type="button" class="btn btn-primary btn-md">Click Here</button>
      </div>
    </div>
    <div class="col-md-3 col-xs-6 text-center"><a href="customarserach.jsp"> <img style="border-radius:100px;" src="images/nYYREqrq.jpg" width="150" height="150" /></a>
      <h3>CLINIC</h3>
      <div class="desc">
        <p>Clinic Page</p>
        <a href="customarserach.jsp"><button type="button" class="btn btn-primary btn-md">Click Here</button></a>
      </div>
    </div>
    <div class="col-md-3 col-xs-6 text-center"><a href="#"> <img style="border-radius:100px;" src="images/Pathology_icon.png" width="150" height="150" /></a>
      <h3>PATHOLOGY</h3>
      <div class="desc">
        <p>Pathology Page</p>
        <button type="button" class="btn btn-primary btn-md">Click Here</button>
      </div>
    </div>
    <div class="col-md-3 col-xs-6 text-center"> <a href="#"><img style="border-radius:100px;" src="images/hospitalvisits_icon.png" width="150" height="150" /></a>
      <h3>HOSPITAL</h3>
      <div class="desc">
        <p>Hospital Page</p>
        <button type="button" class="btn btn-primary btn-md">Click Here</button>
      </div>
    </div>
    <hr />
  </div>
 <div class="container-fluid">

<div class="row">

<div class="col-md-3">

<ul class="list-group">
<h3>About</h3>
  <li class="list-group-item"><a href="#">Latest News</a></li>
  <li class="list-group-item"><a href="#">Company Overview</a></li>
  <li class="list-group-item"><a href="#">Our Approach</a></li>
  <li class="list-group-item"><a href="#">More about SSTL</a></li>
</ul>

</div>

<div class="col-md-3">

<ul class="list-group">
<h3>Our Services</h3>
  <li class="list-group-item"><a href="#">Doctor</a></li>
  <li class="list-group-item"><a href="customarserach.jsp">Clinic</a></li>
  <li class="list-group-item"><a href="#">Pathology</a></li>
  <li class="list-group-item"><a href="#">Hospital</a></li>
</ul>

</div>

<div class="col-md-3">
<ul class="list-group">
<h3>Contact Us</h3>
  <li class="list-group-item"><img src="images/Untitled-1.png" width="40" height="40"/><font size="+2"> <b>SSTL</b></font></li>
  <li class="list-group-item">DN-10, Salt Lake, Sec-V, Kolkata-91</li>
  <li class="list-group-item"><span class="glyphicon glyphicon-earphone"></span> : 1800-7070-6464</li>
  
</ul>

</div>

<div class="col-md-3">
<ul class="list-group">
<h3>Popular Links</h3>
  <li class="list-group-item"><a href="#">Careers</a></li>
  <li class="list-group-item"><a href="#">Contact SSTL</a></li>
  <li class="list-group-item"><a href="#">Customer Complaints</a></li>
  <li class="list-group-item"><a href="#">Services</a></li>
</ul>

</div>

</div>
</div>

<div class="row well well-sm">

  <div class="col-md-4">
  <h4>FOLLOW US</h4>
                    <ul class="social-network social-circle">
                        <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                        <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                    </ul>				
				</div>
  <div class="col-sm-4">
  <h4>DOWNLOAD OUR FREE APP</h4>
  <a href="#"><img src="images/android.png" width="120" height="50"/></a>
  <a href="#"><img src="images/available-on-the-app-store-1345130940.jpg" width="120" height="50"/></a>
  </div>
  <div class="col-sm-4">
  <h4>PAYMENT OPTIONS</h4><marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();">
  <img src="images/1457101656_Visa-Curved.png" width="70" height="40"/>
  <img src="images/1457101646_Mastercard-Curved.png" width="70" height="40"/>
  <img src="images/1457101677_American-Express-Curved.png" width="70" height="40"/>
  <img src="images/1457101684_Paypal-Curved.png" width="70" height="40"/>
</marquee>
 
  
  </div>
</div>

</div>


<div class="container bg-primary">
	<div class="row">
    	<div class="col-md-12 text-center" style="padding-top:10px;">
        	<p>Copyright © 2015 SSTL. All Rights Reserved | Design by SSTL</p>
        </div>
    </div>
</div>

</div>
</body>
</html>
    