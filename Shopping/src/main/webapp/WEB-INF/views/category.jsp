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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="resources/css/bootstrap.css" rel="stylesheet" />
<link href="resources/css/bootstrap-theme.css" rel="stylesheet" />
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/angular.js"></script>
<script src="resources/js/angular.js"></script>
<script src="resources/js/angular-resource.min.js"></script>
<script src="resources/js/jquery.min.js"></script>

<title>CATEGORIES</title>

 <script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			//$scope.searchKeyword=location.search.substr(15);
			$scope.categorydata= ${categoryList};
			//alert($scope.productdata);
		 
		 });
	
</script>

 


 
</head>
<!-- <body> -->
 <body ng-app="myApp" ng-controller="getData"> 
<!-- <div class="jumbotron"> -->
<div class="container" style="background-color: #ffd39b;">
	<h2>
		<center style="color:#8b2500;">Add a Category</center>
		
	</h2>
	<center>
		<c:url var="addAction" value="/category/add"></c:url>

		<form:form class="form-horizontal" role="form" action="${addAction}"
			commandName="category">
			
			
			
			<div id="custom-search-input">
                            <div class="input-group col-sm-4">
                                <input type="text"ng-model="searchKeyword" placeholder="Search" />
                                <span class="input-group-btn">
                                   
                                        <span class=" glyphicon glyphicon-search"></span>
                                   
                                </span>
                            </div>
                        </div>

			<table>
				<tr>
				<div class="form-group">
				<td><form:label class="control-label col-sm-2" path="id">
				<spring:message text="ID" />
				</form:label></td>

				<div class="col-sm-10">
					<c:choose>
						<c:when test="${!empty category.id}">
						<td><form:label class="form-control" path="id"
											disabled="true" readonly="true" /></td>
						</c:when>

						 <c:otherwise>
						<td><form:label class="form-control" path="id"
											 /></td>
						</c:otherwise> 
							</c:choose>
						</div>
					</div>
				</tr>
				<tr>
					<div class="form-group">
						<form:input path="id" hidden="true" />
						<td><form:label class="control-label col-sm-2" path="name">
								<spring:message text="Name" />
							</form:label></td>
						<td><form:input class="form-control" path="name"/></td>
						<td><form:errors path="name" cssClass="error" /></td>
					</div>
				</tr>
				<tr>
					<td><form:label class="control-label col-sm-2" path="desc">
							<spring:message text="Description" />
						</form:label></td>
					<td><form:input class="form-control" path="desc" /></td>
					<td><form:errors path="desc" cssClass="error" /></td>
				</tr>
				<tr >
					<td colspan="2"><c:if test="${!empty category.name}">
							<input class="btn btn-primary" type="submit" value="<spring:message text="Edit Category"/>" />
						</c:if> <c:if test="${empty category.name}">
							<input class="btn btn-warning" type="submit"
								value="<spring:message text="Add Category"/>" />
						</c:if></td>
				</tr>
			</table>
</div>
</form:form>
</center>
</div>

<!-- </div> -->
<br>
<div class="container">
<style>
th {
    background-color:#ff7f50 ;
    color: #a52a2a
}</style>
	
	<c:if test="${!empty categoryList}">
	<h3  style="color:#8b2500;">Category List</h3>
		<div class="table-responsive">

			<table class="table table-bordered">
				<tr>
					<th width="80">Category ID</th>
					<th width="120">Category Name</th>
					<th width="120">Category Description</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
			
					<tr  ng-repeat="group in categorydata | filter:searchKeyword">
						<td>{{group.id}}</td>
						<td>{{group.name}}</td>
						<td>{{group.desc}}</td>
						<td><a href="<c:url value='category/edit/{{group.id}}' />">Edit</a></td>
						<td><a href="<c:url value='category/remove/{{group.id}}' />">Delete</a></td>
					</tr>
			
			</table>
		</div>
	</c:if>
</div>

</body>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/angular.js"></script>

</html>
