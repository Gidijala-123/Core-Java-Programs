<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
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
h3
{
	text-align: center;
	color: #44921f ;
	font-weight:bold;
}
.input-style {
  width: 90%;
  padding: 12px 20px;
  margin-left:5%;
  box-sizing: border-box;
  border-bottom:2px solid #44921f;
  background-color:transparent;
  color: black;
  font-size: 16px;
}

.button {
  background-color:#44921f;
  border: 2px solid #ff9900;
  color: #fff;
  padding: 12px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  transition-duration: 0.4s;
  cursor: pointer;
  font-size: 16px;
  width: 10%;
   border-radius: 25px;
   margin:auto;
}

.button-div{
 display:flex;
  margin:auto;
}

.button:hover {
  background-color: darkblue;
  color: white;
}
.left-div{
	margin-top:60px;
}
.right-div{
	margin-top:60px;
}
.input-style {
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
input[type=text]:focus, textarea:focus,button:focus{
  background-color:rgb(224, 255, 219); 
}
input::placeholder{
	color:grey;
	font-weight:bold;
	opacity:0.5;
}
</style>

<body>
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 style="color:white;">Product Added Successfully!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 style="color:red;">Some thing went wrong! Try Again!</h3>
<%} %>
<%
int id = 1;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select max(id) from product");
	while(rs.next()){
		id = rs.getInt(1);
		id = id+1;
	}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
<form action="addNewProductAction.jsp" method="post">
<h3 style="color:darkblue;text-shadow: 1px 1px 3px #BD07F9,0px 0px 5px white; text-align: center; font-size: 25px; font-weight:bold;margin-bottom:15px;">Product ID : <span style="color:red;"><%out.println(id); %><span></span> </h3>
<input type="hidden" name="id" value="<%out.println(id); %>">

<div class="left-div">
 <h3>Enter Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter product name" required>
</div>

<div class="right-div">
<h3>Enter Category</h3>
 <input class="input-style" type="text" name="category" placeholder="Enter category" required>
</div>

<div class="left-div">
<h3>Enter Price</h3>
 <input class="input-style" type="number" name="price" placeholder="Enter price" required>
</div>

<div class="right-div">
<h3>Active</h3>
   <select class="input-style" name="active">
   <option value="Yes">Yes</option>
   <option value="No">No</option>
   </select>
</div>
<div class="button-div"><button style="margin-top: 50px;" class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button></div> 
</form>
</body>
<br><br><br>
</body>
</html>