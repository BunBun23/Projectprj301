<%-- 
    Document   : packageDetail
    Created on : 23-02-2022, 11:23:07
    Author     : a
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<!DOCTYPE html>
<html lang="en">
    <%@include file="components/headerAdmin.jsp" %>
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-4 col-3">
                    <h4 class="page-title">VACCINE PACKAGE</h4>
                </div>
                <!--                <div class="col-sm-8 col-9 text-right m-b-20">
                                    <a href="ControllerAddVaccinePackage" class="btn btn-primary float-right btn-rounded"><i class="fa fa-plus"></i> Add Vaccine to Package</a>
                                </div>-->
            </div>

            <div class="row">
                <div style="margin: 0 auto;" class="col-md-11">
                    <div class="table-responsive">
                        <form method="post" action="ControllerPackageDetail">
                            <%
                                ResultSet rsGetVaccineInPackage = (ResultSet) request.getAttribute("rsGetVaccineInPackage");
                                String packName = (String) request.getAttribute("packName");
                                String PackageID = (String) request.getAttribute("PackageID");
                            %>
                            <p style="text-align: center;font-size: 30px">Vaccine Detail Of " <%=packName%> "</p>
                            <table class="table table-striped custom-table">
                                <thead>
                                    <tr>
                                        <th style="text-align: center;width: 50px">Number</th>
                                        <th style="text-align: center;width: 50px">Vaccine ID</th>
                                        <th style="text-align: center">Image</th>
                                        <th style="">Vaccine Name</th>
                                        <th>Vaccine Detail</th>
                                        <th style="text-align: center">Vaccine Origin</th>
                                        <th style="text-align: center">Price</th>
                                        <th style="text-align: center">Delete</th>

                                        <!--<th class="text-right">Action</th>-->
                                    </tr>
                                </thead>  
                                <tbody>
                                    <%
                                        int num = 1;
                                        while (rsGetVaccineInPackage.next()) {
                                    %>
                                    <tr>
                                        <td style="text-align: center"><%=num%></td>
                                        <td style="text-align: center"><%= rsGetVaccineInPackage.getString(1)%></td>
                                        <td style="text-align: center"><a href="profile.html"><img alt="" src="common/homeAssets/img/<%= rsGetVaccineInPackage.getString(6)%>" style="border: 2px solid #DEE2E6; width: 80px;height: 50px"></a></td>
                                        <td style=""><%= rsGetVaccineInPackage.getString(2)%></td>
                                        <td><%= rsGetVaccineInPackage.getString(5)%></td>
                                        <td style="text-align: center"><%= rsGetVaccineInPackage.getString(4)%></td>
                                        <td style="text-align: center;font-weight: bold;font-style: italic;color: #1435C3"><fmt:formatNumber type="number" groupingUsed="true" value="<%= rsGetVaccineInPackage.getString(3)%>"  /> <span>VND</span></td>
                                        <td><a href="DeleteVaccineInPackageController?PackageID=<%=PackageID%>&VaccineID=<%=rsGetVaccineInPackage.getString(1)%>">Delete</a></td>
                                    </tr>
                                    <%
                                            num++;
                                        }
                                    %>
                                </tbody>
                            </table>
                            <div class="m-t-20 text-left">
                                <a href="AddVaccineToPackageController?PackageID=<%=PackageID%>" class="btn btn-primary submit-btn"><i class="fa fa-plus"></i> Add New Vaccine to Package</a>
                                <!--<button type="submit" name="submit" class="btn btn-primary submit-btn">Update</button>-->
                            </div>
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
        <script src="admin/assets/js/jquery.slimscroll.js"></script>
        <script src="admin/assets/js/Chart.bundle.js"></script>
        <script src="admin/assets/js/chart.js"></script>
        <script src="admin/assets/js/app.js"></script>

    </body>


</html>
