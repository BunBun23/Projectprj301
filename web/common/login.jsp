<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Login FVax</title>
        <link rel="shortcut icon" type="image/x-icon" href="common/homeAssets/img/login.png">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="common/assets/css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background-image: url('common/homeAssets/img/healthcare.jpg');">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">

                </div>
                <div class="row justify-content-center">
                    <div class="col-md-7 col-lg-5">
                        <div class="wrap">

                            <div class="login-wrap p-4 p-md-5">
                                <div class="d-flex">
                                    <div class="w-100">
                                        <h3 class="mb-4">Sign In</h3>                                       
                                    </div>
                                    ${success}
                                    <div class="w-100">

                                    </div>
                                </div>
                                <form action="login" method="POST" class="signin-form">
                                    ${message}
                                    <div class="form-group mt-3">
                                        <input type="text" class="form-control" name="username" value="${name}" required>
                                        <label class="form-control-placeholder" for="username">Username</label>
                                    </div>
                                    <div class="form-group">
                                        <input id="password-field" type="password" class="form-control" name="password" value="${pass}" required>
                                        <label class="form-control-placeholder" for="password">Password</label>
                                        <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="form-control btn btn-primary rounded submit px-3">Sign In</button>
                                    </div>
                                    <p class="text-center"><a href="customer/resetPassword.jsp">Forgot password</a></p>
                                </form>
                                <p class="text-center">Not a member? <a href="register">Sign Up</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <script src="common/assets/js/jquery.min.js" type="text/javascript"></script>
        <script src="common/assets/js/popper.js" type="text/javascript"></script>
        <script src="common/assets/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="common/assets/js/login.js" type="text/javascript"></script>
    </body>
</html>

