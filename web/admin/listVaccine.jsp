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
    <%@include file="components/headerAdmin.jsp" %>
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-4 col-3">
                    <h4 class="page-title">VACCINES</h4>
                </div>
                <div class="col-sm-8 col-9 text-right m-b-20">
                    <a href="ControllerAddVaccine" class="btn btn-primary float-right btn-rounded"><i class="fa fa-plus"></i> Add Vaccine</a>
                </div>
            </div>
<!--            <div class="row filter-row col-lg-8 offset-lg-2">
                <div class="col-sm-9 ">
                    <div class="form-group form-focus">
                        <label class="focus-label">Search</label>
                        <input type="search" id="searchBox" class="form-control floating">
                    </div>
                </div>
                <div class="col-sm-3 col-9 text-right m-b-20">
                    <a href="ControllerAddVaccine" style="border-radius: 30px" class="btn btn-primary float-right btn-rounded"><i class="fa fa-plus"></i> Add Vaccine</a>
                </div>
            </div>-->
            <div class="row">
                <div class="col-md-11" style="margin: 0 auto;">
                    <div class="table-responsive">
                        <form method="post" action="ControllerListVaccine">
                            <table class="table table-striped custom-table " id="mytable">
                                <thead>
                                    <tr>
                                        <!--<th style="min-width:200px;">Name</th>-->
                                        <th style="text-align: center;width: 70px">Vaccine ID</th>
                                        <th style="text-align: center;width: 175px">Vaccine Name</th>
                                        <th style="text-align: center">Image</th>
                                        <th style="text-align: center;width: 150px">Vaccine Origin</th>
                                        <th style="width: 390px">Vaccine Detail</th>
                                        <th style="text-align: center;width: 150px">Vaccine Price</th>
                                        <th class="text-right">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ResultSet rsVaccine = (ResultSet) request.getAttribute("rsVaccine");
                                        while (rsVaccine.next()) {
                                    %>
                                    <tr>
                                        <td style="text-align: center;"><%= rsVaccine.getString(1)%></td>
                                        <td style="text-align: center;"><%= rsVaccine.getString(2)%></td>
                                        <td style="text-align: center"><a href="profile.html"><img alt="" src="common/homeAssets/img/<%= rsVaccine.getString(6)%>" style="border: 2px solid #DEE2E6; width: 80px;height: 50px"></a></td>
                                        <td style="text-align: center;"><%= rsVaccine.getString(4)%></td>
                                        <td ><%= rsVaccine.getString(5)%></td>
                                        <td style="text-align: center;font-weight: bold;font-style: italic;color: #1435C3"><fmt:formatNumber type="number" groupingUsed="true" value="<%= rsVaccine.getString(3)%>"  /> <span>VND</span></td>
                                        <td class="text-right">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="ControllerEditVaccine?VaccineID=<%=rsVaccine.getString(1)%>"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                    <a class="dropdown-item" href="ControllerDeactiveVaccine?VaccineID=<%=rsVaccine.getString(1)%>"><i class="fa fa-trash-o m-r-5"></i>Deactive</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="components/footerAdmin.jsp" %>        
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
        <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">    
        <script>
            $(document).ready(function () {
                $('#mytable').DataTable();
            });
        </script>
    </body>


    <!-- employees23:22-->
</html>
