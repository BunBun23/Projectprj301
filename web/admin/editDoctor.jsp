<%-- 
    Document   : editDoctor
    Created on : 26-02-2022, 22:06:00
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
                <div class="col-lg-8 offset-lg-2">
                    <h4 class="page-title">EDIT DOCTOR</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <form action="ControllerEditDoctor" method="post">
                        <% 
                        ResultSet rsGetDoctorByID = (ResultSet) request.getAttribute("rsGetDoctorByID");
                        while (rsGetDoctorByID.next()) {
                        %>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Doctor Name <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="docName" value="<%=rsGetDoctorByID.getString(7)%>">
                                    <input class="form-control" type="hidden" name="docID" value="<%=rsGetDoctorByID.getString(1)%>" >
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input class="form-control" type="text" name="docPhone" value="<%=rsGetDoctorByID.getString(3)%>"> 
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Username<span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="username" readonly="readonly" value="">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Email<span class="text-danger">*</span></label>
                                    <input class="form-control" type="email" name="email" value="<%=rsGetDoctorByID.getString(6)%>">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Password<span class="text-danger">*</span></label>
                                    <input class="form-control" type="password" name="password" value="">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Confirm Password<span class="text-danger">*</span></label>
                                    <input class="form-control" type="password" name="confirmPass">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <div class="cal-icon">
                                        <input type="text" class="form-control datetimepicker" name="dob" value="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group gender-select">
                                    <label class="gen-label">Gender<span class="text-danger">*</span></label>
                                    <div class="form-check-inline">
                                        <label class="form-check-label">
                                            <input type="radio" name="gender" class="form-check-input" value="1" <%=(rsGetDoctorByID.getInt(5) == 1 ? "checked" : "")%>>Male
                                        </label>
                                    </div>
                                    <div class="form-check-inline">
                                        <label class="form-check-label">
                                            <input type="radio" name="gender" class="form-check-input" value="0" <%=(rsGetDoctorByID.getInt(5) == 0 ? "checked" : "")%>>Female
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label>Experience Year </label>
                                    <input class="form-control" type="text" name="expYear" value="<%= rsGetDoctorByID.getString(4)%>">
                                </div>
                            </div>
                            <div class="col-sm-9">
                                <div class="form-group">
                                    <label>Avatar</label>
                                    <div class="profile-upload">
                                        <div class="upload-img">
                                            <img alt="" src="admin/assets/img/user.jpg">
                                        </div>
                                        <div class="upload-input">
                                            <input type="file" class="form-control" name="avatar" accept="image/png, image/jpeg">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Address</label>
                                    <input type="text" class="form-control " name="address" value="<%= rsGetDoctorByID.getString(8)%>">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Short Biography</label>
                            <input class="form-control" name="information" value="<%=rsGetDoctorByID.getString(2)%>"></input>
                        </div>
                        <div class="form-group">
                            <label class="display-block">Status</label>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="status" id="doctor_active" value="option1" checked>
                                <label class="form-check-label" for="doctor_active">
                                    Active
                                </label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="status" id="doctor_inactive" value="option2">
                                <label class="form-check-label" for="doctor_inactive">
                                    Inactive
                                </label>
                            </div>
                        </div>
                        <div class="m-t-20 text-center">
                            <button type="submit" name="submit" class="btn btn-primary submit-btn">UPDATE</button>
                        </div>
                        <%}%>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="components/footerAdmin.jsp" %>        
        <div class="sidebar-overlay" data-reff=""></div>
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/select2.min.js"></script>
        <script src="assets/js/moment.min.js"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
        <script src="assets/js/app.js"></script>
    </body>
</html>

