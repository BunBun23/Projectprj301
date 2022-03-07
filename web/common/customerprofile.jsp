<%-- 
    Document   : vaccinepage
    Created on : Feb 15, 2022, 9:58:04 AM
    Author     : haipr
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<!DOCTYPE html>
<html>
    <!-- ======= header ======= -->
    <%@include file="../components/header.jsp" %>
    <main id="main">

        <!-- ======= Breadcrumbs Section ======= -->
        <section class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>Inner Page</h2>
                    <ol>
                        <li><a href="index.html">Home</a></li>
                        <li>Inner Page</li>
                    </ol>
                </div>

            </div>
        </section><!-- End Breadcrumbs Section -->

        <div class="container-xl px-4 mt-4">
            <!-- Account page navigation-->
            <hr class="mt-0 mb-4">
            <div class="row">

                <div class="col-xl-12">
                    <!-- Account details card-->


                    <div class="card mb-4">

                        <div class="card-body">
                            <form action="customerpf" method="POST">
                                <% ResultSet rsGetCusByUser = (ResultSet) request.getAttribute("rsGetCusByUser");
                                    while (rsGetCusByUser.next()) {
                                %>
                                <!-- Form Group (username)-->
                                <div class="row mt-5" style="border: 1px solid #ced4da !important; border-radius: 5px !important">
                                    <div class="col-md-4 mt-3 text-center">
                                        <h3 style="color: orange">account infomation</h3>
                                        <hr/>
                                        <div class="mt-3"><a class="btn btn-outline-primary" onclick="openSetting()">Change personal information</a></div>
                                    </div>
                                    <div class="col-md-8" style="border: 1px solid #ced4da;">
                                        <h3 class="text-center pt-3" style="color: orange">Detail</h3>
                                        <hr/>
                                        <div class="row">
                                            <div class="col-md-7">
                                                <table class="mt-5 mb-3">
                                                    <tr>
                                                        <td>user name:</td>
                                                        <td>${sessionScope.acc.username}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>full name:</td>
                                                        <td><%=rsGetCusByUser.getString(2)%></td>
                                                    </tr>
                                                    <tr>
                                                        <td>address: </td>
                                                        <td><%=rsGetCusByUser.getString(4)%></td>
                                                    </tr>
                                                    <tr>
                                                        <td>email: </td>
                                                        <td><%=rsGetCusByUser.getString(3)%></td>
                                                    </tr>
                                                    <tr>
                                                        <td>phone:  </td>
                                                        <td><%=rsGetCusByUser.getString(6)%></td>
                                                    </tr>
                                                    <tr>
                                                        <td>gender:  </td>
                                                        <td><%=(rsGetCusByUser.getInt(8) == 1 ? "Male" : "Female")%> </td>
                                                    </tr>
                                                    <tr>
                                                        <td>date of birth:  </td>
                                                        <td><%=rsGetCusByUser.getString(5)%></td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="col-md-5">
                                                <img style="margin-top: -30px" class="img-circle" src="images/AccountIcon2.png" alt=""/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="setting" class="row mt-3">
                                    <div class="mb-3">
                                        <label class="small mb-1" for="inputUsername">Username </label>
                                        <input class="form-control" id="inputUsername" type="text" name="username"  value="<%=rsGetCusByUser.getString(10)%>" readonly>
                                    </div>
<!--                           //          <div class="mb-3">
                                        <label class="small mb-1" for="inputPassword">Password</label>
                                        <input class="form-control" id="inputUsername" type="password" name="password"  value="<%=rsGetCusByUser.getString(11)%>" readonly>
                                    </div>-->
                                    <!-- Form Row-->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (full name)-->
                                        <div class="col-md-12">
                                            <label class="small mb-1" for="inputFullName">Full name</label>
                                            <input class="form-control" id="inputFullName" type="text" name="fullname" value="<%=rsGetCusByUser.getString(2)%>">
                                        </div>
                                    </div>
                                    <!-- Form Row        -->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (organization name)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputgender">Gender</label> <br/>
                                            <input type="radio" name="gender" value="1"  <%=(rsGetCusByUser.getInt(8) == 1 ? "checked" : "")%> />  Male
                                            <input type="radio" name="gender" value="0"  <%=(rsGetCusByUser.getInt(8) == 0 ? "checked" : "")%> />  Female
                                        </div>
                                        <!-- Form Group (location)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputAddress">Address</label>
                                            <input class="form-control" id="inputAddress" type="text" name="address" placeholder="Enter your Address" value="<%=rsGetCusByUser.getString(4)%>">
                                        </div>
                                    </div>
                                    <!-- Form Group (email address)-->
                                    <div class="mb-3">
                                        <label class="small mb-1" for="inputEmailAddress">Email address</label>
                                        <input class="form-control" id="inputEmailAddress" type="email" name="email" placeholder="Enter your email address" value="<%=rsGetCusByUser.getString(3)%>">
                                    </div>
                                    <!-- Form Row-->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (phone number)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputPhone">Phone number</label>
                                            <input class="form-control" id="inputPhone" type="tel" name="phone" placeholder="Enter your phone number" value="<%=rsGetCusByUser.getString(6)%>">
                                        </div>
                                        <!-- Form Group (birthday)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputBirthday">Birthday</label>
                                            <input class="form-control" id="inputBirthday" type="date" name="birthday" placeholder="Enter your birthday" value="<%=rsGetCusByUser.getString(5)%>">
                                        </div>
                                    </div>
                                    <!-- Save changes button-->
                                    <button class="btn btn-primary" type="submit" name="submit" >Save Changes</button>
                                    
                                </div> 
                                <%}%>
                            </form>
                            <br/>
                            <br/>
                            <a href="changepass"><button class="btn btn-primary" >Change Password</button></a> 
                        </div>
                    </div>
                </div>
            </div>

   
    <script>
        <c:choose>
            <c:when test="${setting eq 1}">

        document.getElementById('setting').style.display = 'block';
            </c:when>
            <c:otherwise>
        document.getElementById('setting').style.display = 'none';
        function openSetting() {
            if (document.getElementById('setting').style.display == 'none') {
                document.getElementById('setting').style.display = 'block';
            } else {
                document.getElementById('setting').style.display = 'none';
            }
        }
            </c:otherwise>
        </c:choose>
    </script>
    <!-- ======= Footer ======= -->
    <%@include file="../components/footer.jsp" %>

    <!--<div id="preloader"></div>-->
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="homeAssets/vendor/purecounter/purecounter.js" type="text/javascript"></script>
    <script src="homeAssets/vendor/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="homeAssets/vendor/glightbox/js/glightbox.min.js" type="text/javascript"></script>
    <script src="homeAssets/vendor/swiper/swiper-bundle.min.js" type="text/javascript"></script>
    <script src="homeAssets/vendor/php-email-form/validate.js" type="text/javascript"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

</body>
</html>
