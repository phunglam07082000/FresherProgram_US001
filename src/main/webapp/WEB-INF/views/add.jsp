<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Customer</title>
<link rel="icon"  type="image/png" sizes="16×16" href='<c:url value="/resources/Image/logo.png"/>'>

<link rel="stylesheet" href='<c:url value="/resources/Styles/dasboard.css"/>'>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
</head>
<body>



	<input type="checkbox"  id="sidebar-toggle">
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
                <li>
                    <a href='<c:url value="/"/>'>
                        <span class="ti-home"></span>
                        <span>Home</span>
                    </a>
                </li>
              
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
            
              <form id="from-data" action="customer" method="post" >
              
                <input type="text" required="required"  id="lastName" name="lastName"  placeholder="Last Name">
                <input type="text" required="required" id="firstName" name="firstName" placeholder="First Name">
                
                
                <select id="gender" required="required" name="gender">	
					<option value="M">Male</option>
					<option value="F">Female</option>
					<option value="U">Unknown</option>
			    </select>
 
               <input type="text" required="required" id="dateOfBirth" name="dateOfBirth" placeholder="Date Of Birth (yyyy/mm/dd)">
             
                  
               <input type="text" maxlength="5"  required="required" id="idCustomer" name="idCustomer" placeholder="ID Customer">
               
               
               <select id="maritalStatus" required="required" name="maritalStatus">
				
					<option value="S">Single</option>
					<option value="M">Married</option>
					<option value="D">Divorced</option>

				

			    </select>
    
    
               <input type="text" required="required" id="address" name="address" placeholder="Address">
               
                <select id="country" required="required" name="country">
				
					<option value="VNI">Vietnam</option>
					<option value="USA">United States</option>
					<option value="SIN">Singapore</option>
					<option value="MAL">Malaysia</option>
			    </select>
			    
			      
	            
			            <button class="dash__btn--update">SAVE</button> 
			            
	
	             
               </form>
            
               <div class="copyright" style="color: #6600FF; text-align: center; "> Copyright © 2021 DXC Technology</div>
            
             
     
             </div>
            
          </div>
            
    </div>
    
    
    s
    
 


</body>
</html>