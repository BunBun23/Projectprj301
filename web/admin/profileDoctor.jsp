<%-- 
    Document   : profileDoctor
    Created on : 02-03-2022, 10:53:14
    Author     : a
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <%@include file="components/headerAdmin.jsp" %>
    <%
        ResultSet rsGetDoctorByID = (ResultSet) request.getAttribute("rsGetDoctorByID");
        String status = (String) request.getAttribute("status");
    %>

    <div class="page-wrapper">
        <%
            if (status.equals("0")) {
        %>This Account is Deactive!<%
        } else {
            while (rsGetDoctorByID.next()) {
        %>
        <div class="content">
            <div class="row">
                <div class="col-sm-7 col-6">
                    <h4 class="page-title">Profile of Dr.<%=rsGetDoctorByID.getString(7)%></h4>
                </div>
                <!--                <div class="col-sm-5 col-6 text-right m-b-30">
                                    <a href="edit-profile.html" class="btn btn-primary btn-rounded"><i class="fa fa-plus"></i> Edit Profile</a>
                                </div>-->
            </div>
            <div class="card-box profile-header">
                <div class="row">
                    <div class="col-md-12">
                        <div class="profile-view">
                            <div class="profile-img-wrap">
                                <div class="profile-img">
                                    <a href="#"><img class="avatar" src="admin/assets/img/doctor-03.jpg" alt=""></a>
                                </div>
                            </div>
                            <div class="profile-basic">
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="profile-info-left">
                                            <h3 class="user-name m-t-0 mb-0"><%=rsGetDoctorByID.getString(7)%></h3>
                                            <small class="text-muted">Doctor</small>
                                            <div class="staff-id">Doctor ID : <%=rsGetDoctorByID.getString(1)%></div>
                                            <div class="staff-msg"><a href="chat.html" class="btn btn-primary">Send Message</a></div>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <ul class="personal-info">
                                            <li>
                                                <span class="title">Phone:</span>
                                                <span class="text"><a href="#"><%=rsGetDoctorByID.getString(3)%></a></span>
                                            </li>
                                            <li>
                                                <span class="title">Email:</span>
                                                <span class="text"><a href="#"><%=rsGetDoctorByID.getString(6)%></a></span>
                                            </li>
                                            <li>
                                                <span class="title">Birthday:</span>
                                                <span class="text">30/3/1986</span>
                                            </li>
                                            <li>
                                                <span class="title">Address:</span>
                                                <span class="text"><%=rsGetDoctorByID.getString(8)%></span>
                                            </li>
                                            <li>
                                                <span class="title">Gender:</span>
                                                <span class="text"><%=(rsGetDoctorByID.getInt(5) == 0 ? "Female" : "Male")%></span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                    </div>
                </div>
            </div>
            <%}%>
            <div class="profile-tabs">
                <ul class="nav nav-tabs nav-tabs-bottom">
                    <li class="nav-item"><a class="nav-link active" href="#about-cont" data-toggle="tab">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="#bottom-tab2" data-toggle="tab">Profile</a></li>
                    <li class="nav-item"><a class="nav-link" href="#bottom-tab3" data-toggle="tab">Messages</a></li>
                </ul>

                <div class="tab-content">
                    <div class="tab-pane show active" id="about-cont">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card-box">
                                    <h3 class="card-title">Education Informations</h3>
                                    <div class="experience-box">
                                        <ul class="experience-list">
                                            <li>
                                                <div class="experience-user">
                                                    <div class="before-circle"></div>
                                                </div>
                                                <div class="experience-content">
                                                    <div class="timeline-content">
                                                        <a href="#/" class="name">International College of Medical Science (UG)</a>
                                                        <div>MBBS</div>
                                                        <span class="time">2001 - 2003</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="experience-user">
                                                    <div class="before-circle"></div>
                                                </div>
                                                <div class="experience-content">
                                                    <div class="timeline-content">
                                                        <a href="#/" class="name">International College of Medical Science (PG)</a>
                                                        <div>MD - Obstetrics & Gynaecology</div>
                                                        <span class="time">1997 - 2001</span>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-box mb-0">
                                    <h3 class="card-title">Experience</h3>
                                    <div class="experience-box">
                                        <ul class="experience-list">
                                            <li>
                                                <div class="experience-user">
                                                    <div class="before-circle"></div>
                                                </div>
                                                <div class="experience-content">
                                                    <div class="timeline-content">
                                                        <a href="#/" class="name">Consultant Gynecologist</a>
                                                        <span class="time">Jan 2014 - Present (4 years 8 months)</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="experience-user">
                                                    <div class="before-circle"></div>
                                                </div>
                                                <div class="experience-content">
                                                    <div class="timeline-content">
                                                        <a href="#/" class="name">Consultant Gynecologist</a>
                                                        <span class="time">Jan 2009 - Present (6 years 1 month)</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="experience-user">
                                                    <div class="before-circle"></div>
                                                </div>
                                                <div class="experience-content">
                                                    <div class="timeline-content">
                                                        <a href="#/" class="name">Consultant Gynecologist</a>
                                                        <span class="time">Jan 2004 - Present (5 years 2 months)</span>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="bottom-tab2">
                        Tab content 2
                    </div>
                    <div class="tab-pane" id="bottom-tab3">
                        Tab content 3
                    </div>
                </div>
            </div>
        </div>
        <%}%>
        <%@include file="components/footerAdmin.jsp" %>        
        <div class="sidebar-overlay" data-reff=""></div>
        <script src="admin/assets/js/jquery-3.2.1.min.js"></script>
        <script src="admin/assets/js/popper.min.js"></script>
        <script src="admin/assets/js/bootstrap.min.js"></script>
        <script src="admin/assets/js/jquery.slimscroll.js"></script>
        <script src="admin/assets/js/app.js"></script>
    </body>


</html>
