<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/header.jsp"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CART ITEM LIST</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap-theme.min.css" />
<script src="<u:url value="resources/js/controller.js" />" ></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>

 <script type="text/javascript" src="resources/js/angular.min.js"></script>
 <script type="text/javascript" src="resources/js/angular.min.js"></script>
 <script src="<u:url value="resources/js/controller.js" />" ></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script> 
 <script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			//$scope.searchKeyword=location.search.substr(15);
			$scope.cartItemdata= ${cartItemList};
			//alert($scope.productdata);
		 
		 });
	
</script>
  
</head>

  <body ng-app="myApp" ng-controller="getData">  
<!-- <div class="jumbotron"> -->
<div class="container" style="background-color: transparent;">

		<form:form class="form-vertical" role="form" action="${addAction}"
			commandName="cartItem">
	<h2>
		<center> </center>
		
	</h2>
	<center>
		

			
			
			
			<div id="custom-search-input">
                            <div class="input-group col-sm-4">
                                <input type="text"ng-model="searchKeyword" placeholder="Search" />
                                <span class="input-group-btn">
                                    <button class="btn btn-warning" type="button">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                            </div>
                        </div>
<!-- </div> -->
 <br>
<div class="container">
<style>
th {
    background-color:#ff7f50 ;
    color: #a52a2a
}</style>
	<h3>Cart Item List</h3>
	<c:if test="${!empty cartItemList}">
		<div class="table-responsive">

			<table class="table table-bordered">
				<tr>
					<th width="80">Cart Item ID</th>
					<th width="80">Cart ID</th>
					<th width="120">Product ID</th>
					<th width="120">Product Name</th>
					<th width="120">Product Price</th>
					<th width="120">Product Qty</th>
					<th width="120">Total</th>
					
					<th width="60">Delete</th>
				</tr>
			
					<tr  ng-repeat="group in cartItemdata | filter:searchKeyword">
						<td>{{group.cartItemId}}</td>
						<td>{{group.cartId}}</td>
						<td>{{group.id}}</td>
						<td>{{group.productName}}</td>
						<td>{{group.productPrice}}</td>
						<td>{{group.productQty}}</td>
						<td>{{group.total}}</td>
				
						 
						<td><a href="<c:url value='cartItem/remove/{{group.cartItemId}}' />">Delete</a></td> 
						
					</tr>
			
			</table>
			<a href="start"><button type="button" class="btn btn-warning">Checkout</button></a>
		</div>
	</c:if>
</div>
 </center>
 </form:form>

</body>
</html>