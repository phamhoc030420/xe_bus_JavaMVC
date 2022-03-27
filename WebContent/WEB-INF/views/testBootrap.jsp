<%@ page pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="">
      <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
      <meta name="generator" content="Hugo 0.80.0">
      <title>Chọn Chuyến Xe</title>
      <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/navbar-static/">
      <base href="${pageContext.servletContext.contextPath}" />
      <link href="<c:url value='/resources/assets/dist/css/bootstrap.min.css'></c:url>" rel="stylesheet">
      <link href="<c:url value='/resources/fontawesome-free-5.15.1-web/css/all.css'></c:url>" rel="stylesheet">
      <link rel="preconnect" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=Itim&display=swap" rel="stylesheet">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.css"/>
 	  <script type="text/javascript" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.js"></script>
      <style type="text/css">
         ::-webkit-scrollbar
         {
         width: 10px;
         background-color: lightgrey;
         }
         ::-webkit-scrollbar-thumb
         {
         background-color: grey;
         border-radius: 5px;
         }
         .scroll{
         overflow-y:scroll;
         overflow-x:hidden;
         }
         .collapsible {
         margin-left:1040px;
         color: white;
         cursor: pointer;
         padding: 18px;
         width: 160px;
         border: none;
         text-align: left;
         outline: none;
         font-size: 15px;
         }
         .active, .collapsible:hover {
         background-color: #FDF6F6;
         }
         .collapsible:after {
         color: white;
         font-weight: bold;
         float: right;
         margin-left: 5px;
         }
         .content {
         padding: 0 18px;
         max-height: 0;
         overflow: hidden;
         transition: max-height 0.2s ease-out;
         }
         /*  button*/
         .hh:hover {
         background-color: blue;
         color: white;
         }
         .seat:hover {
         color: red;
         }
         .hide {
         display: none;
         }
         .seat:hover+.hide {
         display: block;
         color: red;
         }
         /*==Style cho menu===*/
         #menu1 ul {
         background: #1F568B;
         list-style-type: none;
         text-align: center;
         }
         #menu1 li {
         color: #f1f1f1;
         display: inline-block;
         width: 120px;
         height: 40px;
         line-height: 40px;
         margin-left: -5px;
         }
         #menu1 a {
         text-decoration: none;
         color: #fff;
         display: block;
         }
         #menu1 a:hover {
         background: #F1F1F1;
         color: #333;
         }
         .sub-menu1 li {
         display: none;
         }
         #menu1 li {
         position: relative;
         }
         .sub-menu1 {
         display: none;
         position: absolute;
         }
         #menu1 li:hover .sub-menu1 {
         display: block;
         }
         .sub-menu1 li {
         margin-left: 0 !important;
         }
         #menu1{
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
         transition: opacity 300ms ease-in-out, top 1000ms ease-in-out, transform
         1000ms ease-in-out;
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
         border: 2px solid #34f234;
         text-align: center;
         display: inline-block;
         border-radius: 50%;
         line-height: 60px;
         }
         .popup .icon i.fa {
         font-size: 30px;
         color: #34f234;
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
         }
         .popup .dismiss-btn button:hover {
         color: #111;
         background: #f5f5f5;
         }
         .popup>div {
         position: relative;
         top: 10px;
         opacity: 0;
         }
         .popup.active>div {
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
         .hoc:hover {
         background-color: #FDF6F6;
         transition: 1.5s;
         box-shadow: 2px 2px 2px 2px #FFE5E5;
         }
         .hh:hover {
         background-color: #0D6EFD;
         }
         .bd-placeholder-img {
         font-size: 1.125rem;
         text-anchor: middle;
         -webkit-user-select: none;
         -moz-user-select: none;
         user-select: none;
         }
         @media ( min-width : 768px) {
         .bd-placeholder-img-lg {
         font-size: 3.5rem;
         }
         }
         #menu li {
         color: #f1f1f1;
         display: inline-block;
         width: 200px;
         height: 40px;
         line-height: 40px;
         margin-left: -70px;
         }
         #menu a {
         text-decoration: none;
         color: red;
         display: block;
         }
         #menu a:hover {
         /* background: #F1F1F1; */
         font-weight: bold;
         margin-left: 10px;
         color: #333;
         transition: 0s;
         margin-bottom: 20px;
         }
         .sub-menu {
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
         transition: 1s;
         }
         #menu li:hover .sub-menu .hoc {
         margin-bottom: 200px;
         }
         .sub-menu {
         margin-left: 0 !important;
         transition: 1s;
         }
         .pick-up-guest {
         background-color: #fff;
         width: 1296px;
         height: 240px;
         }
         #menu {
         margin-bottom: 20px;
         }
         .1:hover {
         width: 200px;
         height: 200px;
         background-color: green;
         transition: 0.3s;
         }
         .bd-placeholder-img {
         font-size: 1.125rem;
         text-anchor: middle;
         -webkit-user-select: none;
         -moz-user-select: none;
         user-select: none;
         }
         @media ( min-width : 768px) {
         .bd-placeholder-img-lg {
         font-size: 3.5rem;
         }
         }
      </style>
      <link href='<c:url value="/resources/assets/dist/css/navbar-top.css"></c:url>' rel="stylesheet">
</head>
<body>
      <nav style="margin-bottom: 0px !important" class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
         <div class="container-fluid">
            <a class="navbar-brand" href="/Lab_2/test3.htm">Đông Lý</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">	<span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
               <ul class="navbar-nav me-auto mb-2 mb-md-0">
                  <li class="nav-item"><a style="background-color: #212529 !important;" class="nav-link active" aria-current="page" href="/Lab_2/test3.htm">Phần Mềm</a>
                  </li>
                  <li class="nav-item"><a class="nav-link" href="/Lab_2/test3.htm">Support</a>
                  </li>
               </ul>
               <form class="d-flex">
                  <a href="Lab_2/ves.htm" style="background-color: red; margin-right: 20px;" class="btn btn-primary d-block" href="test.htm"> <span>Tra
                  cứu vé</span>  <i class="fas fa-search"></i>
                  </a>
                  <button class="btn btn-outline-success" type="submit"><a href="Lab_2/login.htm" style="text-decoration: none;color: white;">Đăng Nhập</a></button>
               </form>
            </div>
         </div>
      </nav>
      <div id="menu1">
         <ul>
            <li><a href="Lab_2/test3.htm">Trang chủ</a>
            </li>
            <li>
               <a href="#">Dịch Vụ</a>
               <ul class="sub-menu1">
                  <li><a href="#">Ăn uống</a>
                  </li>
                  <li><a href="#">DV khác</a>
                  </li>
               </ul>
            </li>
            <li><a href="#">Tin tức</a>
            </li>
            <li><a href="#">Hỏi đáp</a>
            </li>
            <li><a href="#">Liên hệ</a>
            </li>
         </ul>
      </div>
      <main class="container" style="background-color: #F1F3F4;">
         <div class="row no-gutters" style="border: 10px;">
            <div class="col-md-6 pt-1 pl-5 pb-2 pr-5 search-pickup-date">
               <div class=" animated fadeIn text-left">
                  <a href="#" class="text-secondary text-underline"><b>Thông
                  tin chuyến xe</b></a>
                  <span style="margin-left: 160px;">YYYY-MM-DD</span>
                  <form method="get" class="search-form  mt-2" xeca-search-form="">
                     <input class="agencyType" type="hidden" name="agencyType" value="1">
						<div class="d-flex flex-row justify-content-start">

							<div class="flex-fill">
								<div class="form-group p-0">
									<div class="form-field" id="to-location">
										<i class="icon-before icon-Vector-1"></i> <input id="myInput1"
											type="text" placeholder="SaiGon-PhuYen"
											class="form-control tickets-code" autocomplete="off"
											style="width: 200px;">

										<ul id="ui-id-3" tabindex="0"
											class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front"
											style="display: none;"></ul>
										<ul id="ui-id-4" tabindex="0"
											class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front"
											style="display: none;"></ul>
									</div>
								</div>
							</div>
							<div class="flex-fill">
								<div class="form-group p-0">
									<div class="form-field" id="to-location">
										<i class="icon-before icon-Vector-1"></i> <input id="myInput"
											type="text" placeholder="2020-06-06"
											class="form-control tickets-code" autocomplete="off"
											style="width: 200px;"
											onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57 || event.charCode ==45 ))">

										<ul id="ui-id-3" tabindex="0"
											class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front"
											style="display: none;"></ul>
										<ul id="ui-id-4" tabindex="0"
											class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front"
											style="display: none;"></ul>
									</div>
								</div>
							</div>
						

							<div id="myBtnContainer">

								<div class="flex-fill"></div>

								<div style="margin-right: -200px; margin-left: 20px;">
									<a style="height: 40px; width: 100px;" href="Lab_2/test3.htm"
										type="submit" class="btn btn-primary">THAY ĐỔI</a>
								</div>
							</div>
						</div>
					</form>
               </div>
            </div>
         </div>
         <hr width="100%" align="center" style="color: red;" />
      <div id="myTable" >
      	<div id="myTable1">
   
         <c:forEach var="c" items="${chuyen}">
            <header class="hoc" style="background-color: #CCC; margin-bottom: 50px;"  >
               <div class="row content-box-item hoc" style="padding-left: 50px;" >
                  <div  style="text-align: center;font-family: 'Itim', cursive;font-size: 25px ;">Mã Chuyến Xe: ${c.id}</div>
                   <span>Ngày ${c.ngay}</span>
                             
                  <div class="col-3 pr-0" style="margin-top: 10px;">
                     <div class="d-flex justify-content-start">
                        <div class="pl-2">
                           <div class="logo-agency" style="width: 82px; height: 82px; overflow: hidden;">	<i class="fas fa-bus-alt" style="font-size: 50px;"></i>
                           </div>
                        </div>
                        <div class="pl-3 w-100">
                           <h6>New Star</h6>
                           <div class="d-flex justify-content-between align-content-center align-items-center mt-3">	<i class="fas fa-pie services-icon"></i>  <i class="icon-water icomoon-16 services-icon"></i>  <i class="icon-wifi icomoon-16 services-icon"></i>  <i class="icon-wc icomoon-16 services-icon"></i>
                           </div>
                        </div>
                        <div class="logo-agency" style="width: 82px; height: 82px; overflow: hidden; margin-left: 10px;">	<i class="fas fa-wifi"></i>
                        </div>
                        <div class="logo-agency" style="width: 82px; height: 82px; overflow: hidden; margin-left: 10px;">	<i class="fas fa-prescription-bottle"></i>
                        </div>
                        <div class="logo-agency" style="width: 82px; height: 82px; overflow: hidden; margin-left: 10px;">	<i class="fas fa-birthday-cake"></i>
                        </div>
                        <div class="logo-agency" style="width: 82px; height: 82px; overflow: hidden; margin-left: 10px;">	<i class="fas fa-toilet"></i>
                        </div>
                     </div>
                  </div>
                  <div class="row mb-3">
                     <div class="col-8 d-flex justify-content-between pr-5 pl-5">
                        <div class="row w-100 no-gutters">
                           <div class="col-5 pl-1 pr-1">
                              <h6>Giờ xuất phát</h6>
                              <h6>${c.tuyen.gio}</h6>
                              <h6 class="text-secondary"> ${c.tuyen.tentuyen}</h6>
                           </div>
                           <div class="col-2 justify-content-between">	<i class="fas fa-arrow-right"></i>
                           </div>
                           <div class="col-5 pl-1 pr-1">
                              <h6>Thời gian xe chạy</h6>
                              <h6>&#177; 2:00</h6>
                              <h6 class="text-secondary">${c.tuyen.tentuyen}</h6>
                           </div>
                        </div>
                     </div>
                     <div class="col-4 d-flex justify-content-around">
                        <h6 class="text-success ml-4"> ${c.xe.soghe} <em
                           class="rating">Ghế</em>
                        </h6>
                        <h6 class="text-primary mb-1 text-center">
                           <span>${c.xe.loai.gia }</span>
                           <p>VND</p>
                        </h6>
                     </div>
                  </div>
                  
                  <a  style="width: 180px;height:60px;;margin-left: 1000px; text-align: center;padding-top: 15px;" class="btn btn-primary btn-select-seat show-booking" href="Lab_2/test1.htm"> Chọn ghế</a>
                 
                  <div>
                     <button style=" margin-left:20px;width: 200px; background-color: #28A745 !important; text-align: center;" class="btn btn-success btn-select-seat show-booking collapsible">Điểm đón trả khách</button>
                     <div class="content" style="background-color: #fff;margin-top: 50px;">
                        <hr style="color: red; ">
                        <div class="row pick-up-guest scroll">
                           <div class="col-6">
                              <ul style="list-style: none;">
                                 <h6 style="color: red !important; font-size: 20px;">ĐỊA ĐIỂM </h6>
                                 <h6>PHÚ YÊN</h6>
                                 <li>Nôi thành Phú Yên</li>
                                 <li>Nôi thành Phú Yên</li>
                                 <li>Nôi thành Phú Yên</li>
                              </ul>
                           </div>
                           <div class="col-6">
                              <ul style="list-style: none;">
                                 <h6 style="color: red !important; font-size: 20px;">ĐỊA ĐIỂM </h6>
                                 <h6>SÀI GÒN</h6>
                                 <li>Quận 9</li>
                                 <li>Thủ Đức</li>
                                 <li>Quận 10</li>
                                 <li>Quận 1</li>
                                 <li>Quận 5</li>
                                 <li>Quận 3</li>
                                 <li>Hoóc Môn</li>
                                 <li>Nhà Bè</li>
                                 <li>Bình Tân</li>
                                 <li>Bình Chánh</li>
                                 <li>Gò Vấp</li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <!--hủy vé  -->
                     <button style=" margin-left:260px;width: 200px; background-color:#DC3545 !important; margin-top: -186px; text-align: center;" class="btn btn-danger  collapsible">Chính Sách Hủy Vé</button>
                     <div class="content" style="background-color: #fff;">
                        <hr style="color: red;">
                        <p>- Hủy, trả vé ngoài 12 tiếng trước giờ xe chạy sẽ mất phí 10%
                           <br>- Hủy, trả vé từ 4 - 12 tiếng trước giờ xe chạy sẽ mất phí 30%
                           <br>- Hủy, trả vé trong vòng 4 tiếng trước giờ xe chạy sẽ mất phí 100%
                        </p>
                     </div>
                  </div>
               </div>
            </header>
         </c:forEach>
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
               <div class="col-12 d-flex justify-content-center align-items-center">	
               	<a href="#">© 2014-2018 dongly.vn All Rights Reserved </a>
               </div>
            </div>
         </div>
         </div>
      </footer>
     <!--  <script src="../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
      <script src="../assets/dist/js/bootstrap.bundle.min.js"></script> -->
      <script type="text/javascript">
     
      
      $(document).ready(function(){
 		  $("#myInput").on("keyup", function() {
 		    var value = $(this).val().toLowerCase();
 		    $("#myTable  header").filter(function() {
 		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
 		    });
 		  });
 		});
      $(document).ready(function(){
 		  $("#myInput1").on("keyup", function() {
 		    var value = $(this).val().toLowerCase();
 		    $("#myTable1  header").filter(function() {
 		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
 		    });
 		  });
 		});
   
     
      
         var coll = document.getElementsByClassName("collapsible");
         var i;
         
         for (i = 0; i < coll.length; i++) {
           coll[i].addEventListener("click", function() {
             this.classList.toggle("active");
             var content = this.nextElementSibling;
             if (content.style.maxHeight){
               content.style.maxHeight = null;
             } else {
               content.style.maxHeight = content.scrollHeight + "px";
             } 
           });
         }
         
         	document.getElementById("open-popup-btn").addEventListener(
         			"click",
         			function() {
         				document.getElementsByClassName("popup")[0].classList
         						.add("active");
         			});
         
         	document.getElementById("dismiss-popup-btn").addEventListener(
         			"click",
         			function() {
         				document.getElementsByClassName("popup")[0].classList
         						.remove("active");
         			});
      </script>
   </body>
</html>