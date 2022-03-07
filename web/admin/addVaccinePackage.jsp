<%-- 
    Document   : addVaccinePackage
    Created on : 23-02-2022, 21:29:06
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
                    <h4 class="page-title">ADD VACCINE PACKAGE</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <form action="ControllerAddVaccinePackage" method="post">
                        <%
                        ResultSet rsGetAllVaccineID_Name = (ResultSet) request.getAttribute("rsGetAllVaccineID_Name");
                        %>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Package ID</label>
                                    <input class="form-control" type="text" name="packageID" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Package Name</label>
                                    <input class="form-control" type="text" name="packageName" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Vaccine In Package</label> <label style="font-size: 15px;font-style: italic">(Select Vaccine)</label>
                                    <select class="select" multiple name="VaccineList">
                                        <%while (rsGetAllVaccineID_Name.next()) {%>
                                        <option value="<%=rsGetAllVaccineID_Name.getString(1)%>"><%=rsGetAllVaccineID_Name.getString(2)%></option>
                                        <%}%>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Package Detail</label>
                                    <input class="form-control" type="text" name="packageDetail">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label style="font-weight: bold" class="display-block">Schedule Status</label>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="status" id="product_active" value="option1" checked>
                                <label class="form-check-label" for="product_active">
                                    Active
                                </label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="status" id="product_inactive" value="option2">
                                <label class="form-check-label" for="product_inactive">
                                    Inactive
                                </label>
                            </div>
                        </div>
                        <div class="m-t-20 text-center">
                            <button type="submit" name="submit" class="btn btn-primary submit-btn">ADD </button>
                        </div>
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
        <script>
            $(function () {
                $('#datetimepicker3').datetimepicker({
                    format: 'LT'
                });
                $('#datetimepicker4').datetimepicker({
                    format: 'LT'
                });
            });
        </script>
    </body>


    <!-- add-schedule24:07-->
</html>

