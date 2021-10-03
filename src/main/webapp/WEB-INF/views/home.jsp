<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FresherProgram</title>

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
                    <a href=''>
                        <span class="ti-home"></span>
                        <span>Home</span>
                    </a>
                </li>
              
            </ul>

        </div>

    </div>

    <div class="main-content"> 
        <header>
            <div class="search-wrapper">
                <form action="customer/search" method="get">
                
                  <input type="search" required="required" name="idCustomer" placeholder="Search"> 
                    <!-- <span class="ti-search"> </span> -->
                    
                    <input style="padding: 10px " type="submit" value="Inquire"/>
                </form>
              
                
            </div>
            <div class="social-icons">
                <span class="ti-bell"></span>
                <span class="ti-comment"></span>
                <div class="">
                </div>
            </div>
        </header>

         <div class="dash-content">
        
         
         <a href='<c:url value="/customer"/>'>  <button id="xoa"  class="dash__btn--delete">Add</button>   </a>
         
         
           
            <table id="table-sanpham">
                <thead>
                    <tr>
                        
                        <td>Last Name</td>
                        <td>First Name</td>
                        <td>Gender</td>
                        <td>Date Of Birth</td>
                        <td>ID Customer</td>
                        <td>Marital Status</td>
                        <td>Address</td>
                        <td>Country</td>
                      
                    </tr>
    
                </thead>
    
                <tbody>
                
                <c:forEach items="${listCustomer}" var="listCustomer">
                    <tr>
                        
                        <td>${listCustomer.lastName}</td>
                        <td>${listCustomer.firstName}</td>
                        <td>${listCustomer.gender}</td>
                        <td>${listCustomer.dateOfBirth}</td>
                        <td>${listCustomer.idCustomer}</td>
                        <td>${listCustomer.maritalStatus}</td>
                        <td>${listCustomer.address}</td>
                        <td>${listCustomer.country}</td>
                      
                        <td>
                         
                          <button  class="btnUpdateCustomer  dash__btn--update" data-id="${listCustomer.id}" >Modify</button>
                         
                        
                        </td>
                    </tr>
                    
                    
                   </c:forEach> 
                   
                   
                </tbody>             
            </table>
    
         </div>

     
         
        <div class="product__adds">

            <div class="product__add">
            
            <span   id="message"></span>
            
              <form id="from-data" action="" method="post" >
              
                <input type="text" required="required"   id="lastName" name="lastName"  placeholder="Last Name">
                <input type="text" required="required" id="firstName" name="firstName" placeholder="First Name">
                
                
                <select id="gender" required="required" name="gender">	
					<option value="M">Male</option>
					<option value="F">Female</option>
					<option value="U">Unknown</option>
			    </select>
 
               <input type="text" required="required" id="dateOfBirth" name="dateOfBirth" placeholder="Date Of Birth (yyyy/mm/dd)">
                  
               <input type="text" required="required" id="idCustomer" name="idCustomer" placeholder="ID Customer">
               
               
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
			    
			
			     
            </form>
            
            
		           <button  id="btnUpdateCustomer"  class="dash__btn--update"  >Modify</button> 
		           
		           <br/>
		            <div class="copyright" style="color: #6600FF; text-align: center; "> Copyright © 2021 DXC Technology</div>
		          
		            
                        
             
           </div>
          
       
         </div>
            
    </div> 
    
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 
 
 <script type="text/javascript">
    
       $(document).ready(function() {  
    	   var id=0;
    	
    	$("body").on("click",".btnUpdateCustomer" ,function(){
    		
    		
    		 id=$(this).attr("data-id");
    		 
    		 
    		 $.ajax({
					url : "/FresherProgram_US001/api/findCustomerById",
					type : "POST",
					data : {
						
						id: id,
					},
					
					
					success : function(value) {
						
						$("#lastName").val(value.lastName);
						$("#firstName").val(value.firstName);
						$("#gender").val(value.gender);
						$("#dateOfBirth").val(value.dateOfBirth);
						$("#idCustomer").val(value.idCustomer);
						$("#maritalStatus").val(value.maritalStatus);
						$("#address").val(value.address);
						$("#country").val(value.country);
					
						
					}

				});
    		 
    		
    		
    	});
    	
    	
    	
    	$("#btnUpdateCustomer").click(function(event){
			
			event.preventDefault();	
			var formdata=$("#from-data").serializeArray();
			json={};
			
			
			 $.each(formdata, function(i, field){								 			  
					  json[field.name]=field.value;
				   
				   
		    });
			 
			 
			
			 json["id"]=id;
			
			 
			 
			 console.log(json);
			 
			  
			 $.ajax({
					url : "/FresherProgram_US001/api/updateCustomer",
					type : "POST",
					data : {
						
						dataJson:JSON.stringify(json),
					},
					
					
					success : function(value) {
						
							window.location.replace("http://localhost:8080/FresherProgram_US001/");
						

					}

				});  
			
		});
   		 
   		
   		
 
    	
    });
    
    
    
    
    
    </script>
</body>
</html>