<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add or Change Address</title>
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
  color: black;
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
if("valid".equals(msg))
{
%>
<h3 class="alert">Address Successfully Updated !</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
<%} %>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from users where email='"+email+"'");
	while(rs.next())
	{
%>
<form action="addChangeAddressAction.jsp" method="post">
<h3>Enter Address</h3>
<input class="input-style" type="text" name="address" value="<%=rs.getString(7)%>" placeholder="Enter address" required>
 <h3>Enter city</h3>
 <input class="input-style" type="text" name="city" value="<%=rs.getString(8)%>" placeholder="Enter city" required>
<h3>Enter State</h3>
<input class="input-style" type="text" name="state" value="<%=rs.getString(9)%>" placeholder="Enter state" required>
<h3>Enter country</h3>
<input class="input-style" type="text" name="country" value="<%=rs.getString(10)%>" placeholder="Enter country" required>
 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%}
	}
	catch(Exception e){
		System.out.println(e);
	}
	%>
</body>
<br><br><br><br>
</html>