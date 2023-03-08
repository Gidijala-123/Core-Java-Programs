<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<style>
.input-style {
  width: 40%;
  padding: 12px 20px;
  margin-left:30%;
  box-sizing: border-box;
  outline: none;
  border:2px solid #44921f;
  border-radius:6px;
  background-color:transparent;
  color: black;
  font-size: 16px;
}

input[type=text]:focus, textarea:focus,button:focus{
  outline: 4px solid orange;
  background-color:rgb(224, 255, 219);     /* oranges! yey */
}

.button {
  background-color:#EF0107;
  border: 2px solid #44921f;
  color: #fff;
  padding: 12px 20px;
  text-align: center;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  margin-left:30%;
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius:6px;
  
}

.button:hover {
  background-color: #555555;
  color: white;
}

hr
{
	width: 40%
}
h3
{
	text-align: center;
	color: white;
}
.alert
{
	color:yellow;
}

.profile-style
{
	border-style: dotted;
	
}
</style>
<body>
	<%
	String msg = request.getParameter("msg");
	if ("notMatch".equals(msg)) {
	%>
	<h3 class="alert">New password and Confirm password does not
		match!</h3>
	<%
	}
	%>
	<%
	if ("wrong".equals(msg)) {
	%>
	<h3 class="alert">Your old Password is wrong!</h3>
	<%
	}
	%>
	<%
	if ("done".equals(msg)) {
	%>
	<h3 class="alert">Password change successfully!</h3>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%>
	<h3 class="alert">Some thing went wrong! Try again!</h3>
	<%
	}
	%>
	<form action="changePasswordAction.jsp" method="post">
		<h3>Enter Old Password</h3>
		<input class="input-style" type="password" name="oldPassword" placeholder="Enter old password" required>
		
		<h3>Enter New Password</h3>
		<input class="input-style" type="password" name="newPassword" placeholder="Enter newPassword" required>
		
		<h3>Enter Confirm Password</h3>
		<input class="input-style" type="password" name="confirmPassword" placeholder="confirmPassword" required>
		
		<button class="button" type="submit">
			Save <i class='far fa-arrow-alt-circle-right'></i>
		</button>
	</form>
</body>
<br>
<br>
<br>
</html>