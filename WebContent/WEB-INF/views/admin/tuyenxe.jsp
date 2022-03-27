<%@ page pageEncoding="utf-8"%> <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="" />
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors" />
        <meta name="generator" content="Hugo 0.80.0" />
        <title>Tuyến Xe</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/navbar-static/" />
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet" />
        <link href="<c:url value='/resources/assets/dist/css/bootstrap.min.css' />" rel="stylesheet" />
        <link href="<c:url value='/resources/fontawesome-free-5.15.1-web/css/all.css'></c:url>" rel="stylesheet" />
        <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
        <link href="<c:url value='/resources/admin/css/style.min.css' />" />
        <link href="<c:url value='/resources/admin/css/style.css' />" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            .hoc:hover {
                background-color: #ededed;
            }
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }

            #main-wrapper[data-layout="vertical"] .left-sidebar[data-sidebarbg="skin6"],
            #main-wrapper[data-layout="horizontal"] .left-sidebar[data-sidebarbg="skin6"] {
                background: #fff;
            }

            .scroll-sidebar {
                height: calc(100% - 20px);
                position: relative;
            }

            .scroll-sidebar {
                height: calc(100% - 20px);
                position: relative;
            }
            .sidebar-nav ul {
                background: #fff;
            }

            .sidebar-nav ul {
            }
            .sidebar-nav ul .sidebar-item {
                width: 250px;
            }
            .sidebar-nav ul .sidebar-item .sidebar-link {
                color: #fff;
                padding: 14px 15px;
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                white-space: nowrap;
                -webkit-box-align: center;
                -ms-flex-align: center;
                align-items: center;
                line-height: 25px;
                opacity: 0.6;
            }
            .sidebar-nav ul .sidebar-item .sidebar-link i {
                font-style: normal;
                width: 35px;
                line-height: 25px;
                font-size: 23px;
                color: #fff;
                display: inline-block;
                text-align: center;
            }
            .sidebar-nav ul .sidebar-item .sidebar-link.active,
            .sidebar-nav ul .sidebar-item .sidebar-link:hover {
                opacity: 1;
            }
            .sidebar-nav ul .sidebar-item.selected > .sidebar-link {
                opacity: 1;
            }
            .sidebar-nav ul .sidebar-item .first-level {
                padding: 0 0 10px 0;
            }
            .sidebar-nav ul .sidebar-item .first-level .sidebar-item.active .sidebar-link {
                opacity: 1;
            }
            .sidebar-nav ul .sidebar-item .first-level .sidebar-item .sidebar-link {
                padding: 10px 15px;
            }
            .sidebar-nav ul .sidebar-item .first-level .sidebar-item .sidebar-link i {
                font-size: 14px;
            }
            .sidebar-nav ul .nav-small-cap {
                font-size: 12px;
                padding: 14px 15px;
                white-space: nowrap;
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-align: center;
                -ms-flex-align: center;
                align-items: center;
                line-height: 30px;
                margin-top: 10px;
                color: #fff;
                opacity: 0.3;
                text-transform: uppercase;
            }
            .sidebar-nav ul .nav-small-cap i {
                line-height: 30px;
                margin: 0 5px;
            }

            .sidebar-nav > #sidebarnav > .sidebar-item > .sidebar-link:hover {
            }
            .sidebar-nav ul {
                margin: 0px;
                padding: 0px;
            }
            .sidebar-nav ul li {
                list-style: none;
            }
            .collapse.in {
                display: block;
            }
            .sidebar-nav .has-arrow {
                position: relative;
            }
            .sidebar-nav .has-arrow::after {
                position: absolute;
                content: "";
                width: 7px;
                height: 7px;
                border-width: 1px 0 0 1px;
                border-style: solid;
                border-color: #fff;
                margin-left: 10px;
                -webkit-transform: rotate(135deg) translate(0, -50%);
                -ms-transform: rotate(135deg) translate(0, -50%);
                -o-transform: rotate(135deg) translate(0, -50%);
                transform: rotate(135deg) translate(0, -50%);
                -webkit-transform-origin: top;
                -ms-transform-origin: top;
                -o-transform-origin: top;
                transform-origin: top;
                top: 26px;
                right: 15px;
                -webkit-transition: all 0.3s ease-out;
                -o-transition: all 0.3s ease-out;
                transition: all 0.3s ease-out;
            }

            /*.sidebar-nav .active > .has-arrow::after,*/
            /*.sidebar-nav li.selected > .has-arrow::after,*/
            .sidebar-nav li.active > .has-arrow::after,
            .sidebar-nav li > .has-arrow.active::after,
            .sidebar-nav .has-arrow[aria-expanded="true"]::after {
                -webkit-transform: rotate(-135deg) translate(0, -50%);
                -ms-transform: rotate(-135deg) translate(0, -50%);
                -o-transform: rotate(-135deg) translate(0, -50%);
                transform: rotate(-135deg) translate(0, -50%);
            }
            .sidebar-nav > #sidebarnav > .sidebar-item > .sidebar-link:hover {
            }
            #main-wrapper[data-layout="horizontal"] .left-sidebar[data-sidebarbg="skin6"] .sidebar-nav ul .sidebar-item .sidebar-link,
            #main-wrapper[data-layout="vertical"] .left-sidebar[data-sidebarbg="skin6"] .sidebar-nav ul .sidebar-item .sidebar-link {
                color: #54667a;
            }
            #main-wrapper[data-layout="vertical"] .left-sidebar[data-sidebarbg="skin6"] .sidebar-nav ul .sidebar-item .sidebar-link,
            #main-wrapper[data-layout="horizontal"] .left-sidebar[data-sidebarbg="skin6"] .sidebar-nav ul .sidebar-item .sidebar-link {
                color: #212529;
            }
            .pt-2 {
                padding-top: 0.5rem !important;
            }
            .waves-effect {
                position: relative;
                cursor: pointer;
                display: inline-block;
                overflow: hidden;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
                -webkit-tap-highlight-color: transparent;
                vertical-align: middle;
                z-index: 1;
                will-change: opacity, transform;
                -webkit-transition: all 0.1s ease-out;
                -o-transition: all 0.1s ease-out;
                transition: all 0.1s ease-out;
            }
            .waves-effect .waves-ripple {
                position: absolute;
                border-radius: 50%;
                width: 20px;
                height: 20px;
                margin-top: -10px;
                margin-left: -10px;
                opacity: 0;
                background: rgba(0, 0, 0, 0.2);
                -webkit-transition: all 0.7s ease-out;
                -o-transition: all 0.7s ease-out;
                transition: all 0.7s ease-out;
                -webkit-transition-property: -webkit-transform, opacity;
                -o-transition-property: -o-transform, opacity;
                -webkit-transition-property: opacity, -webkit-transform;
                transition-property: opacity, -webkit-transform;
                -o-transition-property: transform, opacity;
                transition-property: transform, opacity;
                transition-property: transform, opacity, -webkit-transform;
                -webkit-transform: scale(0);
                -ms-transform: scale(0);
                transform: scale(0);
                pointer-events: none;
            }
            .waves-effect.waves-light .waves-ripple {
                background-color: rgba(255, 255, 255, 0.45);
            }

            .waves-effect.waves-red .waves-ripple {
                background-color: rgba(244, 67, 54, 0.7);
            }

            .waves-effect.waves-yellow .waves-ripple {
                background-color: rgba(255, 235, 59, 0.7);
            }

            .waves-effect.waves-orange .waves-ripple {
                background-color: rgba(255, 152, 0, 0.7);
            }

            .waves-effect.waves-purple .waves-ripple {
                background-color: rgba(156, 39, 176, 0.7);
            }

            .waves-effect.waves-green .waves-ripple {
                background-color: rgba(76, 175, 80, 0.7);
            }

            .waves-effect.waves-teal .waves-ripple {
                background-color: rgba(0, 150, 136, 0.7);
            }
            #main-wrapper[data-layout="vertical"][data-sidebartype="mini-sidebar"] .sidebar-nav .has-arrow:after,
            #main-wrapper[data-layout="vertical"][data-sidebartype="mini-sidebar"] .sidebar-nav .hide-menu {
                display: none;
            }

            #main-wrapper[data-layout="vertical"][data-sidebartype="mini-sidebar"] .left-sidebar:hover .sidebar-nav .hide-menu,
            #main-wrapper[data-layout="vertical"][data-sidebartype="mini-sidebar"] .left-sidebar:hover .sidebar-nav .has-arrow:after {
                display: block;
            }

            .table-hover:hover .btnedit {
                background-color: #e3e3e3 !important;
            }
            .btnedit:hover {
                background-color: #e3e3e3 !important;
            }

            /*  thong bao*/

            .center {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                text-align: center;
            }
            .popup {
                width: 350px;
                height: 280px;
                padding: 30px 20px;
                background: #f5f5f5;
                border-radius: 10px;
                box-sizing: border-box;
                z-index: 2;
                text-align: center;
                opacity: 0;
                top: -200%;
                transform: translate(-50%, -50%) scale(0.5);
                transition: opacity 300ms ease-in-out, top 1000ms ease-in-out, transform 1000ms ease-in-out;
            }
            .popup.active {
                opacity: 1;
                top: 50%;
                transform: translate(-50%, -50%) scale(1);
                transition: transform 300ms cubic-bezier(0.18, 0.89, 0.43, 1.19);
            }
            .popup .icon {
                margin: 5px 0px;
                width: 50px;
                height: 50px;
                border: 2px solid yellow;
                text-align: center;
                display: inline-block;
                border-radius: 50%;
                line-height: 60px;
            }

            .popup .title {
                margin: 5px 0px;
                font-size: 30px;
                font-weight: 600;
            }
            .popup .description {
                color: #222;
                font-size: 15px;
                padding: 5px;
            }
            .popup .dismiss-btn {
                margin-top: 15px;
            }
            .popup .dismiss-btn button {
                padding: 10px 20px;
                background: #111;
                color: #f5f5f5;
                border: 2px solid #111;
                font-size: 16px;
                font-weight: 600;
                outline: none;
                border-radius: 10px;
                cursor: pointer;
                transition: all 300ms ease-in-out;
                margin-right: 50px;
            }
            .popup .dismiss-btn button:hover {
                color: #111;
                background: #f5f5f5;
            }
            .popup > div {
                position: relative;
                top: 10px;
                opacity: 0;
            }
            .popup.active > div {
                top: 0px;
                opacity: 1;
            }
            .popup.active .icon {
                transition: all 300ms ease-in-out 250ms;
            }
            .popup.active .title {
                transition: all 300ms ease-in-out 300ms;
            }
            .popup.active .description {
                transition: all 300ms ease-in-out 350ms;
            }

            .popup.active .dismiss-btn {
                transition: all 300ms ease-in-out 400ms;
            }
        </style>
        <link href="<c:url value="/resources/assets/dist/css/navbar-top.css" />" rel="stylesheet">
</head>
<body>
        <div class="preloader">
            <div class="lds-ripple">
                <div class="lds-pos"></div>
                <div class="lds-pos"></div>
            </div>
        </div>
        <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full" data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
            <header class="topbar" data-navbarbg="skin5">
                <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                    <div class="navbar-header" data-logobg="skin6" style="margin-top: 0px !important; position: fixed; top: 10px;">
                        <a class="navbar-brand" href="/Lab_2/test3.htm">
                            <span class="logo-text">
                                <span style="color: black; margin-right: 10px;"><i style="font-size: 30px;" class="fas fa-igloo"></i></span>
                            </span>
                            <span class="logo-text">
                                <span style="color: red; font-family: 'Dancing Script', cursive; text-shadow: 5px 2px 4px grey; font-size: 40px;">Đông Lý</span>
                            </span>
                        </a>
                        <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    </div>
                    <div
                        style="position: fixed; top: 0px; left: 270px; width: 100%; height: 60px !important; background-color: #383743; background-image: linear-gradient(to bottom right, #383743, pink); opacity: 0.8; height: 80px;"
                        class="navbar-collapse collapse"
                        id="navbarSupportedContent"
                        data-navbarbg="skin5">
                        <ul class="navbar-nav ms-auto d-flex align-items-center" style="margin-left: 860px !important; margin-top: 10px !important;">
                            <li class="in" >
                                <form role="search" class="app-search d-none d-md-block me-3">
                                   <i style="color: white;" class="fas fa-phone"></i> <span style="color: white;">0123456789</span>
                                </form>
                            </li>
                            <li class="in" style="margin-left: 30px;">
                                <form role="search" class="app-search d-none d-md-block me-3">
                                   <i class="fas fa-cogs"></i> <span style="color: black;">Setting</span>
                                </form>
                            </li>
                            <li style="margin-left: 30px;">
                                <a class="profile-pic" href="#" style="text-decoration: none;">
                                    <img src="${pageContext.request.contextPath}/images/1.png" alt="user-img" width="36" class="img-circle" /><span class="text-white font-medium"> Hello, Admin</span>
                                </a>
                            </li>
                            
                        </ul>
                    </div>
                </nav>
            </header>

            <div style="float: right; margin-left: 300px !important;">
                <div style="margin-left: 300px;">
                    <div class="container">
                        <!--  -->
                        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1" style="float: right !important;">Thêm</button>
                        <!-- Modal thêm tuyến xe-->
                        <div class="modal fade" id="myModal1" role="dialog">
                            <div class="modal-dialog modal-sm">
                                <div class="modal-content" style="width: 500px !important; height: 320px !important;">
                                    <div class="modal-header">
                                        <h4 class="modal-title" style="color: red;">Thêm Tuyến Xe</h4>
                                        <button type="button" class="close" data-dismiss="modal" style="float: right !important;">&times;</button>
                                    </div>
                                    <div class="modal-body" style="width: 500px !important; height: 520px !important;">
                                        <form:form action="atuyen.htm" modelAttribute="tuyen" onsubmit="return validate()" method="post">
                                            <div class="row no-gutters mb-2" style="margin-left: 40px;">
                                                <div style="color: red;" class="col-4 d-flex align-items-center">
                                                    <p class="font-weight-normal">Tên Tuyến:</p>
                                                </div>
                                                <div class="col-8 pb-2 d-flex align-items-center">
                                                    <h6 class="text-dark">
                                                        <form:input path="tentuyen" id="num1" style="width: 200px;" class="form-control" autocomplete="off" />
                                                    </h6>
                                                </div>
                                            </div>

                                            <div class="row no-gutters mb-2" style="margin-left: 40px;">
                                                <div style="color: red;" class="col-4 d-flex align-items-center">
                                                    <p class="font-weight-normal">Giờ:</p>
                                                </div>
                                                <div class="col-8 pb-2 d-flex align-items-center">
                                                    <h6 class="text-dark">
                                                        <form:input path="gio" id="num2" type="time" style="width: 200px;" class="form-control" autocomplete="off" />
                                                    </h6>
                                                </div>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default 1" data-dismiss="modal" style="margin-left: 50px; background-color: red; color: black; opacity: 0.8;">Close</button>
                                                <button name="${btnStatus}" id="dismiss-popup-btn " type="submit" class="btn btn-default 2" style="background-color: blue; color: black; opacity: 0.9;">Thêm Tuyến</button>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal edit chuyến xe-->

                        <div class="modal fade" id="myModal" role="dialog">
                            <div class="modal-dialog modal-sm">
                                <div class="modal-content" style="width: 500px !important; height: 380px !important;">
                                    <div class="modal-header">
                                        <h4 class="modal-title" style="color: red;">Thay đổi thông tin tuyến xe</h4>
                                        <button type="button" class="close" data-dismiss="modal" style="float: right !important;">&times;</button>
                                    </div>
                                    <div class="modal-body" style="width: 500px !important; height: 520px !important;">
                                        <form:form action="/Lab_2/atuyen.htm" modelAttribute="tuyen" onsubmit="return validate()" method="post">
                                            <div class="row no-gutters mb-2" style="margin-left: 40px;">
                                                <div style="color: red;" class="col-4 d-flex align-items-center">
                                                    <p class="font-weight-normal">Mã Tuyến:</p>
                                                </div>
                                                <div class="col-8 pb-2 d-flex align-items-center">
                                                    <h6 class="text-dark">
                                                        <form:input
                                                            path="id"
                                                            style="width: 200px;"
                                                            readonly="true"
                                                            class="form-control number"
                                                            autocomplete="off"
                                                            onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"/>
                                                    </h6>
                                                </div>
                                            </div>

                                            <div class="row no-gutters mb-2" style="margin-left: 40px;">
                                                <div style="color: red;" class="col-4 d-flex align-items-center">
                                                    <p class="font-weight-normal">Tên Tuyến:</p>
                                                </div>
                                                <div class="col-8 pb-2 d-flex align-items-center">
                                                    <h6 class="text-dark">
                                                        <form:input path="tentuyen" id="num3" style="width: 200px;" class="form-control" autocomplete="off" />
                                                    </h6>
                                                </div>
                                            </div>

                                            <div class="row no-gutters mb-2" style="margin-left: 40px;">
                                                <div style="color: red;" class="col-4 d-flex align-items-center">
                                                    <p class="font-weight-normal">Giờ:</p>
                                                </div>
                                                <div class="col-8 pb-2 d-flex align-items-center">
                                                    <h6 class="text-dark">
                                                        <form:input path="gio" type="time" id="num4" style="width: 200px;" class="form-control" autocomplete="off" />
                                                    </h6>
                                                </div>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default 1" data-dismiss="modal" style="margin-left: 50px; background-color: red; color: black; opacity: 0.8;">Close</button>
                                                <button name="${btnStatus}" id="dismiss-popup-btn " type="submit" class="btn btn-default 2" style="background-color: blue; color: black; opacity: 0.9;">Thay đổi</button>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
					<input id="myInput" onkeyup="myFunction()" type="text" placeholder="    Search...........&#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#9997;" class="form-control tickets-code" autocomplete="off" style="width: 400px;margin-bottom: 5px; ">
                    <table class="table table-hover" style="margin-right: 600px;">
                        <tr style="background-color: pink;">
                            <th style="text-align: center;">Mã Tuyến</th>
                            <th style="text-align: center;">Tên Tuyến</th>
                            <th style="text-align: center;">Giờ</th>

                            <th></th>
                            <th></th>
                        </tr>
                        <c:forEach var="t" items="${atuyen}">
                        <tbody id="myTable">
                            <tr>
                                <td style="text-align: center;">${t.id}</td>
                                <td style="text-align: center;">${t.tentuyen}</td>
                                <td style="text-align: center;">${t.gio}</td>
                                <td>
                                    <button class="btn btn-success" type="button" class="btnedit" data-toggle="modal" data-target="#myModal" style="border: none;">
                                        <a style="color: white !important;text-decoration: none;" href="/Lab_2/atuyen/${t.id}-${t.tentuyen}-${t.gio}.htm?linkEdit">Edit</a>
                                        <a href="javascript:void(0)"><i style="color: white !important;width: 50px; height: 40px;" disabled="disabled" class="fas fa-pen-alt"> </i></a>
                                    </button>
                                </td>

                                <td>
                                    <a onclick="huy()" class="btn btn-danger" style="text-decoration: none; margin-bottom: 10px;" name="btnDelete" href="/Lab_2/atuyen/${t.id}.htm?linkDelete" role="button" id="dismiss-popup-btn">
                                        <i style="width: 50px; height: 40px;" class="fas fa-trash-alt">Delete</i>
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
                <aside class="left-sidebar" data-sidebarbg="skin6" style="position: fixed; top: 100px !important; width: 300px; margin-left: -30px;">
                    <nav class="sidebar-nav">
                        <ul id="sidebarnav" class="col-md-3">
                            <li class="sidebar-item pt-2 hoc">
                                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/Lab_2/akhachhang.htm" style="text-decoration: none;" aria-expanded="false">
                                    <i class="fas fa-user-injured" style="color: black; margin-right: 5px;"></i>
                                    <span class="hide-menu">Khách Hàng</span>
                                </a>
                            </li>
                            <li class="sidebar-item hoc">
                                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/Lab_2/achuyen.htm" style="text-decoration: none;" aria-expanded="false">
                                    <i class="fas fa-bus-alt" style="color: black; margin-right: 5px;"></i>
                                    <span class="hide-menu">Chuyến Xe</span>
                                </a>
                            </li>
                            <li class="sidebar-item hoc" style="border-left: thick solid #ff0000; background-color: #e3e3e3;">
                                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/Lab_2/atuyen.htm" style="text-decoration: none;" aria-expanded="false">
                                    <i class="fa fa-road" style="color: black; margin-right: 5px;"></i>
                                    <span class="hide-menu">Tuyến Xe</span>
                                </a>
                            </li>
                            <li class="sidebar-item hoc">
                                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/Lab_2/axe.htm" style="text-decoration: none;" aria-expanded="false">
                                    <i class="fa fa-car-side" style="color: black; margin-right: 5px;"></i>
                                    <span class="hide-menu">Xe</span>
                                </a>
                            </li>

                            <li class="sidebar-item hoc">
                                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/Lab_2/ave.htm" style="text-decoration: none;" aria-expanded="false">
                                    <i class="fa fa-ticket-alt" style="color: black; margin-right: 5px;"></i>
                                    <span class="hide-menu">Vé Xe</span>
                                </a>
                            </li>
                            <li class="sidebar-item hoc">
                                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/Lab_2/aloai.htm" style="text-decoration: none;" aria-expanded="false">
                                    <i class="fab fa-typo3" style="color: black; margin-right: 5px;"></i>
                                    <span class="hide-menu">Loại Xe</span>
                                </a>
                            </li>
                            <li class="sidebar-item hoc">
                               <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/Lab_2/athongke.htm" style="text-decoration: none;" aria-expanded="false">
                                    <i class="fa fa-info-circle" style="color: black; margin-right: 5px;"></i>
                                    <span class="hide-menu">Thống Kê</span>
                                </a>
                            </li>
                        </ul>
                        <img style="width: 200px; height: 200px; margin-top: 360px; margin-left: 0px;" class="img" src="${pageContext.request.contextPath}/images/66.gif" />
                    </nav>
                </aside>
            </div>
        </div>

        <script type="text/javascript">
        $(document).ready(function(){
     		  $("#myInput").on("keyup", function() {
     		    var value = $(this).val().toLowerCase();
     		    $("#myTable tr").filter(function() {
     		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
     		    });
     		  });
     		});
            document.getElementById("open-popup-btn").addEventListener("click", function () {
                document.getElementsByClassName("popup")[0].classList.add("active");
            });

            document.getElementById("dismiss-popup-btn").addEventListener("click", function () {
                document.getElementsByClassName("popup")[0].classList.remove("active");
            });

            $(function () {
                "use strict";

                $(".preloader").fadeOut();
                $(".nav-toggler").on("click", function () {
                    $("#main-wrapper").toggleClass("show-sidebar");
                    $(".nav-toggler i").toggleClass("ti-menu");
                });
                $(".search-box a, .search-box .app-search .srh-btn").on("click", function () {
                    $(".app-search").toggle(200);
                    $(".app-search input").focus();
                });
                $("body, .page-wrapper").trigger("resize");
                $(".page-wrapper").delay(20).show();
                var setsidebartype = function () {
                    var width = window.innerWidth > 0 ? window.innerWidth : this.screen.width;
                    if (width < 1170) {
                        $("#main-wrapper").attr("data-sidebartype", "mini-sidebar");
                    } else {
                        $("#main-wrapper").attr("data-sidebartype", "full");
                    }
                };
                $(window).ready(setsidebartype);
                $(window).on("resize", setsidebartype);
            });

            $(function () {
                "use strict";
                function handlenavbarbg() {
                    if ($("#main-wrapper").attr("data-navbarbg") == "skin6") {
                        // do this
                        $(".topbar .navbar").addClass("navbar-light");
                        $(".topbar .navbar").removeClass("navbar-dark");
                    } else {
                        // do that
                    }
                }

                handlenavbarbg();
            });
            $(function () {
                "use strict";
                var url = window.location + "";
                var path = url.replace(window.location.protocol + "//" + window.location.host + "/", "");
                var element = $("ul#sidebarnav a").filter(function () {
                    return this.href === url || this.href === path; // || url.href.indexOf(this.href) === 0;
                });
                element.parentsUntil(".sidebar-nav").each(function (index) {
                    if ($(this).is("li") && $(this).children("a").length !== 0) {
                        $(this).children("a").addClass("active");
                        $(this).parent("ul#sidebarnav").length === 0 ? $(this).addClass("active") : $(this).addClass("selected");
                    } else if (!$(this).is("ul") && $(this).children("a").length === 0) {
                        $(this).addClass("selected");
                    } else if ($(this).is("ul")) {
                        $(this).addClass("in");
                    }
                });

                element.addClass("active");
                $("#sidebarnav a").on("click", function (e) {
                    if (!$(this).hasClass("active")) {
                        $("ul", $(this).parents("ul:first")).removeClass("in");
                        $("a", $(this).parents("ul:first")).removeClass("active");

                        $(this).next("ul").addClass("in");
                        $(this).addClass("active");
                    } else if ($(this).hasClass("active")) {
                        $(this).removeClass("active");
                        $(this).parents("ul:first").removeClass("active");
                        $(this).next("ul").removeClass("in");
                    }
                });
                $("#sidebarnav >li >a.has-arrow").on("click", function (e) {
                    e.preventDefault();
                });
            });

            !(function (t) {
                "use strict";
                function e(t) {
                    return null !== t && t === t.window;
                }
                function n(t) {
                    return e(t) ? t : 9 === t.nodeType && t.defaultView;
                }
                function a(t) {
                    var e,
                        a,
                        i = { top: 0, left: 0 },
                        o = t && t.ownerDocument;
                    return (e = o.documentElement), "undefined" != typeof t.getBoundingClientRect && (i = t.getBoundingClientRect()), (a = n(o)), { top: i.top + a.pageYOffset - e.clientTop, left: i.left + a.pageXOffset - e.clientLeft };
                }
                function i(t) {
                    var e = "";
                    for (var n in t) t.hasOwnProperty(n) && (e += n + ":" + t[n] + ";");
                    return e;
                }
                function o(t) {
                    if (d.allowEvent(t) === !1) return null;
                    for (var e = null, n = t.target || t.srcElement; null !== n.parentElement; ) {
                        if (!(n instanceof SVGElement || -1 === n.className.indexOf("waves-effect"))) {
                            e = n;
                            break;
                        }
                        if (n.classList.contains("waves-effect")) {
                            e = n;
                            break;
                        }
                        n = n.parentElement;
                    }
                    return e;
                }
                function r(e) {
                    var n = o(e);
                    null !== n &&
                        (c.show(e, n),
                        "ontouchstart" in t && (n.addEventListener("touchend", c.hide, !1), n.addEventListener("touchcancel", c.hide, !1)),
                        n.addEventListener("mouseup", c.hide, !1),
                        n.addEventListener("mouseleave", c.hide, !1));
                }
                var s = s || {},
                    u = document.querySelectorAll.bind(document),
                    c = {
                        duration: 750,
                        show: function (t, e) {
                            if (2 === t.button) return !1;
                            var n = e || this,
                                o = document.createElement("div");
                            (o.className = "waves-ripple"), n.appendChild(o);
                            var r = a(n),
                                s = t.pageY - r.top,
                                u = t.pageX - r.left,
                                d = "scale(" + (n.clientWidth / 100) * 10 + ")";
                            "touches" in t && ((s = t.touches[0].pageY - r.top), (u = t.touches[0].pageX - r.left)),
                                o.setAttribute("data-hold", Date.now()),
                                o.setAttribute("data-scale", d),
                                o.setAttribute("data-x", u),
                                o.setAttribute("data-y", s);
                            var l = { top: s + "px", left: u + "px" };
                            (o.className = o.className + " waves-notransition"),
                                o.setAttribute("style", i(l)),
                                (o.className = o.className.replace("waves-notransition", "")),
                                (l["-webkit-transform"] = d),
                                (l["-moz-transform"] = d),
                                (l["-ms-transform"] = d),
                                (l["-o-transform"] = d),
                                (l.transform = d),
                                (l.opacity = "1"),
                                (l["-webkit-transition-duration"] = c.duration + "ms"),
                                (l["-moz-transition-duration"] = c.duration + "ms"),
                                (l["-o-transition-duration"] = c.duration + "ms"),
                                (l["transition-duration"] = c.duration + "ms"),
                                (l["-webkit-transition-timing-function"] = "cubic-bezier(0.250, 0.460, 0.450, 0.940)"),
                                (l["-moz-transition-timing-function"] = "cubic-bezier(0.250, 0.460, 0.450, 0.940)"),
                                (l["-o-transition-timing-function"] = "cubic-bezier(0.250, 0.460, 0.450, 0.940)"),
                                (l["transition-timing-function"] = "cubic-bezier(0.250, 0.460, 0.450, 0.940)"),
                                o.setAttribute("style", i(l));
                        },
                        hide: function (t) {
                            d.touchup(t);
                            var e = this,
                                n = (1.4 * e.clientWidth, null),
                                a = e.getElementsByClassName("waves-ripple");
                            if (!(a.length > 0)) return !1;
                            n = a[a.length - 1];
                            var o = n.getAttribute("data-x"),
                                r = n.getAttribute("data-y"),
                                s = n.getAttribute("data-scale"),
                                u = Date.now() - Number(n.getAttribute("data-hold")),
                                l = 350 - u;
                            0 > l && (l = 0),
                                setTimeout(function () {
                                    var t = {
                                        top: r + "px",
                                        left: o + "px",
                                        opacity: "0",
                                        "-webkit-transition-duration": c.duration + "ms",
                                        "-moz-transition-duration": c.duration + "ms",
                                        "-o-transition-duration": c.duration + "ms",
                                        "transition-duration": c.duration + "ms",
                                        "-webkit-transform": s,
                                        "-moz-transform": s,
                                        "-ms-transform": s,
                                        "-o-transform": s,
                                        transform: s,
                                    };
                                    n.setAttribute("style", i(t)),
                                        setTimeout(function () {
                                            try {
                                                e.removeChild(n);
                                            } catch (t) {
                                                return !1;
                                            }
                                        }, c.duration);
                                }, l);
                        },
                        wrapInput: function (t) {
                            for (var e = 0; e < t.length; e++) {
                                var n = t[e];
                                if ("input" === n.tagName.toLowerCase()) {
                                    var a = n.parentNode;
                                    if ("i" === a.tagName.toLowerCase() && -1 !== a.className.indexOf("waves-effect")) continue;
                                    var i = document.createElement("i");
                                    i.className = n.className + " waves-input-wrapper";
                                    var o = n.getAttribute("style");
                                    o || (o = ""), i.setAttribute("style", o), (n.className = "waves-button-input"), n.removeAttribute("style"), a.replaceChild(i, n), i.appendChild(n);
                                }
                            }
                        },
                    },
                    d = {
                        touches: 0,
                        allowEvent: function (t) {
                            var e = !0;
                            return (
                                "touchstart" === t.type
                                    ? (d.touches += 1)
                                    : "touchend" === t.type || "touchcancel" === t.type
                                    ? setTimeout(function () {
                                          d.touches > 0 && (d.touches -= 1);
                                      }, 500)
                                    : "mousedown" === t.type && d.touches > 0 && (e = !1),
                                e
                            );
                        },
                        touchup: function (t) {
                            d.allowEvent(t);
                        },
                    };
                (s.displayEffect = function (e) {
                    (e = e || {}),
                        "duration" in e && (c.duration = e.duration),
                        c.wrapInput(u(".waves-effect")),
                        "ontouchstart" in t && document.body.addEventListener("touchstart", r, !1),
                        document.body.addEventListener("mousedown", r, !1);
                }),
                    (s.attach = function (e) {
                        "input" === e.tagName.toLowerCase() && (c.wrapInput([e]), (e = e.parentElement)), "ontouchstart" in t && e.addEventListener("touchstart", r, !1), e.addEventListener("mousedown", r, !1);
                    }),
                    (t.Waves = s),
                    document.addEventListener(
                        "DOMContentLoaded",
                        function () {
                            s.displayEffect();
                        },
                        !1
                    );
            })(window);
            $(function () {
                "use strict";
                new Chartist.Line(
                    "#ct-visits",
                    {
                        labels: ["2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015"],
                        series: [
                            [5, 2, 7, 4, 5, 3, 5, 4],
                            [2, 5, 2, 6, 2, 5, 2, 4],
                        ],
                    },
                    {
                        top: 0,
                        low: 1,
                        showPoint: true,
                        fullWidth: true,
                        plugins: [Chartist.plugins.tooltip()],
                        axisY: {
                            labelInterpolationFnc: function (value) {
                                return value / 1 + "k";
                            },
                        },
                        showArea: true,
                    }
                );

                var chart = [chart];

                var sparklineLogin = function () {
                    $("#sparklinedash").sparkline([0, 5, 6, 10, 9, 12, 4, 9], {
                        type: "bar",
                        height: "30",
                        barWidth: "4",
                        resize: true,
                        barSpacing: "5",
                        barColor: "#7ace4c",
                    });
                    $("#sparklinedash2").sparkline([0, 5, 6, 10, 9, 12, 4, 9], {
                        type: "bar",
                        height: "30",
                        barWidth: "4",
                        resize: true,
                        barSpacing: "5",
                        barColor: "#7460ee",
                    });
                    $("#sparklinedash3").sparkline([0, 5, 6, 10, 9, 12, 4, 9], {
                        type: "bar",
                        height: "30",
                        barWidth: "4",
                        resize: true,
                        barSpacing: "5",
                        barColor: "#11a0f8",
                    });
                    $("#sparklinedash4").sparkline([0, 5, 6, 10, 9, 12, 4, 9], {
                        type: "bar",
                        height: "30",
                        barWidth: "4",
                        resize: true,
                        barSpacing: "5",
                        barColor: "#f33155",
                    });
                };
                var sparkResize;
                $(window).on("resize", function (e) {
                    clearTimeout(sparkResize);
                    sparkResize = setTimeout(sparklineLogin, 500);
                });
                sparklineLogin();
            });

            function validate() {
                var n1 = document.getElementById("num1");
                var n2 = document.getElementById("num2");
                var n3 = document.getElementById("num3");
                var n4 = document.getElementById("num4");

                if (n1.value != "" && n2.value != "" && n3.value != "" && n4.value != "") {
                    alert("Thành Công!!!");
                    return true;
                } else {
                    if (n1.value == "" && n3.value == "") {
                        alert("Vui lòng nhập tên tuyến!!!");
                        return false;
                    }
                    if (n2.value == "" && n4.value == "") {
                        alert("Vui lòng nhập giờ khởi hành!!!");
                        return false;
                    }
                }
            }
            
            function huy() {
          	  alert("Xóa thành công!!!");
          	
          	  } 
            
        </script>
    </body>
</html>
