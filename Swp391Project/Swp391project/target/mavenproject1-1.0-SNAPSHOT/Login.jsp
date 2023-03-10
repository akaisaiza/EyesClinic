<%-- 
    Document   : Login.jsp
    Created on : Jan 29, 2023, 9:12:24 PM
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



<<<<<<< Updated upstream
                    
=======
                    <c:set var="cookie" value="${pageScope.cookies}"/>
>>>>>>> Stashed changes
                    <form class="login100-form validate-form" action="loginuser" method="post">
                        

                        <span class="login100-form-title p-b-49">
                            Login
                        </span>

                        <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
                            <span class="label-input100">Username</span>
                            <input class="input100" type="text" name="account" placeholder="Type your username"  value="${cookie.acc.value}">
                            <span class="focus-input100" data-symbol="&#xf206;"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="Password is required">
                            <span class="label-input100">Password</span>
                            <input class="input100" type="password" name="password" placeholder="Type your password" value="${cookie.pass.value}">
                            <span class="focus-input100" data-symbol="&#xf190;"></span>
                        </div>
                        <c:if test="${ms1 ne null}" >
                            <p  style="color: red;font-size: 20px">${ms1}</p>
                        </c:if>  
                        <div class="text-right p-t-8 p-b-31">
<<<<<<< Updated upstream
                            <a href="ForgotPassword.jsp">
=======
                             <input type="checkbox" name="rememberpass"  
                                   ${cookie.status!=null?'checked':''} value="ON"/> Rememmber password
                            <a href="ForgotPassword.jsp" style="margin-left: 30px">
>>>>>>> Stashed changes
                                Forgot password?
                            </a>
                        </div>
                        
                        <div class="container-login100-form-btn">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button class="login100-form-btn" style="background-color: #5bc1ac;">
                                    Login
                                </button>
                            </div>
                        </div>

                        <div class="txt1 text-center p-t-54 p-b-20">
                            <span>
                                Or Sign Up Using
                            </span>
                        </div>

                        <div class="flex-c-m">
                            <a href="https://www.facebook.com/dialog/oauth?client_id=1139592463416490&redirect_uri=http://localhost:8909/mavenproject1/loginwithfacebook" class="login100-social-item bg1">
                                <i class="fa fa-facebook"></i>
                            </a>



                            <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8909/mavenproject1/loginwithgoogle&response_type=code&client_id=440656250085-3d24uvmbsdou0vkjg15q14q8l3qdbfao.apps.googleusercontent.com&approval_prompt=force" class="login100-social-item bg3">
                                <i class="fa fa-google"></i>
                            </a>
                        </div>

                        <div class="flex-col-c p-t-70">


                            <a href="Register.jsp" class="txt2">
                                Register
                            </a>
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
