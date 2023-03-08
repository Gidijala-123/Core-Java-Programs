<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<style>
.search{
	border:2.25px solid #44921f !important;
	border-radius:6px 0px 0px 6px;
	outline:none;
}
.search-btn{
	float: right;
	padding: 8px 11px;
	margin:8px 25px 0px 0px;
	background: #44921f;
	font-size: 17px;
	color:white;
	border:none;
	cursor: pointer;
	border-radius:0px 6px 6px 0px;
}

</style>
    <!--Header-->
    <div class="topnav sticky">
    <%String email=session.getAttribute("email").toString(); %>         
       <center><h3 style="color:#44921f;text-shadow: 0px 1px 1px #000;text-align: center;font-size: 25px;font-weight:bold;margin:15px;">Online Shopping By BhargavaG</h3></center>
       <div><a class="div-box" href="home.jsp">Home <i class="fa fa-institution"></i></a></div>
       <div><a class="div-box" href="myCart.jsp">My Cart <i class='fas fa-cart-arrow-down'></i></a></div>
       <div><a class="div-box" href="myOrders.jsp">My Orders <i class='fab fa-elementor'></i></a></div>
       <div><a class="div-box" href="changeDetails.jsp">Change Details <i class="fa fa-edit"></i></a></div>
       <div><a class="div-box" href="messageUs.jsp">Message Us <i class='fas fa-comment-alt'></i></a></div>
       <div><a class="div-box" href="about.jsp">About Admin <i class="fa fa-address-book"></i></a></div>
       <div><a class="div-box" href="logout.jsp">Logout <i class='fas fa-share-square'></i></a></div>
       
       <div class="search-container">
         <form action="searchHome.jsp" method="post">
        	<input class="search" type="text" placeholder="Search here" name="search">
        	<button class="search-btn" type="submit"><i class="fa fa-search"></i></button>        	
         </form> 
         <h4><a style="margin-top:-17px;color:#EF0107;text-shadow: 0px 1px 1px #000;text-align: center;font-size: 14px;font-weight:bold;" href="#"><%out.println(email);%><i class='fas fa-user-alt'></i></a></h4>            
       </div>
     </div>
     <br>
     <!--table-->
