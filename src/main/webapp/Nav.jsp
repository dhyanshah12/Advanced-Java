<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String active = request.getParameter("active");
	if (active == null) active = "";
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
	<div class="container">
		<a class="navbar-brand fw-bold" href="AmazonOrders.jsp">
			<i class="bi bi-bag-check-fill text-warning me-2"></i>Amazon
		</a>

		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#mainNav" aria-controls="mainNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="mainNav">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link <%= active.equals("orders") ? "active" : "" %>" href="AmazonOrders.jsp">
						<i class="bi bi-box-seam me-1"></i>Orders
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link <%= active.equals("wishlist") ? "active" : "" %>" href="AmazonWishList.jsp">
						<i class="bi bi-heart me-1"></i>WishList
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link <%= active.equals("cart") ? "active" : "" %>" href="AmazonCart.jsp">
						<i class="bi bi-cart me-1"></i>Cart
					</a>
				</li>
			</ul>

			<a href="AmazonLogoutController" class="btn btn-outline-light btn-sm">
				<i class="bi bi-box-arrow-right me-1"></i>Logout
			</a>
		</div>
	</div>
</nav>