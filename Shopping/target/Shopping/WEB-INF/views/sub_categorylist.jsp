<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
   
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    <%@ include file="/WEB-INF/views/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SUB CATEGORY LIST</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="resources/css/bootstrap.css" rel="stylesheet" />
<link href="resources/css/bootstrap-theme.css" rel="stylesheet" />
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/angular.js"></script>
<script src="resources/js/angular-resource.min.js"></script>
<script src="resources/js/jquery.min.js"></script>
 <script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			//$scope.searchKeyword=location.search.substr(15);
			$scope.subcategorydata= ${sub_categoryList};
			//alert($scope.productdata);
		 
		 });
	
</script>
  
</head>

  <body ng-app="myApp" ng-controller="getData">  
<!-- <div class="jumbotron"> -->
<div class="container" style="background-color:  #ffd39b;">
	<h2>
		<center> </center>
		
	</h2>
	<center>
		

			<form:form class="form-horizontal" role="form" action="${addAction}"
			commandName="sub_categorylist">
		
			
			
			<div id="custom-search-input">
                            <div class="input-group col-sm-4">
                                <input type="text"ng-model="searchKeyword" placeholder="Search" />
                                <span class="input-group-btn">
                                   
                                        <span class=" glyphicon glyphicon-search"></span>
                                   
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
	<h3>Sub Category List</h3>
	<c:if test="${!empty sub_categoryList}">
		<div class="table-responsive">

			<table class="table table-bordered">
				<tr>
					<th width="80">Sub Category ID</th>
					<th width="80">Category ID</th>
					<th width="120">Sub Category Name</th>
					<th width="120">Sub Category Description</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
			
					<tr  ng-repeat="group in subcategorydata | filter:searchKeyword">
						<td>{{group.id}}</td>
						<td>{{group.cat_id}}</td>
						<td>{{group.name}}</td>
						<td>{{group.desc}}</td>
						<td><a href="<c:url value='sub_category/edit/{{group.id}}' />">Edit</a></td>
						
						<td><a href="<c:url value='sub_category/remove/{{group.id}}' />">Delete</a></td>
					</tr>
			
			</table>
		</div>
	</c:if>
</div>
 
</form:form>
</body>
<script src="resources/js/bootstrap.js"></script>
</html>