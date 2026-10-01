<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cart</title>

<!-- Bootstrap 5 CSS + Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">

<style>
	body {
		background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
		min-height: 100vh;
	}
	.navbar-brand {
		font-weight: 700;
		letter-spacing: 0.5px;
	}
	.cart-card {
		border: none;
		border-radius: 1rem;
	}
	.action-card {
		border: none;
		border-radius: 1rem;
		transition: transform 0.2s ease, box-shadow 0.2s ease;
	}
	.action-card:hover {
		transform: translateY(-5px);
		box-shadow: 0 0.75rem 1.5rem rgba(0, 0, 0, 0.12) !important;
	}
	.icon-circle {
		width: 64px;
		height: 64px;
		border-radius: 50%;
		display: inline-flex;
		align-items: center;
		justify-content: center;
		font-size: 1.75rem;
	}
</style>
</head>
<body>

	<jsp:include page="Nav.jsp">
	<jsp:param name="active" value="cart" />
</jsp:include>

	<!-- Content -->
	<div class="container py-5">

		<div class="card cart-card shadow-sm mb-4">
			<div class="card-body p-4 text-center">
				<h1 class="display-6 fw-bold mb-2"><i class="bi bi-cart-fill text-warning me-2"></i>Amazon Cart</h1>
				<p class="text-muted mb-0">Review the items you're about to buy.</p>
			</div>
		</div>

		<div class="row g-4 justify-content-center">

			<!-- Orders -->
			<div class="col-12 col-md-6 col-lg-4">
				<div class="card action-card shadow-sm h-100 text-center">
					<div class="card-body p-4">
						<div class="icon-circle bg-primary-subtle text-primary mb-3">
							<i class="bi bi-box-seam"></i>
						</div>
						<h5 class="card-title">My Orders</h5>
						<p class="card-text text-muted">Track and manage your placed orders.</p>
						<a href="AmazonOrders.jsp" class="btn btn-primary px-4">
							<i class="bi bi-arrow-right-circle me-1"></i>View Orders
						</a>
					</div>
				</div>
			</div>

			<!-- Logout -->
			<div class="col-12 col-md-6 col-lg-4">
				<div class="card action-card shadow-sm h-100 text-center">
					<div class="card-body p-4">
						<div class="icon-circle bg-secondary-subtle text-secondary mb-3">
							<i class="bi bi-box-arrow-right"></i>
						</div>
						<h5 class="card-title">Sign Out</h5>
						<p class="card-text text-muted">Finished for now? Log out securely.</p>
						<a href="AmazonLogoutController" class="btn btn-dark px-4">
							<i class="bi bi-power me-1"></i>Logout
						</a>
					</div>
				</div>
			</div>

		</div>
	</div>

	<jsp:include page="AmazonFooter.jsp" />
	<!-- Bootstrap 5 JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>