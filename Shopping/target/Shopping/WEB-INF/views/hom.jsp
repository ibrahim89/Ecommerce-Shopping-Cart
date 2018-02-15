<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>


<html>
<title>HOME PAGE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  
<head>
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
.w3-sidenav a,.w3-sidenav h4 {font-weight:bold}
</style>
<style>
b {
    
}

h1 {
    color: rgb(194, 160, 15);
    
    	
    
}
</style>
</head>
<body class="w3-light-grey w3-content" style="max-width:1600px">

<!-- Sidenav/menu -->
<nav class="w3-sidenav w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidenav"><br>
  <div class="w3-container">
    <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding" title="close menu">
      <i class="fa fa-remove"></i>
    </a>
    <img src="resources/img/mylogo.jpg" style="width:45%;" class="w3-round"><br><br>
    <h4 class="w3-padding-1"><b >FURNITURE SHOPPING</b></h4>
    <p class="w3-text-grey">Developed by Syyed Ibrahim Abdullah</p>
  </div>
  <a href="#" class="w3-padding w3-text-teal">HOME</a>
  <a href="#" class="w3-padding">ABOUT</a>
  <a href="#" class="w3-padding">PORTFOLIO
  
  <a href="#" class="w3-padding">SHOP</a>
  <a href="#" class="w3-padding">CONTACT</a>
   
  <div class="w3-section w3-padding-top w3-large">
    <a href="resources/img//im1.jpg" class="w3-hover-white w3-hover-text-indigo w3-show-inline-block"><i class="fa fa-facebook-official"></i></a>
    <a href="resources/img/im2.jpg" class="w3-hover-white w3-hover-text-red w3-show-inline-block"><i class="fa fa-pinterest-p"></i></a>
    <a href="resources/img/im3.jpg" class="w3-hover-white w3-hover-text-light-blue w3-show-inline-block"><i class="fa fa-twitter"></i></a>
    <a href="resources/img/im4.jpg" class="w3-hover-white w3-hover-text-grey w3-show-inline-block"><i class="fa fa-flickr"></i></a>
    <a href="resources/img/im5.jpg" class="w3-hover-white w3-hover-text-indigo w3-show-inline-block"><i class="fa fa-linkedin"></i></a>
  </div>
</nav>

<!-- Overlay effect when opening sidenav on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Header -->
  <header class="w3-container">
    <a href="#"><img src="resources/img/logo2.png" style="width:150px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
    <span class="w3-opennav w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <h1><b>My Furniture</b></h1>
    <div class="w3-section w3-bottombar w3-padding-16">
      
      </div>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
  <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
       <ul class="nav navbar-nav">
      <c:forEach items="${categoryList}" var="category">
     
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="false" aria-expanded="true">${category.name}</a> <span class="caret"></span></a>
          
          <ul class="dropdown-menu">
          <c:forEach items="${category.sub_category}" var="sub_category">
            <li><a href="#">${sub_category.name}</a></li>
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
    <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>       

<!-- First Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="resources/img/im1.jpg" alt="Norway" style="width:10%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b><CENTER>SOFAS & SECTIONAL <br>Starting At Rs.4,355</CENTER> </b></p>
        
      </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="resources/img/im2.jpg" alt="Norway" style="width:10%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b> <CENTER>  BEDS <br>Starting At Rs.4,434 </CENTER></b> </p>
        
      </div>
    </div>
    <div class="w3-third w3-container">
      <img src="resources/img/im3.jpg" alt="Norway" style="width:10%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b><CENTER>DINING SETS<br>Starting At Rs. 10,355</CENTER></b></p>
       
      </div>
    </div>
  
  
  <!-- Second Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="resources/img/1.jpg" alt="Paris" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b> <center>Six Seater Sofa <br> Shop Starting Rs. 4000</center> </b></p>
        <p>  </p>
      </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="resources/img/2.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b><center>Four Seater Dining Set<br>Shop Starting Rs. 6000</center> </b></p>
        <p>  </p>
      </div>
    </div>
    <div class="w3-third w3-container">
      <img src="resources/img/3.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b><center>Reception Counter<br>Shop Starting Rs. 13000</center> </b></p>
        <p> </p>
      </div>
    </div>
  </div>
   <!-- Second Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="resources/img/im6.jpg" alt="Cinque Terre" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b> <center>Wardrobes <br>  Shop starting Rs. 9000</center></b></p>
        <p>  </p>
      </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="resources/img/im7.jpg" alt="Cinque Terre" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b><center>Cabinets & Sideboards<br>Shop Starting Rs. 6000</center> </b></p>
        <p>  </p>
      </div>
    </div>
    <div class="w3-third w3-container">
      <img src="resources/img/im8.jpg" alt="Cinque Terre" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b><center>Large Office Table<br>Shop Starting Rs. 13000</center> </b></p>
        <p> </p>
      </div>
    </div>
  </div>

  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <ul class="w3-pagination">
      <li><a class="w3-black" href="#">1</a></li>
      <li><a class="w3-hover-black" href="#">2</a></li>
      <li><a class="w3-hover-black" href="#">3</a></li>
      <li><a class="w3-hover-black" href="#">4</a></li>
      <li><a class="w3-hover-black" href="#">»</a></li>
    </ul>
  </div>

  <!-- Footer -->
  <footer class="w3-container w3-padding-32 w3-white">
  <div class="w3-row-padding">
    <div class="w3-third">
      <h3>FOOTER</h3>
      <p>Buy Wooden Furniture Online

Buy furniture online @ Pepperfry - India's largest home shopping destination offering a wide range of home furniture online.  Choosing the right furniture for your home online will add elegance and functionality to your interior decor, while it will also be cost effective and long lasting at the same time. Enjoy fast shipping as well as cash on delivery at our online store.

Exclusive Range of Furniture Online.</p>
      <p>Powered by <a href="https://www.pepperfry.com/furniture.html" target="_blank"></a>Pepperfry</p>
    </div>
  
    <div class="w3-third">
      <h3>BLOG POSTS</h3>
      <ul class="w3-ul w3-hoverable">
        <li class="w3-padding-16">
          <img src="resources/img/img6" class="w3-left w3-margin-right" style="width:40px">
          <span class="w3-large">Lorem</span><br>
          <span>Sed mattis nunc</span>
        </li>
        <li class="w3-padding-16">
          <img src="resources/img/img7" class="w3-left w3-margin-right" style="width:40px">
          <span class="w3-large">Ipsum</span><br>
          <span>Praes tinci sed</span>
        </li>
      </ul>
    </div>

    <div class="w3-third">
      <h3>POPULAR TAGS</h3>
      <p>
        <span class="w3-tag w3-black w3-margin-bottom">Travel</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">New York</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">London</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">IKEA</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">NORWAY</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">DIY</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Ideas</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Baby</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Family</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">News</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Clothing</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Shopping</span>
        <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Sports</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Games</span>
      </p>
    </div>

  </div>
  </footer>

<!-- End page content -->
</div>

<script>
// Script to open and close sidenav
function w3_open() {
    document.getElementById("mySidenav").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidenav").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>

