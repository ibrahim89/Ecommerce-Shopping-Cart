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
	<div class="container-fluid">
		

		<div class="content">
			<div class="panel panel-warning">
				<div class="panel-heading">Fill the Card Details</div>
				<div class="panel-body">
					<form:form class="form-horizontal" modelAttribute="cardDetail">
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Card Number</label>
							<div class="col-sm-5">
							<form:errors path="cardNumber" class="error"/>
								<form:input path="cardNumber" autofocus="true" type="text" pattern="^[0-9]+$" title="Enter a valid card no" required="true" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Expiry Month</label>
							<div class="col-sm-2">
							<form:errors path="expiryMonth" class="error"/>
								<form:select path="expiryMonth" id="" class="form-control">
									<option value="" disabled selected>MM</option>
									<form:option value="1">Jan</form:option>
									<form:option value="2">Feb</form:option>
									<form:option value="3">Mar</form:option>
									<form:option value="4">Apr</form:option>
									<form:option value="5">May</form:option>
									<form:option value="6">Jun</form:option>
									<form:option value="7">July</form:option>
									<form:option value="8">Aug</form:option>
									<form:option value="9">Sep</form:option>
									<form:option value="10">Oct</form:option>
									<form:option value="11">Nov</form:option>
									<form:option value="12">Dec</form:option>
								</form:select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Expiry Year</label>
							<div class="col-sm-2">
							<form:errors path="expiryYear" class="error"/>
								<form:select path="expiryYear" name="" id=""
									class="form-control">
									<option value="" disabled selected>Year</option>
									<form:option value="16">16</form:option>
									<form:option value="17">17</form:option>
									<form:option value="18">18</form:option>
									<form:option value="19">19</form:option>
									<form:option value="20">20</form:option>
									<form:option value="21">21</form:option>
									<form:option value="22">22</form:option>
									<form:option value="23">23</form:option>
									<form:option value="24">24</form:option>
									<form:option value="25">25</form:option>
									<form:option value="26">26</form:option>
									<form:option value="27">27</form:option>
								</form:select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">CVV Number</label>
							<div class="col-sm-5">
							<form:errors path="cvNumber" class="error"/>
								<form:input path="cvNumber" type="text" pattern="^[0-9]{4}$" tilte="Enter a 4 digit ccv" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Name On Card</label>
							<div class="col-sm-5">
							<form:errors path="nameOnCard" class="error"/>
								<form:input path="nameOnCard" type="text" class="form-control" />
							</div>
						</div>
						<div class="col-md-offset-3">
							<input type="submit" value="Checkout"
								name="_eventId_confirmCheckout" class="btn btn-md btn-warning">
							<input type="submit" value="Cancel" name="_eventId_cancel"
								class="btn btn-md btn-warning">
						</div>

					</form:form>
				</div>
			</div>
		</div>
		



	</div>
</body>





</html>