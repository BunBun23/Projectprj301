<%-- 
    Document   : taskbar
    Created on : 22-02-2022, 10:45:25
    Author     : a
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="admin/assets/img/doctorlogo1.png">
    <title>Vaccine Management</title>
    <link rel="stylesheet" type="text/css" href="admin/assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="admin/assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="admin/assets/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="admin/assets/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="admin/assets/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" type="text/css" href="admin/assets/css/style.css">
    <link href="admin/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="https://kit.fontawesome.com/cbca488d39.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="main-wrapper">
        <div class="header">
            <div class="header-left">
                <a href="index-2.html" class="logo">
                    <img src="admin/assets/img/doctorlogo1.png" width="35" height="35" alt=""> <span style="font-size: 30px">FDOCTOR</span>
                </a>
            </div>
            <a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
            <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>
            <ul class="nav user-menu float-right">
                <li class="nav-item dropdown has-arrow">
                    <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                        <span class="user-img"><img class="rounded-circle" src="admin/assets/img/user.jpg" width="40" alt="Admin">
                            <span class="status online"></span></span>
                        <span>${sessionScope.acc.username}</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="doctorpf">My Profile</a>
                        <a class="dropdown-item" href="logout">Logout</a>
                    </div>               
                </li>
            </ul>
        </div>
        <div class="sidebar" id="sidebar">
            <div class="sidebar-inner slimscroll">
                <div id="sidebar-menu" class="sidebar-menu">
                    <ul>
                        <li class="menu-title">Main</li>
                        <li>
                            <a href="homedoctor"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-calendar"></i> <span>Slot</span></a>
                        </li>
                        <li>
                            <a href="#"><i class="fas fa-wheelchair"></i> <span>Patient Records</span></a>
                        </li>
                        <li class="submenu">
                            <a href=""><i class="fa-solid fa-syringe"></i> <span>View Vaccines </span> <span class="menu-arrow"></span></a>
                            <ul id="vaccinelist" style="display: none;">
                                <li><a id="vaccinelist-item" href="listvaccinedoc">Vaccines</a></li>
                                <li><a id="vaccinelist-item" href="listpvaccine">Vaccine Packages</a></li>
                             </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fas fa-commenting-o"></i> <span>feedback</span></a>
                        </li>
                        <li>
                            <a href="home"><i class="fas fa-home"></i> <span>Customer Site</span></a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
