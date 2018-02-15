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
<title>Registration</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
  <style>

body {
position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	width: auto;
	height: auto;
	background-image:  url("");
	background-size: cover;
     
     
}
</style>
</head>
<body style="background-color:#DEB887;">


<div class="container"  style="margin-top:30px" >
    <div class="row-md-4 row-md-vertical-offset-40">
        <div class="col-md-4 col-md-offset-4">
    		       <!-- <div class="panel panel-info"> -->
			  	 <div class="panel-heading"> 
			  	
			    	<h4 class="panel-title"><strong align="center" style="color:#8b2500;">Create Free Account</strong></h4>
			 	</div>
			  	      <div class="panel-body"> 
			    	<form:form  role="form"  commandName="user">
                    <fieldset>
			    	  	<div class="form-group">
			    		   <input class="form-control" placeholder="User Name" name="username" path="username" type="text" required="true">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="password" path="password" type="password" value="" required="true">
			    		</div>
			    		<div class="form-group">
			    		    <input class="form-control" placeholder="Email" name="email" path="email" type="text" required="true">
			    		</div>
			    					    		
			    		<input class="btn btn-lg btn-success btn-lg"  name="_eventId_submit" type="submit" value="Register">
			    	</fieldset>
			      	</form:form>
			    </div>
			</div>
		</div>
	</div>
</div>
</div>
</html>
