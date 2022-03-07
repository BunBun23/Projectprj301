<!DOCTYPE html>
<html lang="en">
    
    <head>      
        <title>Register FVax</title>
        <link rel="shortcut icon" type="image/x-icon" href="common/homeAssets/img/registered.png">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="common/assets/css/register.css" rel="stylesheet" type="text/css"/>
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
                                        <h3 class="mb-4">Sign Up</h3>
                                    </div>
                                    ${error}
                                    <div class="w-100">
                                        <p class="social-media d-flex justify-content-end">

                                        </p>
                                    </div>
                                </div>

                                <form action="register?action=checkregister" method="POST" class="signin-form" >

                                    <div class="form-group mt-3">
                                        <input type="text" name="username" class="form-control" required>
                                        <label class="form-control-placeholder" for="username">Username</label>
                                    </div>
                                    <div class="form-group mt-3">
                                        <input type="text" name="fullname" class="form-control" required>
                                        <label class="form-control-placeholder" for="fullname">Full name</label>
                                    </div>
                                    <div class="form-group mt-3">
                                        <input type="email" name="email" class="form-control" required>
                                        <label class="form-control-placeholder" for="email">Email</label>
                                    </div>
                                    <div class="form-group mt-3">
                                        <input type="text" name="fullname" class="form-control" required>
                                        <label class="form-control-placeholder" for="address">Address</label>
                                    </div>
                                    <div class="form-group mt-3">
                                        <input type="date" name="DOB" class="form-control" required>
                                        <label class="form-control-placeholder" for="DOB"></label>
                                    </div>
                                    <div class="form-group mt-3">
                                        <input type="number" name="phone" class="form-control" required>
                                        <label class="form-control-placeholder" for="Gender">Phone</label>
                                    </div>
                                    <div class="form-group mt-3">
                                        <input type="radio" name="Gender" value="1" /> Men
                                        <input type="radio" name="Gender" value="2" /> Woman
                                    </div>
                                    <div class="form-group mt-3">
                                        <input type="number" name="SocialID" class="form-control" required>
                                        <label class="form-control-placeholder" for="SocialID">SocialID</label>
                                    </div>
                                    <div class="form-group">
                                        <input id="password-field" type="password" name="password" class="form-control" required>
                                        <label class="form-control-placeholder" for="password">Password</label>

                                    </div>
                                    <div class="form-group">
                                        <input id="password-field" type="password" name="repassword" class="form-control" required>
                                        <label class="form-control-placeholder" for="repassword">Re-enter password</label>

                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="form-control btn btn-primary rounded submit px-3">Sign Up</button>
                                    </div>
                                    <div class="form-group d-md-flex">

                                    </div>
                                </form>
                                <p class="text-center">Already have an account<a href="login">Sign In</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="common/assets/js/jquery.min.js" type="text/javascript"></script>
        <script src="common/assets/js/popper.js" type="text/javascript"></script>
        <script src="common/assets/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="common/assets/js/register.js" type="text/javascript"></script>
    </body>
</html>