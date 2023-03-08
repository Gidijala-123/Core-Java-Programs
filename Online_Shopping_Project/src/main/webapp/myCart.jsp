<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
<style>
.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	background-color:#ff9900 !important;
	color: #fff !important;
	text-align: center !important;
	
}
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
table {
    border: 1px solid #ccc;
    border-collapse: collapse;
    margin: 0;
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

.total-style{
background-image: radial-gradient(circle,#00BFFF,#0000FF);
}
.proceed-to-order-style{
	background-image: radial-gradient(circle,#FF4500,#ED2939);
	color:#fff !important;
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
      /*
    * aria-label has no advantage, it won't be read inside a table
    content: attr(aria-label);
    */
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
</head>
<body>
	<div style="color:darkblue;text-shadow: 1px 1px 3px #BD07F9,0px 0px 5px white; text-align: center; font-size: 25px; font-weight:bold;margin-bottom:15px; ">My Cart <i class='fas fa-cart-arrow-down'></i></div>
	<%
	String msg = request.getParameter("msg");
	if ("notPossible".equals(msg)) {
	%>
	<h3 class="alert">There is only one Quantity! So click on remove!</h3>
	<%
	}
	%>
	<%
	if ("inc".equals(msg)) {
	%>
	<h3 class="alert">Quantity Increased Successfully!</h3>
	<%
	}
	%>
	<%
	if ("dec".equals(msg)) {
	%>
	<h3 class="alert">Quantity Decreased Successfully!</h3>
	<%
	}
	%>
	<%
	if ("removed".equals(msg)) {
	%>
	<h3 class="alert">Product Successfully Removed!</h3>
	<%
	}
	%>
	<table>
		<thead>
			<%
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
				<th scope="col" class="total-style">Total: <i
					class="fa fa-inr">
						<%
						out.println(total);
						%>
				</i>
				</th>
				<%
				if (total > 0) {
				%><th class="proceed-to-order-style" scope="col"><a
					href="addressPaymentForOrder.jsp">Proceed to order</a></th>
				<%
				}
				%>
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
				<th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
			</tr>
		</thead>
		<tbody>
			<%
			ResultSet rs = st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email='"
					+ email + "' and cart.address is NULL");
			while (rs.next()) {
			%>
			<tr>
				<%
				sno = sno + 1;
				%>
				<td>
					<%
					out.println(sno);
					%>
				</td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(4)%></td>
				<td><i class="fa fa-inr"></i> <%=rs.getString(4)%></td>
				<td><a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=inc"><i class='fas fa-plus-circle'></i></a> <%=rs.getString(8)%>
					<a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=dec"><i class='fas fa-minus-circle'></i></a></td>
				<td><i class="fa fa-inr"></i> <%=rs.getString(10)%></td>
				<td><a href="removeFromCart.jsp?id=<%=rs.getString(1)%>">Remove <i class='fas fa-trash-alt'></i></a></td>
			</tr>
			<%
			}
			} catch (Exception e) {
			}
			%>
		</tbody>
	</table>

</body>
</html>