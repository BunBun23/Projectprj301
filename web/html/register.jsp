<%-- 
    Document   : resiter
    Created on : Feb 8, 2022, 6:44:30 PM
    Author     : Bun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/register.css" type="text/css">
    </head>    
    <body>
        <div id="container" class="container">
            <!-- FORM SECTION -->
            <div class="row">
                <!-- SIGN UP -->

                <div class="col align-items-center flex-col sign-up">
                    <div class="form-wrapper align-items-center">
                        <div class="form sign-up">
                            ${error}
                            <form action="register?action=checkregister" method="post">
                                <div class="input-group">
                                    <i class='bx bxs-user'></i>
                                    <input type="text" required name="username" placeholder="Username">
                                </div>
                                <div class="input-group">
                                    <i class='bx bxs-user'></i>
                                    <input type="text" required name="fullname" placeholder="Full name">
                                </div>
                                <div class="input-group">
                                    <i class='bx bx-mail-send'></i>
                                    <input type="email" required name="email" placeholder="Email">
                                </div>
                                <div class="input-group">
                                    <i class='bx bx-mail-send'></i>
                                    <input type="text" required name="address" placeholder="Address">
                                </div>
                                <div class="input-group">
                                    <i class='bx bx-mail-send'></i>
                                    <input type="date" required name="DOB" placeholder="DOB">
                                </div>
                                <div class="input-group">
                                    <i class='bx bx-mail-send'></i>
                                    <input type="number" required name="phone" placeholder="Phone">
                                </div>
                                <input type="radio" name="Gender" value="1" /> Men
                                <input type="radio" name="Gender" value="2" /> Woman                               
                                <div class="input-group">
                                    <i class='bx bxs-lock-alt'></i>
                                    <input type="password" required name="password" placeholder="Password">
                                </div>
                                <div class="input-group">
                                    <i class='bx bxs-lock-alt'></i>
                                    <input type="password" required name="repassword" placeholder="Confirm password">
                                </div>
                                <button>
                                    Sign up
                                </button>
                            </form>
                            <p>
                                <span>
                                    Already have an account?
                                </span>
                                <b onclick="toggle()" class="pointer">
                                    Sign in here
                                </b>
                            </p>
                        </div>
                    </div>

                </div>
                <!-- END SIGN UP -->
                <!-- SIGN IN -->
                <div class="col align-items-center flex-col sign-in">
                    <div class="form-wrapper align-items-center">
                        <div class="form sign-in">
                            <p style="color: red; align-content: center;">
                                ${requestScope.error}
                            </p>
                            <p style="color: blue; align-content: center;">
                                ${requestScope.success}
                            </p>
                            <div class="input-group">
                                <i class='bx bxs-user'></i>
                                <input type="text" placeholder="Username">
                            </div>
                            <div class="input-group">
                                <i class='bx bxs-lock-alt'></i>
                                <input type="password" placeholder="Password">
                            </div>
                            <button>
                                Sign in
                            </button>
                            <p>
                                <b>
                                    Forgot password?
                                </b>
                            </p>
                            <p>
                                <span>
                                    Don't have an account?
                                </span>
                                <b onclick="toggle()" class="pointer">
                                    Sign up here
                                </b>
                            </p>
                        </div>
                    </div>
                    <div class="form-wrapper">

                    </div>
                </div>
                <!-- END SIGN IN -->
            </div>  
            </div>
            <!-- END CONTENT SECTION -->
        </div>
        <script src="js/resiter.js" type="text/javascript"></script>
    </body>
</html>
