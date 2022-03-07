<%-- 
    Document   : addVaccine
    Created on : 21-02-2022, 23:51:34
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <%@include file="components/headerAdmin.jsp" %>
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <h4 class="page-title">ADD VACCINE</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <form action="ControllerAddVaccine" method="post">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Vaccine Name <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="vaccineName">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Vaccine Price</label>
                                    <input class="form-control" type="text" name="vaccinePrice">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Vaccine Origin <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="vaccineOrigin"> 
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Vaccine Detail <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" name="vaccineDetail">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label style="font-weight: bold">Vaccine Image</label>
                                    <input class="form-control" type="text" name="image">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label style="font-weight: bold" class="display-block">Status</label>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="status" id="employee_active" value="option1" checked>
                                <label class="form-check-label" for="employee_active">
                                    Active
                                </label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="status" id="employee_inactive" value="option2">
                                <label  class="form-check-label" for="employee_inactive">
                                    Inactive
                                </label>
                            </div>
                        </div>
                        <div class="m-t-20 text-center">
                            <button name="submit" type="submit" class="btn btn-primary submit-btn">Add</button>
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
        <script src="admin/assets/js/app.js"></script>
        <script src="admin/assets/js/moment.min.js"></script>
        <script src="admin/assets/js/bootstrap-datetimepicker.min.js"></script>

    </body>


    <!-- add-employee24:07-->
</html>

