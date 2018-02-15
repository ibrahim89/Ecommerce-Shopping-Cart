<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="table-outer productMainDiv" ng-controller="cartController">
	<p
		style="font-size: 35px; font-weight: bold; text-align: center; text-decoration: underline;">Cart</p>
	<c:if test="${not empty cartItemRemoved }">
		<div id="cartItemRemoved" class="alert alert-danger">${cartItemRemoved}</div>
	</c:if>
	<c:if test="${not empty updateCartSuccessfull }">
		<div id="updateCartSuccessfull" class="alert alert-success">${updateCartSuccessfull}</div>
	</c:if>
	<c:if test="${not empty cancelUpdate }">
		<div id="cancelUpdate" class="alert alert-danger">${cancelUpdate}</div>
	</c:if>
	<c:if test="${not empty cannotUpdate }">
		<div id="maxCartItem" class="alert alert-danger">${cannotUpdate}</div>
	</c:if>
	<div class="row">
		<div class="col-md-3 col-xs-6">
			<a href="${contextPath}/allProducts" class="btn btn-lg btn-info ">Continue
				Shopping <span class="glyphicon glyphicon-new-window"></span>
			</a>
		</div>
		<div class="col-md-offset-9">
			<a href="${contextPath}/user/cart/history"
				class="btn btn-lg btn-warning ">View History</a>
		</div>
		<br> <br>
	</div>


	<c:choose>
		<c:when test="${not empty cartEmpty}">
			<h2 style="margin: auto; text-align: center;">No products in
				cart</h2>
		</c:when>
		<c:otherwise>
			<table class="table table-hover table-reponsive table-cart">
				<thead>
					<%-- <%
						int i = 1;
								int j = 0;
					%> --%>
					<tr class="table-primary">

						<%-- 	<c:forEach items="${cartItems}" var="cartItem">
							<%
								j++;
							%>
						</c:forEach> --%>

						<%-- <th>Sr.No <span>( <%
							out.println(j);
						%> )
						</span>
						</th> --%>
						<th>Product Image</th>
						<th>Product Name</th>
						<th>Product Quantity</th>
						<th>Total Price</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>

					<%-- 	<c:forEach items="${cartItems}" var="c"> --%>


					<tr ng-repeat="c in cartItems|filter:searchProduct">
						<%-- <td>
								<%
									out.println(i);
								%>
							</td> --%>
						<td><img src="${images}/product/{{c.cartItem.productId}}.png"
							class="cart-Image img-thumbnail"></td>

						<td>{{c.productName}}</td>
						<td>
							<form action="${contextPath}/user/cart/update">
								<input type="hidden" value="{{c.cartItem.cartItemId}}"
									name="cartItemId"> <input type="text"
									value="{{c.cartItem.quantity}}" name="cartQuantity"
									pattern="^[0-9]*$" required class="form-control" /> <br> <input
									type="submit" class="btn btn-md btn-warning"
									value="Update Quantity" />
							</form>
						</td>
						<td><span class="fa fa-inr"></span> {{c.cartItem.totalPrice}}</td>
						<td>
							<div class="btn-group-vertical">

								<a onclick="return confirm('Do you really want to remove ?')"
									href="${contextPath}/user/cart/remove/{{c.cartItem.cartItemId}}"
									class="btn btn-md btn-danger"><span
									class="glyphicon glyphicon-remove-sign"></span> Remove</a>
							</div>
						</td>
					</tr>
					<%-- 	<%
							i++;
						%> --%>
					<%-- </c:forEach> --%>
				</tbody>
			</table>
			<c:choose>
				<c:when test="${not empty zeroGrandTotal }">
					<a class="col-xs-offset-5 btn btn-lg btn-success" disabled="true">Checkout
						&nbsp;&nbsp;<span class="fa fa-inr"></span> 0
					</a>
				</c:when>
				<c:otherwise>
					<a class="col-xs-offset-5 btn btn-lg btn-success"
						href="${contextPath}/cart_checkout">Checkout &nbsp;&nbsp;<span
						class="fa fa-inr"></span> ${grandTotal}
					</a>
				</c:otherwise>
			</c:choose>

		</c:otherwise>
		<%-- ----- for no product proesent --%>

	</c:choose>


</div>