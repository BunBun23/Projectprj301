<%-- 
    Document   : listVaccine
    Created on : 08-02-2022, 22:28:28
    Author     : a
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<!DOCTYPE html>
<html lang="en">


    <!-- employees23:21-->
    <%@include file="components/headerdoctor.jsp" %>
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-4 col-3">
                    <h4 class="page-title">HEALTH RECORD DURING INJECTION DETAIL</h4>
                </div>
            </div>
            <form method="POST" action="doctorcheckmedicalrecord">

                <div class="container" style="margin-top: 5rem">
                    <% ResultSet rsgetvaccinerecord = (ResultSet) request.getAttribute("rsgetvaccinerecord");
                        while (rsgetvaccinerecord.next()) {
                    %>
                    <div class="row mt-5">
                        <div class="col-md-6 pl-5">
                            <input type="hidden" name="vacid" value="<%= rsgetvaccinerecord.getInt(9)%>" />
                            <input type="hidden" name="cusid" value="<%= rsgetvaccinerecord.getInt(10)%>" />
                            <input type="hidden" name="cusname" value="<%= rsgetvaccinerecord.getString(11)%>" />

                            <h6 class="mt-4"><b>Customer Name : <%= rsgetvaccinerecord.getString(11)%></b></h6>
                            <hr>
                            <h6 class="mt-4"><b>Vaccine Image : <img src="common/homeAssets/img/<%= rsgetvaccinerecord.getString(1)%>" style="height: 100px ; width: 100px"></b></h6>
                            <hr>
                            <h6 class="mt-4"><b>Vaccine Name : <%= rsgetvaccinerecord.getString(2)%></b></h6>
                            <hr>
                            <h6 class="mt-4"><b>Injection Date : <%= rsgetvaccinerecord.getDate(3)%></b></h6>
                            <hr>
                            <h6 class="mt-4"><b>Begin Time : <%= rsgetvaccinerecord.getString(7)%></b></h6>
                            <hr>
                            <h6 class="mt-4"><b>End Time : <%= rsgetvaccinerecord.getString(8)%></b></h6>
                            <hr>
                            <h6 class="mt-4"><b>Status : <div class="col-sm-6">
                                        <div class="form-group gender-select">
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="radio" name="status" class="form-check-input" value="Success" <%=(rsgetvaccinerecord.getString(6).equals("Success") ? "checked" : "")%>>Success
                                                </label>
                                            </div>
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="radio" name="status" class="form-check-input" value="Pending" <%=(rsgetvaccinerecord.getString(6).equals("Pending") ? "checked" : "")%>>Pending
                                                </label>
                                            </div>
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="radio" name="status" class="form-check-input" value="Failed" <%=(rsgetvaccinerecord.getString(6).equals("Failed") ? "checked" : "")%>>Failed
                                                </label>
                                            </div>
                                        </div>
                                    </div></b></h6>
                            <hr>
                            <p class="mt-4"><b>Detail: <input type="text" name="doctorleavedetail" value="<%= rsgetvaccinerecord.getString(12)%>" /></p>
                            <hr>
                            <button type="submit" name="submit" class="btn btn-primary submit-btn">Submit</button>

                        </div>
                    </div>

                    <%}%>
                </div>
            </form>
        </div>
        <%@include file="components/footerdoctor.jsp" %>        
        <div class="sidebar-overlay" data-reff=""></div>
        <script src="admin/assets/js/jquery-3.2.1.min.js"></script>
        <script src="admin/assets/js/popper.min.js"></script>
        <script src="admin/assets/js/bootstrap.min.js"></script>
        <script src="admin/assets/js/jquery.dataTables.min.js"></script>
        <script src="admin/assets/js/dataTables.bootstrap4.min.js"></script>
        <script src="admin/assets/js/jquery.slimscroll.js"></script>
        <script src="admin/assets/js/select2.min.js"></script>
        <script src="admin/assets/js/moment.min.js"></script>
        <script src="admin/assets/js/bootstrap-datetimepicker.min.js"></script>
        <script src="admin/assets/js/app.js"></script>
        <script src="admin/assets/js/activeTaskbar.js" type="text/javascript"></script>
    </body>


    <!-- employees23:22-->
</html>
