<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
   <!DOCTYPE html>
   <html>

   <head>
      <meta charset="ISO-8859-1">
      <title>GBR's - Forgot Password Page</title>
   </head>

   <style>
      :root {
         --form-height: 550px;
         --form-width: 900px;
         /*  Sea Green */
         --left-color: #EF0107;
         /*  Light Blue  */
         --right-color: #fd5c63;
      }

      body,
      html {
      position:fixed;
         width: 100%;
         height: 100%;
         margin: 0;
         font-family: 'Helvetica Neue', sans-serif;
         letter-spacing: 0.5px;
        background-image: radial-gradient(circle,#FF0090,#DDA0DD);
        padding-top:6px;
       
      }
      body::-webkit-scrollbar{
      	display:none;
      }

      .container {
         width: var(--form-width);
         height: var(--form-height);
         position: relative;
         margin: auto;
         box-shadow: 2px 10px 40px rgba(22, 20, 19, 0.4);
         border-radius: 10px;
         margin-top: 50px;
      }

      /* 
----------------------
      Overlay
----------------------
*/
      .overlay {
         width: 100%;
         height: 100%;
         position: absolute;
         z-index: 100;
         background-image:linear-gradient(to right bottom,#fd5c63,#EF0107);
         border-radius: 10px;
         color: white;
         clip: rect(0, 385px, var(--form-height), 0);
      }

      .open-sign-up {
         animation: slideleft 1s linear forwards;
      }

      .open-sign-in {
         animation: slideright 1s linear forwards;
      }

      .overlay .sign-in,
      .overlay .sign-up {
         /*  Width is 385px - padding  */
         --padding: 50px;
         width: calc(385px - var(--padding) * 2);
         height: 100%;
         display: flex;
         justify-content: center;
         flex-direction: column;
         align-items: center;
         padding: 0px var(--padding);
         text-align: center;
      }

      .overlay .sign-in {
         float: left;
      }

      .overlay-text-left-animation {
         animation: text-slide-in-left 1s linear;
      }

      .overlay-text-left-animation-out {
         animation: text-slide-out-left 1s linear;
      }

      .overlay .sign-up {
         float: right;
      }

      .overlay-text-right-animation {
         animation: text-slide-in-right 1s linear;
      }

      .overlay-text-right-animation-out {
         animation: text-slide-out-right 1s linear;
      }


      .overlay h1 {
         margin: 0px 5px;
         font-size: 2.1rem;
      }

      .overlay p {
         margin: 20px 0px 30px;
         font-weight: 200;
      }

      /* 
------------------------
      Buttons
------------------------
*/
      .switch-button,
      .control-button {
         cursor: pointer;
         display: block;
         margin-left: auto;
         margin-right: auto;
         width: 140px;
         height: 40px;
         font-size: 14px;
         text-transform: uppercase;
         background: none;
         border-radius: 20px;
         color: white;
      }

      .switch-button {
         border: 2px solid;
      }

      .control-button {
         border: none;
         margin-top: 15px;
      }

      .switch-button:focus,
      .control-button:focus {
         outline: none;
      }

      .control-button.up {
         background-color: var(--left-color);
      }

      .control-button.in {
         background-color: var(--right-color);
      }
      .control-button:hover{
      	background-color:#00BFFF;
      	border:2px solid #EF0107;
      }
      

      /* 
--------------------------
      Forms
--------------------------
*/
      .form {
         width: 100%;
         height: 100%;
         position: absolute;
         border-radius: 10px;
      }

      .form .sign-in,
      .form .sign-up {
         --padding: 50px;
         position: absolute;
         /*  Width is 100% - 385px - padding  */
         width: calc(var(--form-width) - 385px - var(--padding) * 2);
         height: 100%;
         display: flex;
         justify-content: center;
         flex-direction: column;
         align-items: center;
         padding: 0px var(--padding);
         text-align: center;
         background-color:#fff;
      }

      /* Sign in is initially not displayed */
      .form .sign-in {
         display: none;
      }

      .form .sign-in {
         left: 0;
      }

      .form .sign-up {
         right: 0;
      }

      .form .sign-in h1 {
         color: var(--right-color);
         margin: 0;
      }

      .form .sign-up h1 {
         color: var(--left-color);
         margin: 0;
      }

      .social-media-buttons {
         display: flex;
         justify-content: center;
         width: 100%;
         margin: 15px;
      }

      .social-media-buttons .icon {
         width: 40px;
         height: 40px;
         border: 1px solid #dadada;
         border-radius: 100%;
         display: flex;
         justify-content: center;
         align-items: center;
         margin: 10px 7px;
      }

      .small {
         font-size: 13px;
         color: grey;
         font-weight: 200;
         margin: 5px;
      }

      .social-media-buttons .icon svg {
         width: 25px;
         height: 25px;
      }

      #sign-in-form input,
      #sign-up-form input,
      #sign-up-form select {
         margin: 12px;
         font-size: 14px;
         padding: 15px;
         width: 260px;
         font-weight: 300;
         border: none;
         background-color: #fff6e5;
         font-family: 'Helvetica Neue', sans-serif;
         letter-spacing: 1.5px;
         padding-left: 20px;
         outline:none;
      }

      #sign-in-form input::placeholder {
         letter-spacing: 1px;
      }

      #sign-up-form select {
         width: 71%;
      }

      .forgot-password {
         font-size: 12px;
         font-weight: 700;
         display: inline-block;
         border-bottom: 2px solid #efebeb;
         padding-bottom: 3px;
         text-decoration: none;
      }

      .forgot-password:hover {
         cursor: pointer;
      }

      .updatedPasswordHeading{
      	color:red;
      	font-weight:bold;
      	text-align:center;
      	text-shadow:1px 0 2px black;
      }
   </style>

   <body>
        <div class="container">
         <div class="overlay" id="overlay">
            <div class="sign-in" id="sign-in">
               <h1>Don't Worry..!</h1>
               <p>Please fill the details provided in the form to update and recover your password </p>
               <a style="text-decoration: none;" href="signuploginslider.jsp"><button style="border: 2px solid white;" type="submit" value="login" class="control-button in">Sign In</button></a>
            </div>
         
         </div>

         <div class="form">
            <div class="sign-up" id="sign-up-info">
               <h1>Update Account</h1>
               <form id="sign-up-form" action="forgotPasswordAction.jsp" method="post">
                  <input type="email" name="email" placeholder="Enter email id" required>
                  <input type="number" name="mobileNumber" placeholder="Enter mobile number" required>
                  <select name="securityQuestion" required>
                     <option value="What was your pet name">What was your pet name</option>
                     <option value="What is your childhood friend name">What is your childhood friend name</option>
                     <option value="What is your school name">What is your school name</option>
                  </select> 
                  <input type="text" name="answer" placeholder="Enter your answer" required>
       			  <input type="password" name="newPassword" placeholder="Enter new password to update" required>
                  <button type=submit value="save" class="control-button up">Update</button>
               </form>
            </div>
         </div>
      </div> 
        
      <div class='whyforgotPassword'>
	   <%
	   String msg = request.getParameter("msg");
	   if("done".equals(msg))
	   {
	   %>
		<h2 class="updatedPasswordHeading">Password Updated Successfully..!</h2>
		<%} %>
		<%
		if("invalid".equals(msg))
		{
		%>
		<h1>Something Went Wrong! Try Again !</h1>
		<%} %>
	  </div>
	</div>
        
      <script>
         var overlay = document.getElementById("overlay");

         // Buttons to 'switch' the page
         var openSignUpButton = document.getElementById("slide-left-button");
         var openSignInButton = document.getElementById("slide-right-button");

         // The sidebars
         var leftText = document.getElementById("sign-in");
         var rightText = document.getElementById("sign-up");

         // The forms
         var accountForm = document.getElementById("sign-in-info")
         var signinForm = document.getElementById("sign-up-info");

         // Open the Sign Up page
         openSignUp = () => {
            // Remove classes so that animations can restart on the next 'switch'
            leftText.classList.remove("overlay-text-left-animation-out");
            overlay.classList.remove("open-sign-in");
            rightText.classList.remove("overlay-text-right-animation");
            // Add classes for animations
            accountForm.className += " form-left-slide-out"
            rightText.className += " overlay-text-right-animation-out";
            overlay.className += " open-sign-up";
            leftText.className += " overlay-text-left-animation";
            // hide the sign up form once it is out of view
            setTimeout(function () {
               accountForm.classList.remove("form-left-slide-in");
               accountForm.style.display = "none";
               accountForm.classList.remove("form-left-slide-out");
            }, 700);
            // display the sign in form once the overlay begins moving right
            setTimeout(function () {
               signinForm.style.display = "flex";
               signinForm.classList += " form-right-slide-in";
            }, 200);
         }

         // Open the Sign In page
         openSignIn = () => {
            // Remove classes so that animations can restart on the next 'switch'
            leftText.classList.remove("overlay-text-left-animation");
            overlay.classList.remove("open-sign-up");
            rightText.classList.remove("overlay-text-right-animation-out");
            // Add classes for animations
            signinForm.classList += " form-right-slide-out";
            leftText.className += " overlay-text-left-animation-out";
            overlay.className += " open-sign-in";
            rightText.className += " overlay-text-right-animation";
            // hide the sign in form once it is out of view
            setTimeout(function () {
               signinForm.classList.remove("form-right-slide-in")
               signinForm.style.display = "none";
               signinForm.classList.remove("form-right-slide-out")
            }, 700);
            // display the sign up form once the overlay begins moving left
            setTimeout(function () {
               accountForm.style.display = "flex";
               accountForm.classList += " form-left-slide-in";
            }, 200);
         }

         // When a 'switch' button is pressed, switch page
         openSignUpButton.addEventListener("click", openSignUp, false);
         openSignInButton.addEventListener("click", openSignIn, false);

      </script>
   </body>

   </html>
