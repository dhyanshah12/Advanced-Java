<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer class="bg-dark text-light mt-auto pt-4">
	<div class="container">
		<div class="row g-4">

			<div class="col-12 col-md-5">
				<h5 class="fw-bold">
					<i class="bi bi-bag-check-fill text-warning me-2"></i>Amazon
				</h5>
				<p class="text-secondary small mb-0">
					Shop smarter. Manage your orders, wishlist and cart in one place.
				</p>
			</div>

			<div class="col-6 col-md-3">
				<h6 class="text-uppercase text-secondary small fw-semibold">Quick Links</h6>
				<ul class="list-unstyled mb-0">
					<li><a href="AmazonOrders.jsp" class="link-light link-opacity-75 link-opacity-100-hover text-decoration-none">Orders</a></li>
					<li><a href="AmazonWishList.jsp" class="link-light link-opacity-75 link-opacity-100-hover text-decoration-none">WishList</a></li>
					<li><a href="AmazonCart.jsp" class="link-light link-opacity-75 link-opacity-100-hover text-decoration-none">Cart</a></li>
					<li><a href="AmazonLogoutController" class="link-light link-opacity-75 link-opacity-100-hover text-decoration-none">Logout</a></li>
				</ul>
			</div>

			<div class="col-6 col-md-4">
				<h6 class="text-uppercase text-secondary small fw-semibold">Contact</h6>
				<ul class="list-unstyled small mb-0 text-secondary">
					<li><i class="bi bi-envelope me-2"></i>support@example.com</li>
					<li><i class="bi bi-telephone me-2"></i>+91 00000 00000</li>
				</ul>
			</div>

		</div>

		<hr class="border-secondary mt-4 mb-0">

		<div class="py-3 text-center text-secondary small">
			&copy; <%= java.time.Year.now() %> Amazon. All rights reserved.
		</div>
	</div>
</footer>