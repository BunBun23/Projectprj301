<%-- 
    Document   : editVaccinePackage
    Created on : 28-02-2022, 15:57:13
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
                    <h4 class="page-title">EDIT VACCINE PACKAGE</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <form action="ControllerEditVaccinePackage" method="post">
                        <%
                            ResultSet rsGetPackageById = (ResultSet) request.getAttribute("rsGetPackageById");
                            while (rsGetPackageById.next()) {
                        %>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Package ID</label>
                                    <input class="form-control" type="text" name="packageID" value="<%=rsGetPackageById.getString(1)%>" readonly="readonly" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Package Name</label>
                                    <input class="form-control" type="text" name="packageName" value="<%=rsGetPackageById.getString(2)%>" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Package Detail</label>
                                    <input class="form-control" type="text" name="packageDetail" value="<%=rsGetPackageById.getString(3)%>">
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
                            <button type="submit" name="submit" class="btn btn-primary submit-btn">UPDATE </button>
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
</html>
