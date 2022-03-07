<%-- 
    Document   : editDoctor
    Created on : 26-02-2022, 22:06:00
    Author     : a
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="components/headerdoctor.jsp" %>
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <h4 class="page-title">EDIT DOCTOR</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <form action="doctorpf" method="post">
                        <% 
                        ResultSet rsGetDoctorByName = (ResultSet) request.getAttribute("rsGetDoctorByName");
                        while (rsGetDoctorByName.next()) {
                        %>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Doctor Name <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="docName" value="<%=rsGetDoctorByName.getString(7)%>">
                                    <input class="form-control" type="hidden" name="docID" value="<%=rsGetDoctorByName.getString(1)%>" >
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input class="form-control" type="text" name="docPhone" value="<%=rsGetDoctorByName.getString(3)%>"> 
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Username</label>
                                    <input class="form-control" type="text"readonly="readonly" value="${sessionScope.username}">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input class="form-control" type="email" name="email" value="<%=rsGetDoctorByName.getString(6)%>">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group gender-select">
                                    <label class="gen-label">Gender</label>
                                    <div class="form-check-inline">
                                        <label class="form-check-label">
                                            <input type="radio" name="gender" class="form-check-input" value="1" <%=(rsGetDoctorByName.getInt(5) == 1 ? "checked" : "")%>>Male
                                        </label>
                                    </div>
                                    <div class="form-check-inline">
                                        <label class="form-check-label">
                                            <input type="radio" name="gender" class="form-check-input" value="0" <%=(rsGetDoctorByName.getInt(5) == 0 ? "checked" : "")%>>Female
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label>Experience Year </label>
                                    <input class="form-control" type="text" name="expYear" value="<%= rsGetDoctorByName.getString(4)%>">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Address</label>
                                    <input type="text" class="form-control " name="address" value="<%= rsGetDoctorByName.getString(8)%>">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Short Biography</label>
                            <input class="form-control" name="information" value="<%=rsGetDoctorByName.getString(2)%>"></input>
                        </div>
                        <div class="m-t-20 text-center">
                            <button type="submit" name="submit" class="btn btn-primary submit-btn">UPDATE</button>
                        </div>
                        <%}%>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="components/footerdoctor.jsp" %>        
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

