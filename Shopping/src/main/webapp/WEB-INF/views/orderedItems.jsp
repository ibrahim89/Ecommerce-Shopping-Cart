<div class="table-outer productMainDiv" ng-controller="orderedItemsCtrl">
<p style="font-size:35px;font-weight:bold;text-align:center;text-decoration:underline;">Products delivered</p>
<div class="btn-group-vertical">

								<a	onclick= window.history.back() 
									class="btn btn-lg btn-primary">
									<span></span> Back</a>
							</div><br><br>
	<c:choose>
		<c:when test="${not empty noProductsinHistory}">
			<h2 style="margin: auto; text-align: center;">${noProductsinHistory}</h2>
		</c:when>
		<c:otherwise>
			<table class="table table-hover table-reponsive table-cart">
				<thead>
						<tr class="table-primary">

						<th>Product Image</th>
						<th>Product Name</th>
						<th>Product Quantity</th>
						<th>Total Price</th>
						
					</tr>
				</thead>
				<tbody>

					<%-- 	<c:forEach items="${cartItems}" var="c"> --%>


					<tr ng-repeat="item in orderedItems|filter:searchProduct">
						
						<td><img src="${images}/product/{{item.productId}}.png"
							class="cart-Image img-thumbnail"></td>
						<td>{{item.productName}}</td>
						<td>{{item.quantity}}</td>
						<td><span class="fa fa-inr"></span> {{item.totalPrice}}</td>
						
							
						
					</tr>
					<%-- 	<%
							i++;
						%> --%>
					<%-- </c:forEach> --%>
				</tbody>
			</table>
			
		</c:otherwise>
	</c:choose>
</div>