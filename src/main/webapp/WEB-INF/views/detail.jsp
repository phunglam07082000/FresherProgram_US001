<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Customer</title>
<link rel="icon"  type="image/png" sizes="16×16" href='<c:url value="/resources/Image/logo.png"/>'>

<link rel="stylesheet"
	href='<c:url value="/resources/Styles/dasboard.css"/>'>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
</head>
<body>



	<input type="checkbox" id="sidebar-toggle">
	<div class="sidebar">
		<div class="slidebar-header">
			<h3 class="brand">
				<!-- <span class="ti-unlink"></span> -->
				<span>easywire</span>
			</h3>

			<label for="sidebar-toggle" class="ti-menu-alt"></label>
		</div>
		<div class="sidebar-menu">
			<ul>
				<li><a href='<c:url value="/"/>'> <span class="ti-home"></span>
						<span>Home</span>
				</a></li>

			</ul>

		</div>

	</div>

	<div class="main-content">
		<!-- <header>
            <div class="search-wrapper">
                <span class="ti-search"></span>
                <input type="search" placeholder="Search">
            </div>
            <div class="social-icons">
                <span class="ti-bell"></span>
                <span class="ti-comment"></span>
                <div class="">
                </div>
            </div>
        </header> -->

		<div class="product__adds">

			<div class="product__add">
			 <span class="message">${mesage}</span>
					<input type="text" required="required" id="lastName"
						name="lastName" placeholder="${customer.lastName }"> <input
						type="text" required="required" id="firstName" name="firstName"
						placeholder="${customer.firstName }"> <select id="gender"
						required="required" name="gender">
						<option>${customer.gender}</option>
						
					</select> <input type="text" required="required" id="dateOfBirth"
						name="dateOfBirth" placeholder="${customer.dateOfBirth }">

					<input type="text" required="required" id="idCustomer"
						name="idCustomer" placeholder="${customer.idCustomer }"> <select
						id="maritalStatus" required="required" name="maritalStatus">

						<option>${customer.maritalStatus }</option>
						



					</select> <input type="text" required="required" id="address" name="address"
						placeholder="${customer.address }"> <select id="country"
						required="required" name="country">

						<option >${customer.country}</option>
						
					</select>

				 
                     <div class="copyright" style="color: #6600FF; text-align: center; "> Copyright © 2021 DXC Technology</div>
			</div>

		</div>

	</div>



</body>
</html>