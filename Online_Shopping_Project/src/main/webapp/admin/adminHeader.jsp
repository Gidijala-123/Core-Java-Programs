<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>

    <!--Header-->
    <div class="topnav sticky ">
   <%String email=session.getAttribute("email").toString();%>
       <center><h3 style="color:#44921f;text-shadow: 0px 1px 1px #000;text-align: center;font-size: 25px;font-weight:bold;margin:16px;">Online Shopping By BhargavaG</h3></center>
       <div><a href="addNewProduct.jsp" class="div-box">Add New Product <i class='fas fa-plus-square'></i></a></div>
       <div><a href="allProductEditProduct.jsp" class="div-box">All Products & Edit Products <i class='fab fa-elementor'></i></a></div>
       <div><a href="messagesReceived.jsp" class="div-box">Messages Received <i class='fas fa-comment-alt'></i></a></div>
       <div><a href="ordersReceived.jsp" class="div-box">Orders Received <i class="fas fa-archive"></i></a></div>
       <div><a href="cancelOrders.jsp" class="div-box">Cancel Orders <i class='fas fa-window-close'></i></a></div>
       <div><a href="deliveredOrders.jsp" class="div-box">Delivered Orders <i class='fas fa-dolly'></i></a></div>
       <div><a href="../logout.jsp" class="div-box">Logout <i class='fas fa-share-square'></i></a></div>
    </div>
    <br>
    <!--table-->
