<%-- 
    Document   : editVaccine
    Created on : 20-02-2022, 10:02:36
    Author     : a
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!-- edit-employee24:07-->
    <%@include file="components/headerAdmin.jsp" %>
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <h4 class="page-title">EDIT VACCINE</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <form action="ControllerEditVaccine" method="post">
                        <%
                            ResultSet rsUpVaccine = (ResultSet) request.getAttribute("rsUpVaccine");
                            while (rsUpVaccine.next()) {
                        %>
                        <div class="row">
                            <input type="hidden" name="vaccineID" value="<%=rsUpVaccine.getString(1)%>" />
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Vaccine Name <span class="text-danger"></span></label>
                                    <input class="form-control" type="text" value="<%=rsUpVaccine.getString(2)%>" name="vaccineName">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Vaccine Price</label>
                                    <input class="form-control" type="text" value="<%=rsUpVaccine.getString(3)%>" name="vaccinePrice">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Vaccine Origin <span class="text-danger"></span></label>
                                    <input class="form-control" type="text" value="<%=rsUpVaccine.getString(4)%>" name="vaccineOrigin">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Vaccine Detail <span class="text-danger"></span></label>
                                    <input class="form-control" type="text" value="<%=rsUpVaccine.getString(5)%>" name="vaccineDetail">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Image</label>
                                    <input type="hidden" name="image" value="<%=rsUpVaccine.getString(6)%>" />
                                    <div class="mySlides " style="display: block;">
                                        <img src="common/homeAssets/img/<%=rsUpVaccine.getString(6)%>" class="w-100">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="display-block" style="font-weight: bold">Status</label>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="status" id="employee_active" value="option1" checked>
                                <label class="form-check-label" for="employee_active">
                                    Active
                                </label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="status" id="employee_inactive" value="option2">
                                <label class="form-check-label" for="employee_inactive">
                                    Inactive
                                </label>
                            </div>
                        </div>
                        <div class="m-t-20 text-center">
                            <button type="submit" name="submit" class="btn btn-primary submit-btn">Update</button>
                        </div>
                        <%}%>
                    </form>
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


    <!-- edit-employee24:07-->
</html>

