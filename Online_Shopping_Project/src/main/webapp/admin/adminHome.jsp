<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>welcome</title>
  <link rel='stylesheet' href='https://unpkg.com/splitting/dist/splitting.css'>
  <link rel='stylesheet' href='https://unpkg.com/splitting/dist/splitting-cells.css'>
</head>
<style>
@import url(https://fonts.googleapis.com/css?family=Kanit:600);
  body {
  font-size: 100%; 
  width: 100%;
   background-size:cover;
   background-repeat:no-repeat;
   height:100vh;
   background-image: radial-gradient( circle 489px at 49.3% 46.6%,  rgba(255,214,126,1) 0%, rgba(253,200,0,1) 100.2% );
    /*background-color: #2F3242;*/
}

svg {
  position: absolute;
  top: 50%;
  left: 50%;
  margin-top: -250px;
  margin-left: -400px;
}
.message-box {
  height: 200px;
  width: 380px;
  position: absolute;
  top: 50%;
  left: 60%;
  margin-top: -100px;
}

.buttons-con .action-link-wrap {
  margin-top: 40px;
}
.buttons-con .action-link-wrap a {
  background: #68c950;
  padding: 8px 25px;
  border-radius: 4px;
  color: #FFF;
  font-weight: bold;
  font-size: 14px;
  transition: all 0.3s linear;
  cursor: pointer;
  text-decoration: none;
  margin-right: 10px
}
.buttons-con .action-link-wrap a:hover {
  background: #5A5C6C;
  color: #fff;
}

#Polygon-1 , #Polygon-2 , #Polygon-3 , #Polygon-4 , #Polygon-4, #Polygon-5 {
  animation: float 1s infinite ease-in-out alternate;
}
#Polygon-2 {
  animation-delay: .2s; 
}
#Polygon-3 {
  animation-delay: .4s; 
}
#Polygon-4 {
  animation-delay: .6s; 
}
#Polygon-5 {
  animation-delay: .8s; 
}

@keyframes float {
	100% {
    transform: translateY(20px);
  }
}
@media (max-width: 450px) {
  svg {
    position: absolute;
    top: 50%;
    left: 50%;
    margin-top: -250px;
    margin-left: -190px;
  }
  .message-box {
    top: 50%;
    left: 50%;
    margin-top: -100px;
    margin-left: -190px;
    text-align: center;
  }
}
.navbar {
  position: fixed;
  display: inline-block;
  top: 0;
  left: 0;
  right: 0;
  z-index: 9999;
  height: 60px;
  width: 100%;
  background: #bbb;
  padding: 10px 20px;
  float: none;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  float: right;
  margin: 0px 10px;
}

#welcome-page {
  background-image: url(http://www.bartsalle.nl/wp-content/uploads/2013/12/background-css-750x450.jpg);
  background-attachment: fixed;
  background-position: center;
  background-size: cover;
  height: 700px;
}

#welcome-text {
  text-align: center;
}

.block {
  background: rgba(128, 128, 128, 128);
  border: #FFF 20px double;
  border-radius: 10px;
  color: #FFG;
  display: inline-block;
  font-size: 60px;
  font-weight: 800;
  padding: 0 10px 7px;
  margin: 250px;
  text-align: center;
}


#aboutme {
  background-size: cover;
  background: #d3d9d9;
  background-image: url(https://i.stack.imgur.com/jGlzr.png);
  background-attachment: fixed;
  background-position: center;
  height: 700px;
}

#portfolio {
  background-size: cover;
  background-image: url(https://images6.alphacoders.com/389/389875.jpg);
  background-attachment: fixed;
  background-position: center;
  height: 700px;
}

#footer {
  text-align: center;
  background-size: cover;
  background-image: url(http://carmel.coop/wp-content/uploads/2014/04/Blurred-Background_4.jpg);
  background-attachment: fixed;
  background-position: center;
  height: 250px;
  padding: 20px;
}

.fs {
  font-size: 3em;
}

.img {
  margin: 60px 20px;
  border-radius: 50%;
  height: 550px;
  display: inline-block;
  transform: scale(-1, 1);
  -webkit-transform: scale(-1, 1);
  -moz-transform: scale(-1, 1);
  -o-transform: scale(-1, 1);
}

.title {
  display: inline-block;
  background-color: grey;
  border: #AAA 5px double;
  border-radius: 10px;
  color: blue;
  padding-left: 40px;
  padding-right: 40px;
  text-shadow: 2px 2px 5px #000;
  font-size: 30px;
}

.icon-btn {
  margin: 0 20px;
}
h1{
  font-family: "Open Sans", sans-serif;
  font-weight:bold;
	color:#44921f;
	text-shadow:3px 4px 5px orange;
	text-align:center;
	line-height:70px !important;
	margin-top:65px;
	margin-left:100px !important;
}


.rainbow-text .char {   
 	font: normal 400 5vw/1.5 Kanit, sans-serif;
  	color: hsl(calc(360deg * var(--char-percent)),90%,65%);
 	text-shadow:1 1 3px black;
}

.rainbow-text.animated .char {
  animation: rainbow-colors 4.5s linear infinite;
  animation-delay: calc(-3s * var(--char-percent));
}

@keyframes rainbow-colors {
 0% { color: #FF0800; }
  25% { color: #00FFFF; }
  50% { color: #DDA0DD; }
  75% { color: hsl(.75turn, 90%, 65%); }
  100% { color: hsl(1turn, 90%, 65%); }
}


</style>
<body>
<svg width="380px" height="500px" viewBox="0 0 837 1045" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns">
    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">
        <path d="M353,9 L626.664028,170 L626.664028,487 L353,642 L79.3359724,487 L79.3359724,170 L353,9 Z" id="Polygon-1" stroke="#007FB2" stroke-width="6" sketch:type="MSShapeGroup"></path>
        <path d="M78.5,529 L147,569.186414 L147,648.311216 L78.5,687 L10,648.311216 L10,569.186414 L78.5,529 Z" id="Polygon-2" stroke="#EF4A5B" stroke-width="6" sketch:type="MSShapeGroup"></path>
        <path d="M773,186 L827,217.538705 L827,279.636651 L773,310 L719,279.636651 L719,217.538705 L773,186 Z" id="Polygon-3" stroke="#795D9C" stroke-width="6" sketch:type="MSShapeGroup"></path>
        <path d="M639,529 L773,607.846761 L773,763.091627 L639,839 L505,763.091627 L505,607.846761 L639,529 Z" id="Polygon-4" stroke="#F2773F" stroke-width="6" sketch:type="MSShapeGroup"></path>
        <path d="M281,801 L383,861.025276 L383,979.21169 L281,1037 L179,979.21169 L179,861.025276 L281,801 Z" id="Polygon-5" stroke="#36B455" stroke-width="6" sketch:type="MSShapeGroup"></path>
    </g>
</svg>
<div class="message-box">
  <div class="rainbow-text" data-splitting></div>
  <div class="rainbow-text animated" data-splitting>Welcome Bhargava</div>
  </div>
</div>
  <script src='https://unpkg.com/splitting/dist/splitting.min.js'></script>
  <script>Splitting();</script>
</body>

</html>
