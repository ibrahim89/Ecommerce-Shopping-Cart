 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
 
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME PAGE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="resources/css/bootstrap.css" rel="stylesheet" />
<link href="resources/css/bootstrap-theme.css" rel="stylesheet" />
<script src="resources/js/bootstrap.js"></script>
  <script src="resources/js/angular.js"></script>
<script src="resources/js/angular.js"></script>
<script src="resources/js/angular-resource.min.js"></script>
<script src="resources/js/jquery.min.js"></script>
    
  
 

<style type="text/css">
 .carousel-inner > .item > img, .carousel-inner > .item > a > img {
    width: 100%; height:400px;
} 
.bannerContainer {
    position:relative;     
}
</style>


  <style type="text/css">

	#nav
		{
			width: 60em; /* 1000 */
			font-family: 'Open Sans', sans-serif;
			font-weight: 400;
			position: absolute;
			top: 20%;
			left: 45%;
			margin-left: -30em; /* 30 480 */	 
    top:63px;
    z-index:10;
  
    
		}

			#nav > a
			{
				display: none;
			}

			#nav li
			{
				position: relative;
			}
				#nav li a
				{
					color: #000;
					display: block;
				}
				#nav li a:active
				{
					background-color:#efa585e;
				}

			#nav span:after
			{
				width: 0;
				height: 0;
				border: 0.313em solid blue; /* 5 */
				border-bottom: #efa585e;
				border-top-color: #efa585;
				content: '';
				vertical-align: middle;
				display: inline-block;
				position: relative;
				right: -0.313em; /* 5 */
			}

			/* first level */

			#nav > ul
			{
			
				height: 3.75em; /* 60 */
				background-color: #deb887; /* nav heading color*/
			}
				#nav > ul > li
				{
					width: 25%;
					height: 100%;
					float: left;
				}
					#nav > ul > li > a
					{
						height: 100%;
						font-size: 2.5em; /* 24 */
						line-height: 2.5em; /* 60 (24) */
						text-align: center;
					}
						#nav > ul > li:not( :last-child ) > a
						{
							border-right: 1px solid #cc470d;
						}
						 #nav > ul > li:hover > a,
						#nav > ul:not( :hover ) > li.active > a
						{
							background-color: pink;
						} 
						li a:hover:not(.active) {
   						 background-color: blue;
    						color: blue;
						}


				/* second level */

				#nav li ul
				{
					background-color: #eec591;
					
					display: none;
					position: absolute;
					top: 100%;
				}
					#nav li:hover ul
					{
						display: block;
						left: 0;
						right: 0;
					}
						#nav li:not( :first-child ):hover ul
						{
							left: -1px;
						}
						#nav li ul a
						{
							font-size: 1.25em; /* 20 */
							border-top: 1px solid #e15a1f;
							padding: 0.75em; /* 15 (20) */
						}
						 	#nav li ul li a:hover,
							#nav li ul:not( :hover ) li.active a
							{
								background-color: transparent;
							}
						 	li a:hover:not(.active) {
   						 		background-color: transparent;
    							color: transparent;
						}

		@media only screen and ( max-width: 62.5em ) /* 1000 */
		{
			#nav
			{
				width: 100%;
				position: static;
				margin: 0;
			}
		}

		@media only screen and ( max-width: 40em ) /* 640 */
		{
			html
			{
				font-size: 75%; /* 12 */
			}

			#nav
			{
				position: relative;
				top: auto;
				left: auto;
			}
				#nav > a
				{
					width: 3.125em; /* 50 */
					height: 3.125em; /* 50 */
					text-align: left;
					text-indent: -9999px;
					background-color: black;
					position: relative;
				}
					#nav > a:before,
					#nav > a:after
					{
						position: absolute;
						border: 2px solid #fff;
						top: 35%;
						left: 25%;
						right: 25%;
						content: '';
					}
					#nav > a:after
					{
						top: 60%;
					}

				#nav:not( :target ) > a:first-of-type,
				#nav:target > a:last-of-type
				{
					display: block;
				}


			/* first level */

			#nav > ul
			{
				height: auto;
				display: none;
				position: absolute;
				left: 0;
				right: 0;
			}
				#nav:target > ul
				{
					display: block;
				}
				#nav > ul > li
				{
					width: 100%;
					float: none;
				}
					#nav > ul > li > a
					{
						height: auto;
						text-align: left;
						padding: 0 0.833em; /* 20 (24) */
					}
						#nav > ul > li:not( :last-child ) > a
						{
							border-right: none;
							border-bottom: 1px solid #cc470d;
						}


				/* second level */

				#nav li ul
				{
					position: static;
					padding: 1.25em; /* 20 */
					padding-top: 0;
				}
		}

</style>
	
	<style type="text/css">
	 .noBullets{
    	list-style:none;
		padding:auto;
	}
    
	#last-footer h5{
		text-align:center;
	}
	.footlinks li a{
	text-align:center;
	margin-left:0px ;
	}
	.subscribe li{padding:0px;}

	</style>
	
</head>
<body  ng-app="myApp" ng-controller="getData">
<!-- FIRST NAVIGATION BAR FOR DISLPLAYING PAGES OF THE WEBSITE, THIS IS A BOOTSTRAP NAVIGATION BAR -->

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    <a class="navbar-brand" href="#">Furniture Shopping Cart</a><br> 
     <img  style="width:110px;height:40px" src="resources/img/mylogo.jpg">  
    </div>
   
    <div class="collapse navbar-collapse" id="myNavbar">
    <security:authorize access="hasAnyRole('ADMIN', 'ROLE_USER')">
      <ul class="nav navbar-nav">
      
        <li class="active"><a href="#">Home</a></li>
       <sec:authorize access="hasRole('ROLE_ADMIN')">
     	 <li><a href="categories">Category</a></li>
         <li><a href="sub_categories">Subcategory</a></li>
         <li><a href="sub_categorylist">Subcategory List</a></li>
          <li><a href="suppliers">Suppliers</a></li>
         <li><a href="products">Add Products</a></li>
           </sec:authorize>
        
       
        <li><a href="productlist">Products List</a></li>
        <li><a href="productDetails">Products Display</a></li>
        <li><a href="contactus">Contact Us</a></li>
        <li><a href="aboutUs">About Us</a></li>
        </security:authorize>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <c:if test="${pageContext.request.userPrincipal.name!= null}">
		
			<h4 style="color:#fff;" >Welcome ${pageContext.request.userPrincipal.name} </h4>
		
  </c:if>
  <sec:authorize access="isAnonymous()">
        <li><a href="users"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
         </sec:authorize>
          <sec:authorize access="isAuthenticated()">
         <li><a href="<c:url value="/logout" />"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
               </sec:authorize>
      </ul>
    </div>
  </div>
</nav>
<!-- END OF THE FIRST NAVIGATION BAR -->



<!-- Second Navigation Bar For Dislplaying products dynamically -->
  <nav id="nav" role="navigation">
	<a href="#nav" title="Show navigation">Show navigation</a>
	<a href="#" title="Hide navigation">Hide navigation</a>
	 <ul class="clearfix"> 
	 <ul class="nav navbar-nav">
	 <c:forEach items="${categoryList}" var="category">
	  <li class="dropdown">
	   <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="false" aria-expanded="true">${category.name}</a> <!-- <span class="caret"></span> --></a>
	   <ul class="dropdown-menu">
	     <c:forEach items="${category.sub_category}" var="sub_category">
	     <li><a href="productlist?search=${sub_category.id}">${sub_category.name}</a></li>
	               <%--   <li><a href="#">${sub_category.name}</a></li> --%>
	                 <%--   <ul class="dropdown-menu">
            <c:forEach items="${sub_category.products}" var="product">  
            <li><a tabindex="-1" href="#">${product.name}</a></li>
			</c:forEach>
			</ul>
	         --%>
            </c:forEach>
            </ul>
            </li>
            </c:forEach>
            </ul>
 </nav>	    
 <div id="wrapper">
        <div class="overlay">
        </div>
    
      </button>
      <!-- CAROUSEL SLIDER -->  	
	 <div id="myCarousel" class="carousel slide" data-ride="carousel" href="<c:url value='/productview{{group.id}}' />">
    
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
         <li data-target="#myCarousel" data-slide-to="5"></li>
          <li data-target="#myCarousel" data-slide-to="6"></li>
    </ol>

   
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/img/so1.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>Sell $</h3>
          <p>Money Money.</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/img/so4.jpg" alt="Image">
        <div class="carousel-caption">
          <h3></h3>
          <p>Lorem ipsum...</p>
        </div>
      </div>
       <div class="item">
        <img src="resources/img/f6.jpg" alt="Image">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
       <div class="item">
        <img src="resources/img/bed4.jpg" alt="Image">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
       <div class="item">
        <img src="resources/img/d2.jpg" alt="Image">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
	 <div class="item">
        <img src="resources/img/k2.jpg" alt="Image">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
	 <div class="item">
        <img src="resources/img/k4.jpg" alt="Image">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
	      
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
 </div>
 <!-- First Product Row -->

<!-- Product Display Dynamically------------- -->

 <div class="container">
	<div class="row">
	 <div ng-repeat="group in productdata | orderBy:'name'| filter:searchKeyword">
		<div class="col-sm-2" >
              <div class="thumbnail">
                <img style="width:px;height:222px" src="resources/img/{{group.id}}.jpg" class="img-responsive"  alt="">
                <div class="caption">
                  <h4 class="pull-right">{{group.price}}</h4>
                  <h4><a href="#">{{group.name}}</a></h4>
                <a href="cartItem/add?id={{group.id}}" ><buttontype="button" ng-click = "addProduct()" class="btn btn-warning">Add To Cart</button></a>
                 <p class="btn-details"><br>
           <a href="<c:url value='/productview {{group.id}}' />" class="hidden-sm">More details</a></p>
                                   
              </div>
            </div></div>
            </div>

<!-- ----------------------------------------------------------------------------------------------------------- -->



    <script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			$scope.searchKeyword=location.search.substr(8);
			$scope.productdata= ${productList};
			//alert($scope.productdata);
					 
		 });
	
</script>
    
  <div class="container">
	<div class="row">
		
	</div>
</div>
	<footer class="text-muted well" id="last-footer">
		<section>
		<div class="row" style="font-size:11px;">
		<div class="container">
		<h3 class="subhead" style="text-align:center;">All We Need Is Your Love</h3>
		   <div class="col-md-9">
        <div class="row" >
			<div class="col-md-3">
			<div class="row footlinks">
			<div class="col-xs-12">
			<h5>OUR FURNITURE STORE</h5>
			<ul class="noBullets">
			<li><i class="fa fa-angle-right"></i><a href="#">Mumbai Store</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Pune Store</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Bangluru Store</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">HYD Store</a></li>
			</ul>
			</div>
			</div>
			</div>
			<div class="col-md-3">
			<div class="row footlinks">
			<div class="col-xs-12">
			<h5>JOIN US</h5>
			<ul class="noBullets">
			<li><i class="fa fa-angle-right"></i><a href="#">Facbook Page</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Follow Twitter</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Google Plus</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">E-Mail</a></li>
			</ul>
			</div>
			</div>
			</div>
			<div class="col-md-3">
			<div class="row footlinks">
			<div class="col-xs-12">
			<h5>OUR Products</h5>
			<ul class="noBullets">
			<li><i class="fa fa-angle-right"></i><a href="#">Living Room</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Bed Room</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Outdoor</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Storage</a></li>
			</ul>
			</div>
			</div>
			</div>
			<div class="col-md-3">
			<div class="row footlinks">
			<div class="col-xs-12">
			<h5>Access Links</h5>
			<ul class="noBullets">
			<li><i class="fa fa-angle-right"></i><a href="#">Future Plans</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Objectives</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Achievements</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Honours</a></li>
			</ul>
			</div>
			</div>
			</div>
			<hr/>			
        </div><!--/.row inner--> 
		</div>
		 <div class="col-md-3 subscribe">
		 <div class="row">
		 <div class="col-xs-12">
		 <form class="form-inline" role="form">
		 <ul class="noBullets">
		<h5>Subscribe Newsletters!</h5>
		 <li>
		 <div class="form-group">
				    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter your email address">
		</div>
				  </li>
				  <li class="text-center">
				  <button type="submit" class="btn btn-success btn-sm">Subscribe Now!</button>
				  </li>
				  </ul>		
				</form>		
		</div></div>		
		 </div>
		
    
		<footer>	<div class="row">
			<div class="container text-center">
				<h5>All Rights Reserved © 2014.<a href="#">Syyed Ibrahim Abdullah</a></h5>
			</div>
			</div></footer>
			 </div><!--/.container--> 
			 </div><!--/.row outer--> 
		</section>
				</footer>
  </body>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/angular.js"></script>

  
  
  
</html>