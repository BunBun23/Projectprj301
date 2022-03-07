<%-- 
    Document   : feedback
    Created on : Mar 2, 2022, 12:44:08 PM
    Author     : Bun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Colorlib Templates">
        <meta name="author" content="Colorlib">
        <meta name="keywords" content="Colorlib Templates">
        <title>My Feedback</title>
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
        <link href="common/assets/css/feedback.css" rel="stylesheet" media="all">
    </head>

    <body>
        <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins ">
            <div class="wrapper wrapper--w680">
                <div class="card card-4">
                    <div class="card-body">
                        <h2 class="title">Doctor Quality Feedback</h2>
                        <form action="feedback" method="post" >
                            <label class="label">Quality selection</label>
                            <select name="type" id="type">
                                <option value="VeryGood">Very Good</option>
                                <option value="Good">Good</option>
                                <option value="Bad">Bad</option>
                            </select>
                            <div class="form-group">
                                <label class="label">Feedback</label>
                                <input type="textarea" name="detail" class="form-control" value="" required="" />
                            </div>
                            <div class="p-t-15">
                                <input type="submit" class="btn btn--radius-2 btn--blue" value="Send" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>