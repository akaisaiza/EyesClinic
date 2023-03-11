<%-- 
    Document   : ForgotPassword
    Created on : Feb 11, 2023, 8:34:07 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login V4</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="assets/fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="assets/vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="assets/vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="assets/vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="assets/vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="assets/vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="assets/css/util.css">
        <link rel="stylesheet" type="text/css" href="assets/css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>

        <div class="limiter">
            <div class="container-login100" style="background-image: url('assets/images/bgr.jpg');">
                <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">

                    <form class="login100-form validate-form" action="changePass" method="get">

                        <span class="login100-form-title p-b-49" style="font-size: 20px">
                            Fill information to change password
                        </span>

                        <div class="wrap-input100 validate-input m-b-23">
                            <span class="label-input100">Enter your old password </span>
                            <input class="input100" type="password" name="oldPass" placeholder="Enter old password">
                            <span class="focus-input100" data-symbol="&#xf206;"></span>
                              
                        </div>
                        <c:if test="${ms2 ne null}" >
                            <p  style="color: red;font-size: 20px">${ms2}</p>
                        </c:if>
                        <div class="wrap-input100 validate-input m-b-23">
                            <span class="label-input100">Enter new password </span>
<<<<<<< Updated upstream:Swp391Project/Swp391project/target/mavenproject1-1.0-SNAPSHOT/changePass.jsp
<<<<<<< Updated upstream

                            <input class="input100" type="text" name="newPass" placeholder="Enter new password">
                            <span class="focus-input100" data-symbol="&#xf206;"></span>
                        </div>
                        <div class="wrap-input100 validate-input m-b-23">
                            <span class="label-input100"> </span>
                            <input class="input100" type="text" name="checkNewPass" placeholder="Enter new password again">
                            <span class="focus-input100" data-symbol="&#xf206;"></span>
                            <%
                                String error = (String) request.getAttribute("error");
                                if (error != null) {
                            %>
                            <p style="color:red;"> <%= error%> </p>
                            <%
                                }
                            %>
                        </div>

=======
>>>>>>> Stashed changes
                            <input class="input100" type="text" minlength="8"  name="newPass" placeholder="Enter new password">
=======
                            <input class="input100" type="password" minlength="8"  name="newPass" placeholder="Enter new password">
>>>>>>> Stashed changes:Swp391Project/Swp391project/src/main/webapp/changePass.jsp
                            <span class="focus-input100" data-symbol="&#xf206;"></span>
                        </div>




<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
                        <div class="container-login100-form-btn">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <input type="submit" class="login100-form-btn" value="Change PassWord" style="background-color: #5bc1ac;">
                                  
                               

                            </div>
                        </div>



                    </form>
                </div>
            </div>
        </div>


        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="assets/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="assets/vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="assets/vendor/bootstrap/js/popper.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="assets/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="assets/vendor/daterangepicker/moment.min.js"></script>
        <script src="assets/vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="assets/vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="assets/js/main.js"></script>

    </body>
</html>