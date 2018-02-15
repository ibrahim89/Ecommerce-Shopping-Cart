<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!-- Css -->
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/images" var="images" />
<!-- JavaScript -->
<spring:url value="/resources/js" var="js" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
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


<body>
	<div class="container-fluid" style="background-color: #FFE4B5">
	
		<div class="content">
			<div class="panel panel-warning">
				<div class="panel-heading">Shipping Address</div>
				<div class="panel-body">
					<form:form class="form-horizontal" commandName="shippingAddress">
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Line 1</label>
							<div class="col-sm-10">
								<form:errors path="line1" class="error" />
								<form:input path="line1" type="text" autofocus="true" class="form-control" required="true"/>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Line 2</label>
							<div class="col-sm-10">
								<form:errors path="line2" class="error" />
								<form:input path="line2" type="text" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">City</label>
							<div class="col-sm-10">
								<form:errors path="city" class="error" />
								<form:input path="city" type="text"  class="form-control" required="true"/>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">State</label>
							<div class="col-sm-10">
								<form:errors path="state" class="error" />
								<form:input type="text" path="state" class="form-control" required="true"/>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Country</label>
							<div class="col-sm-10">
								<form:errors path="country" class="error" />
								<form:input type="text" path="country" class="form-control" required="true"/>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Zip code</label>
							<div class="col-sm-10">
								<form:errors path="zipCode" class="error" />
								<form:input type="text" path="zipCode" pattern="^[1-9][0-9]{5}$" title="Enter a 6 digit pincode" class="form-control" required="true"/>
							</div>
						</div>
						<div class="col-md-offset-3">
							<input type="submit" name="_eventId_submitShippingAddress"
								class="btn btn-md btn-warning" value="Save"> <input
								type="submit" name="_eventId_cancel"
								class="btn btn-md btn-warning" value="Cancel">
						</div>
					</form:form>
				</div>
			</div>
		</div>
		
	</div>
</body>





</html>