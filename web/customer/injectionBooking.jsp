<%-- 
    Document   : vaccinepage
    Created on : Feb 15, 2022, 9:58:04 AM
    Author     : haipr
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"  %>--%>
<!DOCTYPE html>
<html>
    <!-- ======= header ======= -->
    <%@include file="../components/header.jsp" %>
    <main id="main">

        <!-- ======= Breadcrumbs Section ======= -->
        <section class="breadcrumbs">
            <div class="container" style="justify-content: center">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>Inner Page</h2>
                    <ol>
                        <li><a href="index.html">Home</a></li>
                        <li>Inner Page</li>
                    </ol>
                </div>

            </div>
        </section><!-- End Breadcrumbs Section -->

        <body>
            <!--<div class="page_live div_over bg_xam">-->
            <div class="container">
                <!--<div class="row pb_40">-->
                <div class="col-xs-12 text-center">
                    <h1 class="div_head text-center  sz_24 mb_25 pb_15"><div class="cl_head text-uppercase font_hel">MAKE A RESERVATION</div></h1>
                </div>
                <div class="col-xs-12 col-sm-10 col-sm-offset-1">
                    <div class="div_doituong">
                        <label>WHO DO YOU WANT TO SIGN UP FOR</label>
                        <div class="content_doituong">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="customer" id="id_doituong" class="id_doituong" value="self" onclick="openSection2()">
                                    For myself
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="customer" id="id_doituong" class="id_doituong" value="relative" onclick="openSection()">
                                    For a relative
                                </label>
                            </div>
                            <div class="w100 mt_15 mb_15" style="border: 0.5px dashed #BFBFBF;"></div>
                        </div>
                    </div>
                    <div class="div_canhan" id="relative" style="display: none">
                        <label>Personal Information</label>
                        <div class="mt_5">Please provide precise information</div>
                        <form id="frm_canhan" method="POST" action="injection-booking">
                            <div class="row mt_15">
                                <div class="col-sm-6 col-xs-12">
                                    <div class="form-group txthoten_cn">
                                        <label for="txthoten_cn">Full Name</label>
                                        <input name ="customer" type="text" value="relative" style="display: none">
                                        <input name="name" type="text" value="" class="form-control" id="txthoten_cn" placeholder="Your Full Name" required>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <div class="form-group txtdienthoai_cn">
                                        <label for="txtdienthoai_cn">Telephone</label>
                                        <input name="phone" onkeypress="javascript:return isNums(event)" type="text" class="form-control" id="txtdienthoai_cn" placeholder="Mobile number" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt_5">
                                <div class="col-sm-6 col-xs-12">
                                    <div class="form-group txtngaysinh_cn">
                                        <label for="txtngaysinh_cn">Date Of Birth</label>
                                        <input name="dob" type="date" class="form-control" id="txtngaysinh_cn" required>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <div class="form-group txtcmnd_cn">
                                        <label for="txtcmnd_cn">Social Id Number</label>
                                        <input maxlength="19" name="socialId" type="text" class="form-control" id="txtcmnd_cn" 
                                               placeholder="Social Id, heathcare Id, ..." required>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt_5">
                                <div class="col-sm-6 col-xs-12">
                                    <div class="form-group txtduong_cn">
                                        <label for="txtduong_cn">Address</label>
                                        <input name="address" type="text" class="form-control" id="txtduong_cn" placeholder="Your current address" required>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-12 mt_15mb">
                                    <label for="txtgioitinh_cn">Gender</label>
                                    <div>
                                        <div class="radio div_inline">
                                            <label>
                                                <input type="radio" name="gender" value="1" required>
                                                Male
                                            </label>
                                        </div>
                                        <div class="radio div_inline">
                                            <label>
                                                <input type="radio" name="gender" value="0">
                                                Female
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt_5">
                                <div class="col-sm-6 col-xs-12">
                                    <div class="form-group txtngaysinh_cn">
                                        <label for="txtngaysinh_cn">Date Reservation</label>
                                        <input name="date" type="date" class="form-control" id="txtngaysinh_cn" required>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <div class="form-group txtcmnd_cn">
                                        <label for="slot">Slot: </label>
                                        <div>
                                            <select name="slot" id="slot" class="form-control">
                                                <c:forEach items="${requestScope.listSlot}" var="slot">
                                                    <option value="${slot.slotID}">${slot.beginTime} - ${slot.endTime}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt_5">
                                <div class="col-sm-6 col-xs-12">
                                    <div class="form-group txtcmnd_cn">
                                        <label for="listVaccine">Choose Single Vaccine Dose or Package</label><br/>
                                            <div class="content_doituong">
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="product" id="id_doituong" class="id_doituong" value="single" onclick="openSingle_1()" required>
                                                        Single Vaccine Dose
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="product" id="id_doituong" class="id_doituong" value="package" onclick="openPackage_1()">
                                                        Vaccine Package
                                                    </label>
                                                </div>
                                                <select id="single_1" name="listVaccine" style="display: none" class="form-control">
                                                    <c:forEach items="${requestScope.listVaccine}" var="v">
                                                        <option value="${v.id}">${v.name}</option>
                                                    </c:forEach>
                                                </select>

                                                <select id="package_1" name="listPackage" style="display: none" class="form-control">
                                                    <c:forEach items="${requestScope.listPackage}" var="p">
                                                        <option value="${p.packageID}">${p.packageName}</option>
                                                    </c:forEach>
                                                </select><br/>
                                            </div>
                                    </div>
                                </div>
                            </div><br/>
                            <div class="w100 mt_15 mb_15" style="border: 0.5px solid #BFBFBF;"></div>
                            <div class="row mt_5">
                                <div class="mt-3"><input type="submit" class="btn btn-outline-primary" value="Submit"></div>
                            </div>
                        </form>

                    </div>

                    <div id="self" style="display: none">
                        <label>Choose reservation Date</label>
                        <form action="injection-booking" method="POST">
                            <div class="row mt_5">
                                <div class="col-sm-6 col-xs-12">
                                    <div class="form-group txtngaysinh_cn">
                                        <input name ="customer" type="text" value="self" style="display: none">
                                        <label for="txtngaysinh_cn">Date Reservation</label>
                                        <input name="date" type="date" class="form-control" id="txtngaysinh_cn" required>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <div class="form-group txtcmnd_cn">
                                        <label for="slot">Slot: </label>
                                        <div>
                                            <select name="slot" id="slot" class="form-control">
                                                <c:forEach items="${requestScope.listSlot}" var="slot">
                                                    <option value="${slot.slotID}">${slot.beginTime} - ${slot.endTime}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt_5">
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="form-group txtcmnd_cn">
                                            <label for="listVaccine">Choose Single Vaccine Dose or Package</label><br/>
                                            <div class="content_doituong">
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="product" id="id_doituong" class="id_doituong" value="single" onclick="openSingle()" required>
                                                        Single Vaccine Dose
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="product" id="id_doituong" class="id_doituong" value="package" onclick="openPackage()">
                                                        Vaccine Package
                                                    </label>
                                                </div>
                                                <select id="single" name="listVaccine" style="display: none" class="form-control">
                                                    <c:forEach items="${requestScope.listVaccine}" var="v">
                                                        <option value="${v.id}">${v.name}</option>
                                                    </c:forEach>
                                                </select>

                                                <select id="package" name="listPackage" style="display: none" class="form-control">
                                                    <c:forEach items="${requestScope.listPackage}" var="p">
                                                        <option value="${p.packageID}">${p.packageName}</option>
                                                    </c:forEach>
                                                </select><br/>
                                            </div>
                                        </div>
                                    </div>
                                </div>  
                            </div><br/>
                            <div class="w100 mt_15 mb_15" style="border: 0.5px solid #BFBFBF;"></div>
                            <div class="row mt_5">
                                <div class="mt-3"><input type="submit" class="btn btn-outline-primary" value="Submit"></div>
                            </div>
                        </form>
                    </div>
                    <div class="row mt_5">
                        <h3>
                            ${requestScope.anounce}
                            <a href="${requestScope.link}">${requestScope.advice}</a>
                        </h3>

                    </div>
                </div>
            </div>
        </body>
        <script>
            function isNums(evt) {
                var theEvent = evt;
                var key = theEvent.keyCode || theEvent.which;
                key = String.fromCharCode(key);
                var regex = /[0-9]/;
                if (!regex.test(key)) {
                    theEvent.returnValue = false;
                    if (theEvent.preventDefault)
                        theEvent.preventDefault();
                }
            }
        </script>
        <script>
            function openSection() {
                if (document.getElementById('relative').style.display == 'none') {
                    document.getElementById('self').style.display = 'none';
                    document.getElementById('relative').style.display = 'block';
                }
            }

            function openSection2() {
                if (document.getElementById('self').style.display == 'none') {
                    document.getElementById('relative').style.display = 'none';
                    document.getElementById('self').style.display = 'block';
                }
            }

            function openSingle() {
                console.log('open')
                if (document.getElementById('single').style.display == 'none') {
                    document.getElementById('package').style.display = 'none';
                    document.getElementById('single').style.display = 'block';
                }
            }
            
            function openPackage(){
                if (document.getElementById('package').style.display == 'none') {
                    document.getElementById('single').style.display = 'none';
                    document.getElementById('package').style.display = 'block';
                }
            }
            
            function openSingle_1(){
                if (document.getElementById('single_1').style.display == 'none') {
                    document.getElementById('package_1').style.display = 'none';
                    document.getElementById('single_1').style.display = 'block';
                }
            }
            
            function openPackage_1(){
                if (document.getElementById('package_1').style.display == 'none') {
                    document.getElementById('single_1').style.display = 'none';
                    document.getElementById('package_1').style.display = 'block';
                }
            }
        </script>

    </main><!-- End #main -->

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
