<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>


<meta charset="UTF-8">

<title>Gir Registration</title>

<!-- Bootstrap CSS -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">


</head>
<style type="text/css">
	.error{
		color : red;
	}
</style>
<body class="bg-light">

<div class="container mt-5">

    <div class="row justify-content-center">

        <div class="col-md-6">

            <div class="card shadow">

                <div class="card-body">

                    <h3 class="text-center mb-4">
                        Gir Registration
                    </h3>

                    <form action="GirRegController" method="post">

                        <!-- Name -->
                        <div class="mb-3">

                            <label class="form-label">
                                Name
                            </label>

                            <input
                                type="text"
                                name="name"
                                value="${nameValue}"
                                class="form-control">

                            <span class="error">
                                ${nameerr}
                            </span>

                        </div>


                        <!-- Gender -->
                        <div class="mb-3">

                            <label class="form-label d-block">
                                Gender
                            </label>

                            <div class="form-check form-check-inline">

                                <input
                                    class="form-check-input"
                                    type="radio"
                                    name="gender"
                                    value="male"
                                    ${genValue == "male" ? "checked":""}
                                    >
                                <label class="form-check-label">
                                    Male
                                </label>

                            </div>


                            <div class="form-check form-check-inline">

                                <input
                                    class="form-check-input"
                                    type="radio"
                                    name="gender"
                                    value="female"
                                    ${genValue == "female" ? "checked" : ""}
                                    >
                                <label class="form-check-label">
                                    Female
                                </label>

                            </div>

                            <br>

                            <span class="error">
                                ${generr}
                            </span>

                        </div>


                        <!-- City -->
                        <div class="mb-3">

                            <label class="form-label">
                                City
                            </label>

                            <select name="city" class="form-select">

                                <option value="-1">
                                    ----Select your city----
                                </option>

                                <option value="Ahmedabad">
                                    Ahmedabad
                                </option>

                                <option value="Gandhinagar">
                                    Gandhinagar
                                </option>

                                <option value="HMT">
                                    HMT
                                </option>

                                <option value="Rajkot">
                                    Rajkot
                                </option>
                            </select>
								<span class="error">
									${cityerr}</span>
                        </div>


                        <!-- Contact -->
                        <div class="mb-3">

                            <label class="form-label">
                                Contact
                            </label>

                            <input
                                type="text"
                                name="contact"
                                value="${contactValue}"
                                class="form-control">

                            <span class="error">
                                ${conterr}
                            </span>

                        </div>


                        <!-- Submit Button -->
                        <div class="d-grid">

                            <button
                                type="submit"
                                class="btn btn-primary">

                                Submit

                            </button>

                        </div>

                    </form>

                </div>

            </div>

        </div>

    </div>

</div>


<!-- Bootstrap JavaScript -->
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>
	