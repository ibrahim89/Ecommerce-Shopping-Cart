 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
 
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
   <%--  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HEADER PAGE</title>
<!-- <link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap-theme.min.css" />
  <script type="text/javascript" src="resources/js/angular.min.js"></script>

  
    <style>
        </style>
 -->
</head>
<body>
<!-- FIRST NAVIGATION BAR FOR DISLPLAYING PAGES OF THE WEBSITE, THIS IS A BOOTSTRAP NAVIGATION BAR -->
<body  ng-app="myApp" ng-controller="getData">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/Shopping">Furniture Shopping Cart</a>
    </div>
    
    <div class="collapse navbar-collapse" id="myNavbar">
    <security:authorize access="hasAnyRole('ADMIN', 'ROLE_USER')">
      <ul class="nav navbar-nav">
      
        <li class="active" class="#"><a href="/Shopping">Home</a></li>
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

	 
</body>
</html>