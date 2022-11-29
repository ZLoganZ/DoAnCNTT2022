<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
  <head>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css"/> 
         
         <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
    <!-- Google Fonts Roboto -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" /> 
    <!-- MDB -->
    <link rel="stylesheet" href="css/mdb.min.css" />
    <!-- Custom styles -->
    <style><%@include file="/css/editP.css"%></style>
    
      <!-- Roboto Font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700&display=swap"> 
  
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">

  <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">

  <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css"> 
    <title>Edit Profile</title>
  </head>
  <body>
    <jsp:include page="Menu.jsp"></jsp:include>
    <div class="box">
      <form action="editProfile" method="post">
        <h2>Edit Profile</h2>
        <c:if test="${error!=null }">
                <style>
                    .inputBox{
                        margin-top: 20px !important;
                    }
                </style>
                 <div class="alert alert-danger" role="alert" style="margin-top:10px !important;">
						 ${error}
				</div>
				</c:if>
				<c:if test="${mess!=null }">
                    <style>
                        .inputBox{
                            margin-top: 20px !important;
                        }
                    </style>
                <div class="alert alert-success" role="alert" style="margin-top:10px !important;">
				  	${mess}
				</div>
				</c:if>
        <div class="inputBox">
          <input
          name="username"
          type="text"
          value="${sessionScope.acc.user}"
          required="required"
        />
        <span>Username</span>
        <i></i>
        </div>
        <div class="inputBox">
          <input
          name="name"
          type="text"
          value="${sessionScope.acc.name}"
          required="required"
        />
        <span>Name</span>
        <i></i>
        </div>
        
        <div class="inputBox">
          <input
          name="password"
          type="password"
          value="${sessionScope.acc.pass}"
          required="required"
        />
        <span>Password</span>
        <i></i>
        </div>
        
        <div class="inputBox">
          <input
          name="email"
          type="email"
          value="${sessionScope.acc.email}"
          required="required"
        />
        <span>Email</span>
        <i></i>
        </div>
        
        <input type="submit" value="Edit">
      </form>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
    <script>
      function toggleResetPswd(e) {
        e.preventDefault();
        $("#logreg-forms .form-signin").toggle(); // display:block or none
        $("#logreg-forms .form-reset").toggle(); // display:block or none
      }

      function toggleSignUp(e) {
        e.preventDefault();
        $("#logreg-forms .form-signin").toggle(); // display:block or none
        $("#logreg-forms .form-signup").toggle(); // display:block or none
      }

      $(() => {
        // Login Register Form
        $("#logreg-forms #forgot_pswd").click(toggleResetPswd);
        $("#logreg-forms #cancel_reset").click(toggleResetPswd);
        $("#logreg-forms #btn-signup").click(toggleSignUp);
        $("#logreg-forms #cancel_signup").click(toggleSignUp);
      });

      window.addEventListener(
        "load",
        function loadAmountCart() {
          $.ajax({
            url: "/WebsiteBanGiay/loadAllAmountCart",
            type: "get", //send it through get method
            data: {},
            success: function (responseData) {
              document.getElementById("amountCart").innerHTML = responseData;
            },
          });
        },
        false
      );
    </script>
  </body>
</html>
