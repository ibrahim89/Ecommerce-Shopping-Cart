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
<title>CATEGORIES</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap-theme.min.css" />
<script src="<u:url value="resources/js/controller.js" />" ></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>

</head>
<body>

<div class="container" style="background-color: #ffd39b;">
	<h2>
		<center style="color:#8b2500;">Add Product</center>
		
	</h2>
	<center>
	
		<c:url var="addAction" value="/product/add"></c:url>

		<form:form class="form-horizontal" role="form" action="${addAction}"
			commandName="product" enctype="multipart/form-data">
			
			
			
			
			<table>
			
			<tr>
					<td><form:label class="control-label col-sm-12" path="id">
							<spring:message text="Supplier Name" />
						</form:label></td>
					<td><form:select path="supplier.name" items="${supplierList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>
				
			<tr>
					<td><form:label class="control-label col-sm-12" path="id">
							<spring:message text="Category Name" />
						</form:label></td>
					<td><form:select path="sub_category.name" items="${sub_categoryList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>
			
			
			<tr>
				<div class="form-group">
				<td><form:label class="control-label col-sm-12" path="id">
				<spring:message text="Product Id" />
				</form:label></td>

				<div class="col-sm-12">
					<c:choose>
						<c:when test="${!empty product.id}">
						<td><form:input class="form-control" path="id"
											disabled="true" readonly="true" /></td>
						</c:when>

						<c:otherwise>
					<td><form:input class="form-control" path="id" /></td>
						</c:otherwise>
							</c:choose>
						</div>
					</div>
				</tr>
				<tr>
					<div class="form-group">
						<form:input path="id" hidden="true" />
						<td><form:label class="control-label col-sm-12" path="name">
								<spring:message text="Name" />
							</form:label></td>
						<td><form:input class="form-control" path="name" /></td>
						<td><form:errors path="name" cssClass="error" /></td>
					</div>
				</tr>
				<tr>
					<td><form:label class="control-label col-sm-12" path="desc">
							<spring:message text="Description" />
						</form:label></td>
						
					<td><form:input class="form-control" path="desc" /></td>
							<td><form:errors path="desc" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td><form:label class="control-label col-sm-12" path="qty">
							<spring:message text="Quantity" />
						</form:label></td>
					<td><form:input class="form-control" path="qty"/></td>
					<td><form:errors path="qty" cssClass="error" /></td>
				</tr>
				<tr>
					<td><form:label class="control-label col-sm-12" path="price">
							<spring:message text="Price" />
						</form:label></td>
					<td><form:input class="form-control" path="price" /></td>
					<%-- <td><form:errors path="price" cssClass="error" /></td> --%>
				</tr>
				<tr>
				<td><form:label class="cotrol-label col-12" path="image" >
						<spring:message text="Upload Image"/>
					</form:label></td>
				<td>	<form:input type="file" name="file" path="image"/></td>
				</tr>
				<tr >
					<td colspan="2"><c:if test="${!empty product.name}">
							<input class="btn btn-warning" type="submit" value="<spring:message text="Edi Product"/>" />
						</c:if> <c:if test="${empty product.name}">
							<input class="btn btn-warning" type="submit"
								value="<spring:message text="Add Product"/>" />
						</c:if></td>
				</tr>
			</table>
</div>
</form:form>
</center>
</div>

</body>
</html>
