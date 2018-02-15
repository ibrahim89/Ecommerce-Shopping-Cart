<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
     <%@ include file="/WEB-INF/views/header.jsp"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
     <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRODUCT LIST</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap-theme.min.css" />

<script src="resources/js/bootstrap.js"></script>
  <script src="resources/js/angular.js"></script>
<script src="resources/js/angular.js"></script>
<script src="resources/js/angular-resource.min.js"></script>
<script src="resources/js/jquery.min.js"></script>




<script>
var myApp = angular.module('myApp',[]);
myApp.controller('getData', function($scope,$http,$location)
 { 
	//$scope.searchKeyword=location.search.substr(8);
	$scope.product= ${productList};
	//alert($scope.productdata);
 
 });
</script>
 
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

</head>
<body ng-app="myApp">
<div  ng-controller="getData">
	<div class="container">
		<h1 class="title" style="color:#8b2500;">Product Details</h1>
		<hr>

		<div class="row">
			
			 <div class="col-lg-6">
			 <img  src="{{product.image}}" />
			</div> 
			 <div class="col-lg-2"> 
			
  				<h3><span class="h3 text-uppercase">{{product.name}}</span></h3>
             	<p><span class="h4 text-info"> {{product.qty}}</span></p>
				<p><span class="h4 text-danger">{{product.price}}</span>	</p>
				
				<a href="cartItem/add?id={{product.id}}"> <button type="button" class="btn btn-warning">Add to Cart</button>
				
</div></div></div>
<div>


</div>
</body>
 
</html>