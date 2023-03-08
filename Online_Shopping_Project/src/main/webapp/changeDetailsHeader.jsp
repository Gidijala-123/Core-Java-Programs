<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<style>
body {
   font-family: "Open Sans", sans-serif;
   line-height: 1.25;
   background-size:cover;
   background-repeat:no-repeat;
   height:100vh;
   background-image: radial-gradient( circle 489px at 49.3% 46.6%,  rgba(255,214,126,1) 0%, rgba(253,200,0,1) 100.2% );
}
h3 {
	color: yellow;
	text-align: center;
}
.div-box{
	 display: flex;
    justify-content: center;
    align-items: center;
	background-color: #44921f;
	border-radius:7px;	
	margin:10px;
	box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
	line-height:25px;
	text-align:center;
}

.div-box:hover,.topnav a:hover{
	background-image: radial-gradient(circle,#00CCFF,#0000CD);
	color:white;
	border-radius:7px;
}
.main-div{
	display:flex;
	flex-direction:column;	
}
.sub-div1{
	display:flex;
	flex-direction:row;
	justify-content:space-between;
}

.sub-div2{
	background-image: radial-gradient(circle,#00CCFF,#0000CD);
	border-radius:6px;
	text-align:center;
	margin:-15px 0px 5px 5px;
}
.back-btn{
	width:76px;
	background-image: radial-gradient(circle,#fd5c63,#EF0107);
	border-radius:6px;	
	margin:5px 0px 0px 5px;	
}
.back-btn:hover{
	background-image: radial-gradient(circle,#00BFFF,#0000FF);
}
.title{
	width:173px;
	background-image: radial-gradient(circle,#55DD33,#44921f);
	border-radius:6px;
	font-weight:bold;
	text-align:center;
	margin:5px 0px 0px 0px;
}
.title:hover{
background-image: radial-gradient(circle,#55DD33,#44921f);
}

</style>
    <!--Header-->
    <div class="topnav sticky">
    	<div class="main-div">
    		<div class="sub-div1">
    			<div><a class="back-btn" href="home.jsp">Back</a></div>
    			<div><a class="title">Change Details</a></div>
    		</div>    		
    		<div><%String email = session.getAttribute("email").toString(); %><h2><a class="sub-div2" href="#"><%out.println(email);%></a></h2></div>
    	</div>            
        <div class="div-box"><a href="changePassword.jsp">Change Password</a></div>
        <div class="div-box"><a href="addChangeAddress.jsp">Add or change Address </a></div>
        <div class="div-box"><a href="changeSecurityQuestion.jsp">Change Security Question </a></div>
        <div class="div-box"><a href="changeMobileNumber.jsp">Change Mobile Number </a></div>
     </div>
     <br>
     <!--table-->
