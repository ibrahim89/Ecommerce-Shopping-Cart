<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="/WEB-INF/views/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Abou US</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap-theme.min.css" />
<script src="<u:url value="resources/js/controller.js" />" ></script>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<style>
h3 {
    color: #c81474;
    font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	font-size: 47px;
	font-style: italic;
	font-variant: normal;
	font-weight: 100;
	line-height: 53.2px;
}

</style>
<style>
.media-testimonial {
    width:100%;
    margin:0 auto 30px auto;
}
.media-testimonial-med {
    width:500px;     
}

.media-testimonial-sm {
    width:300px;     
}

.media-testimonial .media-body {
    padding-left:30px;   
    position:relative;
}
.media-testimonial .media-body:before {
  color: #ccc;
  content: "\201C";
  font-size: 6em;
  position:absolute;
  top:-28px;
  left: -5px;
  font-family: Arial, Helvetica, sans-serif;
}

.media-testimonial .media-body p {
  margin-bottom:8px;
  font-size:14px;
}

.media-attribution {
    font-size:90%;   
}

.media-attribution em {
    font-style:normal;
    font-weight:bold;
}
.carousel-inner > .item > img, .carousel-inner > .item > a > img {
    width: 100%; height:400px;
} 
.bannerContainer {
    position:relative;     
}

</style>
<body>
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

<div class="container">
	<div class="row">
        <div class="col-md-12">
            <h1>Digital Furniture Shopping Cart</h1>
            <p class="lead"></p>
            
            
            <h4 style="margin-top:60px"><strong>ABOUT US</strong></h4><hr>
            <div class="media media-testimonial">
              <div class="media-left">
                <a href="#">
                  <img src="resources/img/logo.jpg">
                </a>
              </div>
              <div class="media-body">
                <p>
                Digital Furniture Shopping Cart is changing the way people access furniture. We offer furniture on rent and are setting new industry standards in the process. Our products feature award-winning design, and we deliver in as quickly as 72 hours. Also, our design process is user-inspired, allowing us to offer furniture that truly enhances their lives. Apart from quick deliveries and free set-up, Furlenco also pairs every unit of furniture with matching home décor and soft furnishing, allowing you to furnish your entire home in one click.        </p>
                <div class="media-attribution"><em>Ibrahim </em> - Prince Cubicle</div>
              </div>
            </div>
        
             </div>
            </div>
        </div>
	</div>
</div>
</body>
</html>