<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<script>
	if(window.history.forward(1) != null) 
		window.history.forward(1);
</script>
</head>
<style>
body {
   font-family: "Open Sans", sans-serif;
   line-height: 1.25;
   background-size:cover;
   background-repeat:no-repeat;
   background-image: radial-gradient( circle 489px at 49.3% 46.6%,  rgba(255,214,126,1) 0%, rgba(253,200,0,1) 100.2% );
}
body::-webkit-scrollbar{
	display:none;
}
h3 {
	color: #44921f;
	text-align: center;
}
table {
    border: 1px solid #ccc;
    border-collapse: collapse;
    margin: 0;
    margin-bottom:20px;
    padding: 0;
    width: 100%;
    /*margin-left: 5%;*/
    table-layout: fixed;
   animation: scale-in-ver-top 1s cubic-bezier(0.455, 0.030, 0.515, 0.955);
}

@-webkit-keyframes scale-in-ver-top {
   0% {
      -webkit-transform: scaleY(0);
      transform: scaleY(0);
      -webkit-transform-origin: 100% 0%;
      transform-origin: 100% 0%;
      opacity: 1;
   }

   100% {
      -webkit-transform: scaleY(1);
      transform: scaleY(1);
      -webkit-transform-origin: 100% 0%;
      transform-origin: 100% 0%;
      opacity: 1;
   }
}

@keyframes scale-in-ver-top {
   0% {
      -webkit-transform: scaleY(0);
      transform: scaleY(0);
      -webkit-transform-origin: 100% 0%;
      transform-origin: 100% 0%;
      opacity: 1;
   }

   100% {
      -webkit-transform: scaleY(1);
      transform: scaleY(1);
      -webkit-transform-origin: 100% 0%;
      transform-origin: 100% 0%;
      opacity: 1;
   }
}

thead {
   border-radius: 1vw;
   border: 0.2vw solid orange;
   
}

th {
   position: sticky;
   top: -2;
   /* Don't forget this, required for the stickiness */
    font-size: .85em;
    letter-spacing: .1em;
    text-transform: uppercase;
   text-align: center;
   padding: .625em;
   color: white;
   background-color: #44921f;
   border: 0.2vw solid orange;
   border-top: 0.2vw solid orange !important;
   border-bottom: 0.2vw solid orange !important;
}

td {
   font-size: 1.1vw;
   text-align: center;
   color: black;
   font-family: Tw cen MT;
   font-weight: bold;
    padding: .625em;
   border: 0.2vw solid orange;
   background-color: #F9F2DF;
}
.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	background-color:#ff9900;
	color: #fff;
	text-align: center;
	height: 50px;
 	line-height: 50px;
 	font-weight:bold;
 	text-shadow:0 0 3px black;
}

table caption {
   font-size: 1.5em;
   margin: .5em 0 .75em;
}

table tr {
   background-color: #f8f8f8;
   border: 1px solid #ddd;
   padding: .35em;
}


@media screen and (max-width: 600px) {
   table {
      border: 0;
   }

   table caption {
      font-size: 1.3em;
   }

   table thead {
      clip: rect(0, 0, 0, 0);
      height: 1px;
      margin: -1px;
      overflow: hidden;
      padding: 0;
      position: absolute;
      width: 1px;
       border-radius: 1vw;
       border: 0.2vw solid orange;
   }

   table tr {
      border-bottom: 3px solid #ddd;
      display: block;
      margin-bottom: .625em;
   }

   table td {
      display: block;
      font-size: .8em;
      text-align: right;    
       color: black;
       font-family: Tw cen MT;
       font-weight: bold;
       padding: .625em;
       border: 0.2vw solid orange;
       background-color: #F9F2DF;
   }

   table td::before {
      content: attr(data-label);
      float: left;
      font-weight: bold;
      text-transform: uppercase;
   }

   table td:last-child {
      border-bottom: 0;
   }
   
}
</style>
<body>
	<table>
		<thead>
			<%
			String email = session.getAttribute("email").toString();
			int total = 0;
			int sno = 0;
			try {
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs1 = st.executeQuery("select sum(total) from cart where email='" + email + "' and address is NULL");
				while (rs1.next()) {
					total = rs1.getInt(1);
				}
			%>
			<tr>
				<th scope="col"><a style="color: white; font-family:sans-serif;" href="myCart.jsp"><i
						class='fas fa-arrow-circle-left'> Back</i></a></th>
				<th scope="col" style="background-color: #FF2400;color:black;">Total: <i
					class="fa fa-inr"></i> <%
					out.println(total) ;
					%>
				</th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th scope="col">S.No</th>
				<th scope="col">Product Name</th>
				<th scope="col">Category</th>
				<th scope="col"><i class="fa fa-inr"></i> price</th>
				<th scope="col">Quantity</th>
				<th scope="col">Sub Total</th>
			</tr>
		</thead>
		<tbody>
			<%
			ResultSet rs = st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email='"
					+ email + "' and cart.address is NULL");
			while (rs.next()) {
			%>
			<tr><%sno = sno + 1;%>
				<td><%out.println(sno);%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><i class="fa fa-inr"></i> <%=rs.getString(4)%></td>
				<td><%=rs.getString(8)%></td>
				<td><i class="fa fa-inr"></i><%=rs.getString(10)%></td>
			</tr>
<%} 
ResultSet rs2 = st.executeQuery("select * from users where email='"+email+"'");
while(rs2.next())
{
%>
		</tbody>
	</table>

<form action="addressPaymentForOrderAction.jsp" method="post">

	<div class="left-div">
		<h3>Enter Address</h3>
<input class="input-style" type="text" name="address" value="<%=rs2.getString(7) %>" placeholder="Enter address" required>
	</div>

	<div class="right-div">
		<h3>Enter city</h3>
<input class="input-style" type="text" name="city" value="<%=rs2.getString(8) %>" placeholder="Enter City" required>
	</div>

	<div class="left-div">
		<h3>Enter State</h3>
<input class="input-style" type="text" name="state" value="<%=rs2.getString(9) %>" placeholder="Enter State" required>
	</div>

	<div class="right-div">
		<h3>Enter country</h3>
<input class="input-style" type="text" name="country" value="<%=rs2.getString(10) %>" placeholder="Enter Country" required>
	</div>
	<h3 style="color: red">*If there is no address its mean that you
		did not set you address!</h3>
	<h3 style="color: red">*This address will also updated to your
		profile</h3>
	
	<div class="left-div">
		<h3>Select way of Payment</h3>
<select class="input-style" name="paymentMethod">
<option value="Cash on delivery(COD)">Cash on delivery(COD)</option>
<option value="Online Payment">Online Payment</option>
</select>
	</div>

	<div class="right-div">
		<h3>Pay online on this BhargavaG@pay.com</h3>
<input class="input-style" type="text" name="transactionId" placeholder="Enter Transaction ID">
		<h3 style="color: red">*If you select online Payment then enter
			you transaction ID here otherwise leave this blank</h3>
	</div>
	<hr style="width: 100%">

	<div class="left-div">
		<h3>Mobile Number</h3>
<input class="input-style" type="text" name="mobileNumber" value="<%=rs2.getString(3) %>" placeholder="Enter Mobile Number" required>
		<h3 style="color: red">*This mobile number will also updated to
			your profile</h3>
	</div>
	<div class="right-div">
		<h3 style="color: red">*If you enter wrong transaction id then
			your order will we can cancel!</h3>
		<button class="button" type="submit">Proceed to Generate Bill & Save <i class='far fa-arrow-alt-circle-right'></i></button>
		<h3 style="color: red">*Fill form correctly</h3>
	</div>
</form>
	<%
}	
	} catch (Exception e) {
	System.out.println(e);
	}
	%>
	<br>
	<br>
	<br>

</body>
</html>