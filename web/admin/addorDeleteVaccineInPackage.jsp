<%-- 
    Document   : addVaccineToPackage
    Created on : 28-02-2022, 14:44:50
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">

    <%@include file="components/headerAdmin.jsp" %>
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <h4 class="page-title">ADD OR DELETE VACCINE IN PACKAGE</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <form action="AddorDeleteVaccineInPackageController" method="post">
                        <%
                            ResultSet rsGetAllVaccineWithoutPackage = (ResultSet) request.getAttribute("rsGetAllVaccineWithoutPackage");
                            ResultSet rsget1 = (ResultSet) request.getAttribute("rsget1");
                            ResultSet rsget2 = (ResultSet) request.getAttribute("rsget2");
                            String PackageID = (String) request.getAttribute("PackageID");
                            String PackageName = (String) request.getAttribute("PackageName");
                            String packageDetail = (String) request.getAttribute("packageDetail");
                        %>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Package ID</label>
                                    <input class="form-control" type="text" name="packageID" value="<%=PackageID%>" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Package Name</label>
                                    <input class="form-control" type="text" name="packageName" value="<%=PackageName%>" />
                                    <input class="form-control" type="hidden" name="packageDetail" value="<%=packageDetail%>" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Vaccine In Package</label> <label style="font-size: 15px;font-style: italic">(Select Vaccine)</label>
                                    <select class="select" multiple name="VaccineList">
                                        <%//while (rsGetAllVaccineWithoutPackage.next()) {%>
                                        <!--<option value="<%//=rsGetAllVaccineWithoutPackage.getString(1)%>"><%//=rsGetAllVaccineWithoutPackage.getString(2)%></option>-->
                                        <%//}%>
                                        <%while (rsget2.next()) {%>
                                        <option value="<%=rsget2.getString(1)%>" selected="selected"><%=rsget2.getString(2)%></option>
                                        <%}%>
                                        <%while (rsget1.next()) {%>
                                        <option value="<%=rsget1.getString(1)%>"><%=rsget1.getString(2)%></option>
                                        <%}%>
                                    </select>
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
