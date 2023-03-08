<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Home</title>
<style>
.th-style
{ width: 25%;}

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
.alert
{
	color:yellow;
	text-align: center;
}

#customers table {
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

#customers thead {
   border-radius: 1vw;
   border: 0.2vw solid orange;
   
}

#customers th {
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

#customers td {
   font-size: 1.1vw;
   text-align: center;
   color: black;
   font-family: Tw cen MT;
   font-weight: bold;
    padding: .625em;
   border: 0.2vw solid orange;
   background-color: #F9F2DF;
}

#customers table caption {
   font-size: 1.5em;
   margin: .5em 0 .75em;
}

#customers table tr {
   background-color: #f8f8f8;
   border: 1px solid #ddd;
   padding: .35em;
}


@media screen and (max-width: 600px) {
   #customers table {
      border: 0;
   }

   #customers table caption {
      font-size: 1.3em;
   }

   #customers table thead {
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

   #customers table tr {
      border-bottom: 3px solid #ddd;
      display: block;
      margin-bottom: .625em;
   }

   #customers table td {
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

  #customers  table td::before {
      /*
    * aria-label has no advantage, it won't be read inside a table
    content: attr(aria-label);
    */
      content: attr(data-label);
      float: left;
      font-weight: bold;
      text-transform: uppercase;
   }

   #customers table td:last-child {
      border-bottom: 0;
   }
}
</style>
</head>
<body>
<div style="color:darkblue;text-shadow: 1px 1px 3px #BD07F9,0px 0px 5px white; text-align: center; font-size: 25px; font-weight:bold;margin-bottom:15px; ">Orders Received <i class='fas fa-archive'></i></div>
<%
String msg = request.getParameter("msg");
if("cancel".equals(msg))
{
%>
<h3 class="alert">Order Cancel Successfully!</h3>
<%} %>
<%
if("delivered".equals(msg))
{
%>
<h3 class="alert">Successfully Updated!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>

<table id="customers">
          <tr>
          <th>Mobile Number</th>
            <th scope="col">Product Name</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">T-ID</th>
              <th scope="col">Status</th>
              <th scope="col">Cancel order <i class='fas fa-window-close'></i></th>
              <th scope="col">Order Delivered <i class='fas fa-dolly'></i></i></th>
          </tr>
        <%
        try{
        	Connection con = ConnectionProvider.getCon();
        	Statement st = con.createStatement();
        	ResultSet rs = st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status='processing'");
        	while(rs.next())
        	{
        %>
       
          <tr>
          <td><%=rs.getString(10) %></td>
            <td><%=rs.getString(17) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(5) %> </td>
                <td<%=rs.getString(6) %>></td>
               <td><%=rs.getString(7) %></td>
                <td><%=rs.getString(8) %></td>
                 <td><%=rs.getString(9) %></td>
             <td><%=rs.getString(11) %></td>
              <td><%=rs.getString(12) %></td>
               <td><%=rs.getString(13) %></td>
               <td><%=rs.getString(14) %></td>
               <td><%=rs.getString(15) %></td>
               <td><a href="cancelOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Cancel <i class='fas fa-window-close'></i></a></td>
                <td><a href="deliveredOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Delivered <i class='fas fa-dolly'></i></i></a></td>
            </tr>
               <%  }
        }
        catch(Exception e){
        	System.out.println(e);
        }%>
        </table>
      <br>
      <br>
      <br>

</body>
</html>