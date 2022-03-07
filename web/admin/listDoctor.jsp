<%-- 
    Document   : listDoctor
    Created on : 25-02-2022, 14:40:36
    Author     : a
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="components/headerAdmin.jsp" %>
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-4 col-3">
                    <h4 class="page-title">DOCTORS</h4>
                </div>
                <div class="col-sm-8 col-9 text-right m-b-20">
                    <a href="ControllerAddDoctor" class="btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Doctor</a>
                </div>
            </div>
            <div class="row doctor-grid">
                <%
                    ResultSet rsGetAllDoctor = (ResultSet) request.getAttribute("rsGetAllDoctor");
                    while (rsGetAllDoctor.next()) {
                %>
                <div class="col-md-4 col-sm-4  col-lg-3">
                    <div class="profile-widget">
                        <div class="doctor-img">
                            <a class="avatar" href="profile.html"><img alt="" src="admin/assets/img/doctor-thumb-03.jpg"></a>
                        </div>
                        <div class="dropdown profile-action">
                            <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="ControllerEditDoctor?DoctorID=<%=rsGetAllDoctor.getString(1)%>"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                <a class="dropdown-item" href="ControllerDeleteDoctor?DoctorID=<%=rsGetAllDoctor.getString(1)%>&AccountID=<%=rsGetAllDoctor.getString(9)%>"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                            </div>
                        </div>
                        <h4 class="doctor-name text-ellipsis"><a href="profile.html"><%=rsGetAllDoctor.getString(7)%></a></h4>
                        <div class="doc-prof" style="font-size: 15px"><%=rsGetAllDoctor.getString(6)%></div>
                        <div class="user-country">
                            <i class="fa fa-map-marker"></i> <%=rsGetAllDoctor.getString(8)%>
                        </div>
                    </div>
                </div>
                <%}%>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="see-all">
                        <a class="see-all-btn" href="javascript:void(0);">Load More</a>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="components/footerAdmin.jsp" %>        
        <div class="sidebar-overlay" data-reff=""></div>
        <script src="admin/assets/js/jquery-3.2.1.min.js"></script>
        <script src="admin/assets/js/popper.min.js"></script>
        <script src="admin/assets/js/bootstrap.min.js"></script>
        <script src="admin/assets/js/jquery.slimscroll.js"></script>
        <script src="admin/assets/js/select2.min.js"></script>
        <script src="admin/assets/js/moment.min.js"></script>
        <script src="admin/assets/js/bootstrap-datetimepicker.min.js"></script>
        <script src="admin/assets/js/app.js"></script>
    </body>


    <!-- doctors23:17-->
</html>
