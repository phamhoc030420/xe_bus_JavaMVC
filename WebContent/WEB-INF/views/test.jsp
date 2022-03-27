<%@ page 
   pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="">
      <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
      <meta name="generator" content="Hugo 0.80.0">
      <title>Đặt Vé</title>
      <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/navbar-static/">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="<c:url value='/resources/assets/dist/css/bootstrap.min.css'></c:url>" rel="stylesheet">
      <link href="<c:url value='/resources/fontawesome-free-5.15.1-web/css/all.css'></c:url>" rel="stylesheet">
      <style type="text/css">
         .hh:hover{
         background-color: blue;
         color: white;
         }
         .seat:hover {
         color: red;
         } 
         .hide {
         display: none;
         }
         .seat:hover + .hide {
         display: block;
         color: red;
         }
         /*==Style cho menu===*/
         #menu ul {
         background: #1F568B;
         list-style-type: none;
         text-align: center;
         }
         #menu li {
         color: #f1f1f1;
         display: inline-block;
         width: 120px;
         height: 40px;
         line-height: 40px;
         margin-left: -5px;
         }
         #menu a {
         text-decoration: none;
         color: #fff;
         display: block;
         }
         #menu a:hover {
         background: #F1F1F1;
         color: #333;
         }
         .sub-menu li {
         display: none;
         }
         #menu li {
         position: relative;
         }
         .sub-menu {
         display: none;
         position: absolute;
         }
         #menu li:hover .sub-menu {
         display: block;
         }
         .sub-menu li {
         margin-left: 0 !important;
         }
         #menu{
         margin-bottom: 100px;}
         .1:hover{
         width: 80px;height: 80px;
         background-color: green;
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
         .popup {
         width:350px;
         height:280px;
         padding:30px 20px;
         background:#f5f5f5;
         border-radius:10px;
         box-sizing:border-box;
         z-index:2;
         text-align:center;
         opacity:0;
         top:-200%;
         transform:translate(-50%,-50%) scale(0.5);
         transition: opacity 300ms ease-in-out,
         top 1000ms ease-in-out,
         transform 1000ms ease-in-out;
         }
         .popup.active {
         opacity:1;
         top:50%;
         transform:translate(-50%,-50%) scale(1);
         transition: transform 300ms cubic-bezier(0.18,0.89,0.43,1.19);
         }
         .popup .icon {
         margin:5px 0px;
         width:50px;
         height:50px;
         border:2px solid #34f234;
         text-align:center;
         display:inline-block;
         border-radius:50%;
         line-height:60px;
         }
         .popup .icon i.fa {
         font-size:30px;
         color:#34f234;
         } 
         .popup .title {
         margin:5px 0px;
         font-size:30px;
         font-weight:600;
         }
         .popup .description {
         color:#222;
         font-size:15px;
         padding:5px;
         }
         .popup .dismiss-btn {
         margin-top:15px;
         }
         .popup .dismiss-btn button {
         padding:10px 20px;
         background:#111;
         color:#f5f5f5;
         border:2px solid #111;
         font-size:16px;
         font-weight:600;
         outline:none;
         border-radius:10px;
         cursor:pointer;
         transition: all 300ms ease-in-out;
         }
         .popup .dismiss-btn button:hover {
         color:#111;
         background:#f5f5f5;
         }
         .popup > div {
         position:relative;
         top:10px;
         opacity:0;
         }
         .popup.active > div {
         top:0px;
         opacity:1;
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
      <!-- Custom styles for this template -->
      <link href='<c:url value="/resources/assets/dist/css/navbar-top.css"></c:url>' rel="stylesheet">
   </head>
   <body>
      <nav style="margin-bottom: 0px !important" class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
         <div class="container-fluid">
            <a class="navbar-brand" href="/Lab_2/test3.htm">Đông Lý</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
               <ul class="navbar-nav me-auto mb-2 mb-md-0">
                  <li class="nav-item">
                     <a class="nav-link active" aria-current="page" href="/Lab_2/test3.htm">Phần Mềm</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="/Lab_2/test3.htm">Support</a>
                  </li>
               </ul>
               <form class="d-flex">
                  <a style="background-color: red;margin-right: 20px; " class="btn btn-primary d-block" href="ves.htm"> <span>Tra cứu vé</span>
                  <i class="fas fa-search"></i>	
                  </a>
                  <button class="btn btn-outline-success" type="submit"><a href="login.htm" style="text-decoration: none;color: white;">Đăng Nhập</a></button>
               </form>
            </div>
         </div>
      </nav>
      <div id="menu">
         <ul>
            <li><a href="test3.htm">Trang chủ</a></li>
            <li>
               <a href="#">Dịch Vụ</a>
               <ul class="sub-menu">
                  <li ><a href="#">Ăn uống</a></li>
                  <li><a href="#">Chơi</a></li>
                  <li><a href="#">DV khác</a></li>
               </ul>
            </li>
            <li><a href="#">Tin tức</a>
            </li>
            <li><a href="#">Hỏi đáp</a></li>
            <li><a href="#">Liên hệ</a></li>
         </ul>
      </div>
      <main class="container">
         <div class="row no-gutters" style="border: 10px;">
            <div class="col-md-6 pt-1 pl-5 pb-2 pr-5 search-pickup-date">
               <div class=" animated fadeIn text-left">
                  <a href="#" class="text-secondary text-underline"><b>Thông tin chuyến xe</b></a>
                  <form method="get" class="search-form  mt-2" xeca-search-form="">
                     <input class="agencyType" type="hidden" name="agencyType" value="1">
                     <div class="d-flex flex-row justify-content-start">
                        <div class="flex-fill">
                           <div class="form-group p-0">
                              <div class="form-field" id="from-location">
                                 <i class="icon-before icon-Vector-1"></i> <input data-input-name="startPoint" type="text" id="start-point" required class="form-control pl-5 from-location ui-autocomplete-input" placeholder="Điểm đi" province="18"  value="Sài Gòn" autocomplete="off"> <i id="btn-switch-location" class="icon-special icon-Group-20"></i>
                                 <ul id="ui-id-1" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul>
                                 <ul id="ui-id-2" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul>
                              </div>
                           </div>
                        </div>
                        <div class="flex-fill">
                           <div class="form-group p-0">
                              <div class="form-field" id="to-location">
                                 <i class="icon-before icon-Vector-1"></i> <input type="text" id="end-point" data-input-name="endPoint" required class="form-control pl-5 to-location ui-autocomplete-input" placeholder="Điểm đến" province="95"  value="Phú Yên" autocomplete="off">
                                 <ul id="ui-id-3" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul>
                                 <ul id="ui-id-4" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul>
                              </div>
                           </div>
                        </div>
                        <div class="pl-2">
                           <!-- <input type="submit" href="Lab_2/test3.htm" value="THAY ĐỔI" class="btn btn-primary" disabled=""> -->
                           <a style="height: 40px; width: 100px; margin-left: 20px;" href="test3.htm" type="submit" class="btn btn-primary">THAY ĐỔI</a>
                        </div>
                        <div class="pl-2">
                           <!-- <input type="submit" href="Lab_2/test3.htm" value="THAY ĐỔI" class="btn btn-primary" disabled=""> -->
                           <a style="height: 40px; width: 100px; margin-left: 20px;" href="test.htm" type="submit" class="btn btn-primary">QUAY LẠI</a>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
         <hr  width="100%" align="center"  style="color: red;"/>
         <div id="booking-1773-1592" class="tab-pane animated fadeIn dat-ve-tab-container pt-3 active show">
            <div class="car-item-options-container">
               <div class="row">
                  <div class="col-5 book-view" numbofticketpertran="9" sellbeforetime="1" overtime="0">
                     <p class="pb-2 border-bottom">
                        <b>Chọn vị trí trên xe</b>
                     </p>
                     <div class="d-flex flex-row justify-content-between pb-3">
                        <div class="pr-4">
                           <i class="fas fa-battery-empty"></i> <span class="text-secondary">Trống</span>
                        </div>
                        <div class="pr-4">
                           <i class="fas fa-battery-full"></i> <span class="text-sold">Đã bán</span>
                        </div>
                        <div class="pr-4">
                           <i style="color: red;" class="fas fa-battery-full"></i> <span class="text-primary">Chọn</span>
                        </div>
                        <div class="pr-4">
                           <i class="fas fa-battery-full"></i> <span class="text-vip">Giữ</span>
                        </div>
                     </div>
                     <div class="alert alert-bill" role="alert" >
                        <i class="icon-Vector-8 pr-1"></i> 
                        <b class="text-primary" >
                           <p style="color: red; font-weight: bold;">Chọn chỗ và điền thông tin cần thiết</p>
                        </b>
                     </div>
                     <!-- Sơ đồ xe -->
                     <div class="row seat-container pl-3 pr-3">
                        <div class="col-12 pl-0 pr-2">
                           <div  style="width: 300px;"class="card p-1">
                              <div style="background-color:#EDF1F5" class="card-body">
                                 <div  class="table-seats-grid-18">
                                    <div class="seats-grid-cell mb-3">
                                       <i class="fas fa-bus"></i>
                                    </div>
                                    <div id="g1" onclick="xem_kq1()" path="" id="1" class="seats-grid-cell mb-3"
                                       style="text-align: center;">
                                       <button  class="1" style="border: none;">
                                          <a  class="seat"> <i class="fas fa-couch"></i></a>
                                          <div  class="hide">  <span>Vị
                                             trí: <b  class="text-primary seat-hover">1</b>, Giá vé: <b
                                                class="text-primary price-hoder">120000</b>
                                             </span>
                                          </div >
                                       </button>
                                    </div>
                                    <div id="g2" onclick="xem_kq2()" id="2" class="seats-grid-cell mb-3"
                                       style="float: right !important;overflow: hidden;">
                                       <button class="1" style="border: none;">
                                          <a class="seat" style="float: right !important"> <i class="fas fa-couch"></i></a>
                                          <div class="hide"><span> Vị
                                             trí: <b class="text-primary seat-hover">2</b>, Giá: <b
                                                class="text-primary price-hoder">120000</b></span>
                                          </div>
                                       </button>
                                    </div>
                                    <div id="g3" onclick="xem_kq3()" class="seats-grid-cell mb-3">
                                       <button class="1" style="border: none;">
                                          <a class="seat" style="float: left !important;"> <i class="fas fa-couch"></i></a>
                                          <div class="hide">  <span>Vị
                                             trí: <b class="text-primary seat-hover">3</b>, Giá vé: <b
                                                class="text-primary price-hoder">120000</b>
                                             </span>
                                          </div>
                                       </button>
                                    </div>
                                    <!-- <div class="seats-grid-cell mb-3"></div> -->
                                    <div id="g4" onclick="xem_kq4()" class="seats-grid-cell mb-3"
                                       style="float: right; overflow: hidden;">
                                       <button class="1" style="border: none;">
                                          <a class="seat 4" style="float: right !important"> <i class="fas fa-couch"></i></a>
                                          <div class="hide"> <span>Vị
                                             trí: <b class="text-primary seat-hover">4</b>, Giá vé: <b
                                                class="text-primary price-hoder">120000</b>
                                             </span>
                                          </div>
                                       </button>
                                    </div>
                                    <div id="g5" onclick="xem_kq5()" class="seats-grid-cell mb-3">
                                       <button class="1" style="border: none;">
                                          <a class="seat" style="float: left !important;"> <i class="fas fa-couch"></i></a>
                                          <div class="hide" style="margin-bottom: 5px;"> <span>Vị
                                             trí: <b class="text-primary seat-hover">5</b>, Giá vé: <b
                                                class="text-primary price-hoder">120000</b>
                                             </span>
                                          </div>
                                       </button>
                                    </div>
                                    <!-- <div class="seats-grid-cell mb-3"></div> -->
                                    <div id="g6" onclick="xem_kq6()" class="seats-grid-cell mb-3"
                                       style="float: right !important;overflow: hidden;">
                                       <button class="1" style="border: none;">
                                          <a class="seat 6" style="float: right !important;"> <i class="fas fa-couch"></i></a>
                                          <div class="hide"> <span>Vị
                                             trí: <b class="text-primary seat-hover">6</b>, Giá vé: <b
                                                class="text-primary price-hoder">120000</b>
                                             </span>
                                          </div>
                                       </button>
                                    </div>
                                    <div id="g7" onclick="xem_kq7()" class="seats-grid-cell mb-3">
                                       <button class="1" style="border: none;">
                                          <a class="seat" style="float: left !important;"> <i class="fas fa-couch"></i></a>
                                          <div class="hide"> <span>Vị
                                             trí: <b class="text-primary seat-hover">7</b>, Giá vé: <b
                                                class="text-primary price-hoder">120000</b>
                                             </span>
                                          </div>
                                       </button>
                                    </div>
                                    <div id="g8" onclick="xem_kq8()" class="seats-grid-cell mb-3"
                                       style="float: right !important;overflow: hidden;">
                                       <button class="1" style="border: none;">
                                          <a class="seat 8"  style="float: right !important;"> <i class="fas fa-couch"></i></a>
                                          <div class="hide"> <span>Vị
                                             trí: <b class="text-primary seat-hover">8</b>, Giá vé: <b
                                                class="text-primary price-hoder">120000</b>
                                             </span>
                                          </div>
                                       </button>
                                    </div>
                                    <div id="g9" onclick="xem_kq9()" class="seats-grid-cell mb-3">
                                       <button class="1" style="border: none;">
                                          <a class="seat" style="float: left !important;"> <i class="fas fa-couch"></i></a>
                                          <div class="hide"> <span>Vị
                                             trí: <b class="text-primary seat-hover">9</b>, Giá vé: <b
                                                class="text-primary price-hoder">120000</b>
                                             </span>
                                          </div>
                                       </button>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <img style="width: 600px; height: 200px; margin-top: 200px;margin-left: 100px;" class="img" src="${pageContext.request.contextPath}/images/10.gif">
                           <div class="hide"> <span>Vị
                              trí: <b class="text-primary seat-hover">1</b>, Giá vé: <b
                                 class="text-primary price-hoder">120000</b>
                              </span>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-7 frm-booking">
                     <div class="row">
                        <div class="col-6">
                           <div class="row">
                              <p class="col-12 pb-2 pl-0 border-bottom">
                                 <b>Chọn điểm đón trả</b>
                              </p>
                              <div class="pb-3">
                                 <span class="note-information-title">Vui lòng nhập thông tin hành khách </span>
                              </div>
                              <div style="background-color: #EDF1F5" class="col-12 fill-information-user p-4">
                                 <div class="row no-gutters">
                                    <div class="d-flex align-items-center">
                                       <p class="input-compulsory-before">Địa điểm tại Phú Yên:</p>
                                    </div>
                                    <div class="col-12 d-flex align-items-center">
                                       <div class="form-group position-relative w-100 auto-complete-input">                                      
                                          <select style="width: 350px; margin-bottom: 10px;  border-radius: 3px;" name="" id="">
                                             <option value="">Bến xe Phú Yên</option>
                                             <option value="">Nội thành</option>
                                             <option value="">ABCDEF</option>
                                          </select>
                                          <i class="icon-Polygon1"></i> <i class="fad fa-backspace btn-delete-input d-none"></i>																					
                                       </div>
                                    </div>
                                 </div>
                                 <div class="row no-gutters d-none cust-pickup-addr-content">
                                    <div class="d-flex align-items-center">
                                       <p class="input-compulsory-before">Địa chỉ đón khách:</p>
                                    </div>
                                    <div class="col-12 d-flex align-items-center">
                                       <div class="form-group position-relative w-100">
                                          <input type="text" class="form-control cust-pickup-addr" > <!-- required="" disabled="disabled" -->
                                          <div class="error-input"></div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="row no-gutters">
                                    <div class=" d-flex align-items-center">
                                       <p class="input-compulsory-before">Địa điểm tại Sài Gòn:</p>
                                    </div>
                                    <div class="col-12 d-flex align-items-center">
                                       <div class="form-group position-relative w-100 auto-complete-input">
                                          <select
                                             style="width: 350px; margin-bottom: 10px; border-radius: 3px;"
                                             name="" id="">
                                             <option value="">Bến xe Quận 9</option>
                                             <option value="">Bến xe Thủ Đức</option>
                                             <option value="">Bến xe Quận 1</option>
                                             <option value="">Bến xe Quận 5</option>
                                          </select>
                                          <i class="icon-Polygon1"></i> <i
                                             class="fad fa-backspace btn-delete-input d-none"></i>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="row no-gutters d-none cust-drop-addr-content">
                                    <div class="d-flex align-items-center">
                                       <p class="input-compulsory-before">Địa chỉ trả khách:</p>
                                    </div>
                                    <div class="col-12 d-flex align-items-center">
                                       <div class="form-group position-relative w-100">
                                          <input type="text" class="form-control cust-drop-addr" required disabled="disabled">
                                          <div class="error-input"></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-12 mt-3 mb-3 p-0 list-note-information"><span style="font-size: 13px; font-style: italic; margin-top: 47px;color: #e7100c; font-weight: bold;">Xin quý khách lưu ý, vị trí ngồi của quý khách sẽ được nhà xe sắp xếp khi lên xe.</span></div>
                           </div>
                        </div>
                        <div class="col-6">
                           <p class="pb-2 border-bottom">
                              <b>Chọn thông tin người đi</b>
                           </p>
                           <div class="pb-3">
                              <span class="note-information-title">Vui lòng nhập thông tin hành khách </span>
                           </div>
                           <form:form action="test1.htm" modelAttribute="khachhang" onsubmit="return validate()" >
                              <div style="background-color: #EDF1F5" class="fill-information-user p-4">
                                 <div  >
                                    <c:forEach var="kh" items="${test1}" varStatus = "loop"  >
                                       <c:if test="${loop.last}" >
                                          <div id="num12">${kh.id+1}</div>
                                       </c:if>
                                    </c:forEach>
                                 </div>
                                 <div class="needs-validation" novalidate="">
                                    <div class="row no-gutters information-user-validation-summary"></div>
                                    <div class="row no-gutters">
                                       <div class="pb- 0 d-flex align-items-center">
                                          <p class="input-compulsory-before">Họ người đi:</p>
                                       </div>
                                       <div class="col-12 d-flex align-items-center">
                                          <div class="form-group position-relative w-100">
                                             <form:input  path="ho" type="text" id="num1" class="form-control value custName" placeholder="Cristiano" autocomplete="off"  />
                                             <div class="error-input"></div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="row no-gutters">
                                       <div class="pb- 0 d-flex align-items-center">
                                          <p class="input-compulsory-before">Tên người đi:</p>
                                       </div>
                                       <div class="col-12 d-flex align-items-center">
                                          <div class="form-group position-relative w-100">
                                             <form:input  path="ten" type="text" id="num2" class="form-control value custName" placeholder="Ronaldo" autocomplete="off" />
                                             <div class="error-input"></div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="row no-gutters">
                                       <div class="pb-0 d-flex align-items-center">
                                          <p  class="input-compulsory-before">Số điện thoại:</p>
                                       </div>
                                       <div class="col-12 d-flex align-items-center">
                                          <div class="form-group position-relative w-100">
                                             <form:input  path="sdt" type="text" id="num3" class="form-control value custMobileNo numberText"  placeholder="" maxlength="11" autocomplete="off" onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))" />
                                             <div class="error-input"></div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="row no-gutters">
                                       <div class="pb- 0 d-flex align-items-center">
                                          <p class="input-compulsory-before">Địa chỉ:</p>
                                       </div>
                                       <div class="col-12 d-flex align-items-center">
                                          <div class="form-group position-relative w-100">
                                             <form:input path="diachi" type="text" id="num4" class="form-control value custName" placeholder="230 man thiện" autocomplete="off" />
                                             <div class="error-input"></div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="row no-gutters information-user-validation-summary ">
                                       <div class="mb-2 d-flex align-items-center">
                                          <span class="note-information text-primary"><i class="custMobileNoErr"></i></span>
                                       </div>
                                    </div>
                                    <div class="row no-gutters mb-2">
                                       <div class="pb-0 d-flex align-items-center">
                                          <p>
                                             Email:<i class="font-weight-normal">(không bắt buộc)</i>
                                          </p>
                                       </div>
                                       <div class="col-12 pb-2 d-flex align-items-center">
                                          <div class="form-group position-relative w-100">
                                             <input type="text" class="form-control custEmail"  placeholder="dongly@gmail.com"  value="">
                                             <div class="error-input"></div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="row no-gutters mb-2">
                                       <div class="col-4 d-flex align-items-center">
                                          <p style="color: red;" class="font-weight-normal">Nhà xe:</p>
                                       </div>
                                       <div  class="col-8 pb-2 d-flex align-items-center">
                                          <h6 style="font-weight: bold;" class="text-secondary carName">New Star</h6>
                                       </div>
                                    </div>
                                    <div class="row no-gutters mb-2">
                                       <div style="color: red;" class="col-4 d-flex align-items-center">
                                          <p class="font-weight-normal">Số lượng vé:</p>
                                       </div>
                                       <div class="col-8 pb-2 d-flex align-items-center">
                                          <h6 class="text-dark">
                                             <input style="width: 200px;" class="form-control" type="text" id="mes" onkeyup="xem_kq()" autocomplete="off" onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"/>
                                          </h6>
                                       </div>
                                    </div>
                                    <form:form action="test1.htm" modelAttribute="ve" onsubmit="return validate()" method="post">
                                       <div class="row no-gutters mb-2">
                                          <div style="color: red;" class="col-4 d-flex align-items-center">
                                             <p class="font-weight-normal">Mã Khách Hàng:</p>
                                          </div>
                                          <div class="col-8 pb-2 d-flex align-items-center">
                                             <h6 class="text-dark">
                                                <form:input path="khachhang.id" id="num11" style="width: 200px;"   class="form-control number" autocomplete="off" onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"/>
                                             </h6>
                                          </div>
                                       </div>
                                       <div class="row no-gutters mb-2">
                                          <div style="color: red;" class="col-4 d-flex align-items-center">
                                             <p class="font-weight-normal">Mã chuyến xe:</p>
                                          </div>
                                          <div class="col-8 pb-2 d-flex align-items-center">
                                             <h6 class="text-dark">
                                                <form:input path="chuyen.id" style="width: 200px;" id="num5"  class="form-control number" autocomplete="off" onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"/>
                                             </h6>
                                          </div>
                                       </div>
                                       <div class="row no-gutters mb-2">
                                          <div style="color: red;" class="col-4 d-flex align-items-center">
                                             <p class="font-weight-normal">Vị trí đã chọn:</p>
                                          </div>
                                          <div class="col-8 pb-2 d-flex align-items-center">
                                             <h6 class="text-dark">
                                                <div id="ghe">
                                                </div>
                                             </h6>
                                          </div>
                                       </div>
                                       <div class="row no-gutters mb-2">
                                          <div style="color: red;" class="col-4 d-flex align-items-center">
                                             <p class="font-weight-normal">Xác nhận lại vị trí:</p>
                                          </div>
                                          <div class="col-8 pb-2 d-flex align-items-center">
                                             <h6 class="text-dark">
                                                <form:input path="vitri" style="width: 200px;" id="num6" class="form-control number" autocomplete="off" onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"/>
                                             </h6>
                                          </div>
                                       </div>
                                    </form:form>
                                    <div class="row no-gutters">
                                       <div style="color: red;" class="col-4 d-flex align-items-center">
                                          <p class="font-weight-normal">Thành tiền:</p>
                                       </div>
                                       <div class="col-8 pb-2 d-flex align-items-center">
                                          <h6 class="text-primary">
                                             <div id="result"> 
                                                <input style="width: 200px; height: 40px; border: none; background-color: #EDF1F5" class="form-control" readonly  name="0 VND"/>
                                             </div>
                                          </h6>
                                       </div>
                                    </div>
                                    <div class="row no-gutters">
                                       <div class="col-12 pt-4 pb-4 pl-4 pr-4 payment">
                                          <div class="center">
                                             <button id="open-popup-btn" type="submit" name="${btnStatus}" style="background-color: red;"  class="btnCont btn btn-primary w-100 pt-3 pb-3 ml-2 m">Đặt Vé</button>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div style="background-color: #C1F09D;margin-left: -380px !important; margin-top: -300px !important;" class="popup center">
                                    <div class="icon">
                                       <i style="color: green; font-size: 30px;" class="fas fa-check"></i>
                                    </div>
                                    <div class="title">Success!!</div>
                                    <div class="description">Đăng kí vé thành công !!!</div>
                                    <div class="dismiss-btn">												
                                       <button name="${btnStatus}" id="dismiss-popup-btn" type="submit">Thoát
                                       </button>															
                                    </div>
                                 </div>
                              </div>
                           </form:form>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </main>
      <footer class="bg-dark pb-5" style="width: 100%;">
         <div style="margin-top: 300px; width: 100%; height: 350px;" class="container">
            <div class="row">
               <div class="col-md-3 ">
                  <img style="width: 200px; height: 200px; margin-top: 20px;" class="img" src="${pageContext.request.contextPath}/images/4.png">
                  <p style="color: blue;">Tầng 9, tòa nhà Licogi 13,1 Nguyễn Tất Thành, Phường 12, Quận 4,TP Hồ Chí Minh</p>
               </div>
               <div class="col-md-3 ">
                  <h6 class="title">Về chúng tôi</h6>
                  <p>	<a href="#"><i class="fa fa-angle-right"></i> Giới thiệu</a>
                  </p>
                  <p>	<a href="#"><i class="fa fa-angle-right"></i> Tuyển dụng</a>
                  </p>
                  <p>	<a href="/contact"><i class="fa fa-angle-right"></i> Liên hệ</a>
                  </p>
                  <p>	<a href="https://xeca.net/"><i class="fa fa-angle-right"></i>
                     Phần mềm nhà xe</a>
                  </p>
               </div>
               <div class="col-md-3 ">
                  <h6 class="title">Hỗ trợ</h6>
                  <p>	<a href="#"><i class="fa fa-angle-right"></i> Quy định </a>
                  </p>
                  <p>	<a href="#"><i class="fa fa-angle-right"></i> Câu hỏi thường
                     gặp</a>
                  </p>
                  <p>	<a href="#"><i class="fa fa-angle-right"></i> Cơ chế giải
                     quyết tranh chấp</a>
                  </p>
                  <p>	<a href="#"><i class="fa fa-angle-right"></i> Chính sách bảo
                     mật</a>
                  </p>
               </div>
               <div class="col-md-3 ">
                  <h6 class="title">Cổng thanh toán</h6>
                  <img style="width: 50px; height: 50px; margin-top: 20px;" class="img" src="${pageContext.request.contextPath}/images/1.png">
                  <img style="width: 50px; height: 50px; margin-top: 20px;" class="img" src="${pageContext.request.contextPath}/images/2.png">
                  <img style="width: 50px; height: 50px; margin-top: 20px;" class="img" src="${pageContext.request.contextPath}/images/3.png">
               </div>
            </div>
            <div class="row pt-3 pb-3 justify-content-between  align-items-center ">
               <div class="row pt-4 pb-2 ">
                  <div class="col-12 d-flex justify-content-center align-items-center">	<a href="#">© 2014-2018 dongly.vn All Rights Reserved </a>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <script type="text/javascript">
         function validate() {
             var n1 = document.getElementById("num1");
             var n2 = document.getElementById("num2");
             var n3 = document.getElementById("num3");
             var n4 = document.getElementById("num4");
             var n5 = document.getElementById("num5");
             var n6 = document.getElementById("num6");
             var n7 = document.getElementById("num7");
             var n11 = document.getElementById("num11");
             var n12 = document.getElementById("num12");
             var ghe = document.getElementById("ghe");    
             var a=ghe.innerHTML.toString();    
          	var b=n12.innerHTML;   
             if(n1.value != "" && n2.value != "" && n3.value !="" && n4.value !="" && n5.value !="0" && n6.value !="0" && n6.value == a && a!="" && n11.value !="0" && n11.value==b ) {    	    	
             	alert("Đặt Vé Thành Công!!!"); 
                 return true;
             }
             else{
             	if(n1.value=="")
             	{ 	
             		alert("Vui lòng nhập họ người đi!!!" );    		
             		return false;
             	}
             	if(n2.value=="")
             	{ 
             		alert("Vui lòng nhập tên người đi!!!");
             		return false;
             	}
             	if(n3.value=="")
             	{ 
             		alert("Vui lòng nhập số điện thoại!!!");
             		return false;
             	}
             	if(n4.value=="")
             	{ 
             		alert("Vui lòng nhập địa chỉ!!!");
             		return false;
             	}
             	if(n11.value=="0")
             	{ 
             		alert("Vui lòng nhập mã khách hàng!!!");
             		return false;
             	}
             	
             	if( n11.value != b)
         		{
         			alert("Vui lòng nhập mã khách hàng!!! "+" Mã khách hàng của bạn là: "+b );
         			return false;
         		} 
             	
             	if(n5.value=="0")
             	{ 
             		alert("Vui lòng nhập mã chuyến xe!!!");
             		return false;
             	}
             	
             	if(a=="")
             	{ 
             		alert("Vui lòng chọn vị trí trên sơ đồ!!!" );
             		return false;
             	}
             	if(n6.value=="0")
             	{ 
             		alert("Vui lòng xác nhận vị trí đã chọn!!!" );
             		return false;
             	}
             	if( n6.value != a)
             		{
             			alert("Vui lòng xác nhận vị trí đã chọn!!! "+" Vị trí bạn đã chọn là: "+a );
             			return false;
             		}	   	
             }
            
           }
         function xem_kq()
         {
         	var input_text=document.getElementById("mes");
         	var result=document.getElementById("result");
         	result.innerHTML=input_text.value*120 +",000 VND";
         }
         	function xem_kq1()
         	{
         		var input_text=document.getElementById("g1");
         		var ghe=document.getElementById("ghe");
         		ghe.innerHTML=1;
         	}
         	function xem_kq2()
         	{
         		var input_text=document.getElementById("g2");
         		var ghe=document.getElementById("ghe");
         		ghe.innerHTML=2;
         	}
         	function xem_kq3()
         	{
         		var input_text=document.getElementById("g3");
         		var ghe=document.getElementById("ghe");
         		ghe.innerHTML=3;
         	}
         	function xem_kq4()
         	{
         		var input_text=document.getElementById("g4");
         		var ghe=document.getElementById("ghe");
         		ghe.innerHTML=4;
         	}
         	function xem_kq5()
         	{
         		var input_text=document.getElementById("g5");
         		var ghe=document.getElementById("ghe");
         		ghe.innerHTML=5;
         	}
         	function xem_kq6()
         	{
         		var input_text=document.getElementById("g6");
         		var ghe=document.getElementById("ghe");
         		ghe.innerHTML=6;
         	}
         	function xem_kq7()
         	{
         		var input_text=document.getElementById("g7");
         		var ghe=document.getElementById("ghe");
         		ghe.innerHTML=7;
         	}
         	function xem_kq8()
         	{
         		var input_text=document.getElementById("g8");
         		var ghe=document.getElementById("ghe");
         		ghe.innerHTML=8;
         	}
         	function xem_kq9()
         	{
         		var input_text=document.getElementById("g9");
         		var ghe=document.getElementById("ghe");
         		ghe.innerHTML=9;
         	}
         	
      </script> 
   </body>
</html>