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
                    <h4 class="page-title">VACCINE DETAIL</h4>
                </div>
            </div>
            <form method="POST" action="doctorfeedbackdetail">

                <div class="container" style="margin-top: 5rem">
                    <% ResultSet rsGetFeedBack = (ResultSet) request.getAttribute("rsGetFeedBack");
                        while (rsGetFeedBack.next()) {
                    %>
                    <div class="row mt-5">
                        <div class="col-md-6 pl-5">
                            <input type="hidden" name="fedid" value="<%= rsGetFeedBack.getInt(1)%>" />
                            <h6 class="mt-4"><b>Feedback ID : <%= rsGetFeedBack.getInt(1)%></b></h6>
                            <hr>
                            <h6 class="mt-4"><b>Customer Name : <%= rsGetFeedBack.getString(9)%></b></h6>
                            <hr>
                            <h6 class="mt-4"><b>Create Date : <%= rsGetFeedBack.getDate(2)%></b></h6>
                            <hr>
                            <h6 class="mt-4"><b>Type : <%= rsGetFeedBack.getString(6)%></b></h6>
                            <hr>
                            <h6 class="mt-4"><b>Status : <%= rsGetFeedBack.getString(7)%></b></h6>
                            <hr>
                            <p class="mt-4"><b>FeedBack Detail:</b><br><br><%= rsGetFeedBack.getString(3)%></p>
                            <hr>
                        </div>
                    </div>
                    <button type="submit" name="submit" class="btn btn-primary submit-btn">Accept To Post</button>

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
