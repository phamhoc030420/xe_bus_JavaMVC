<%@ page 
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title>Trang Chủ</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/navbar-static/">
	<base href="${pageContext.servletContext.contextPath}"/>
	<link href="<c:url value='/resources/assets/dist/css/bootstrap.min.css'></c:url>" rel="stylesheet">
	<link href="<c:url value='/resources/fontawesome-free-5.15.1-web/css/all.css'></c:url>" rel="stylesheet">
	<script type='text/javascript' src="http://www.erichynds.com/examples/jquery-ui-multiselect-widget/src/jquery.multiselect.js"></script>
    <style>
  
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
      
    </style>
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
      <a href="Lab_2/ves.htm" style="background-color: red;  margin-right: 20px" class="btn btn-primary d-block" href="Lab_2/ves.htm"> <span>Tra cứu vé</span>
			<i class="fas fa-search"></i>	
				</a>
        <button class="btn btn-outline-success" type="submit"><a href="Lab_2/login.htm" style="text-decoration: none;color: white;">Đăng Nhập</a></button>       
      </form>    
    </div>   
  </div>	
</nav>
<div style="margin-left: 150px; margin-top: 120px;" class="container position-absolute">
				<div class="text-center animate-box-hide fadeInUp animated-fast">
					<h1>  </h1>
					<p></p>
				</div>
				<div class="search_box mt-5 animate-box-hide fadeInUp animated-fast">				
					<div style="background-color: #383743;background-image: linear-gradient(to bottom right, #383743, pink); opacity: 0.8;" class="tab-content p-4 pl-5 pr-5 ">
						<div id="oneway" class="tab-pane animated  fadeIn active box-search">
							<input type="hidden" class="currentDate" value="04/04/2021">
							<form action="Lab_2/test.htm" method="GET" class="search-form" onsubmit="return validate()" method="post">
								<input class="agencyType" type="hidden" name="agencyType" value="1">
								<div style="margin-top: 20px;" class="row no-gutters">
								
									<div class="col-md-3">
									<p>Điểm Đi</p>
										<div class="form-group" id="num1">										
											<div class="form-field" id="from-location">
											
											 <select  id="fromAddress" style="width: 300px; margin-bottom: 10px; border-radius: 3px;height: 38px !important;" >
												
												<optgroup style="color: red;" label="Sài Gòn"></optgroup>		
												<optgroup label="Quận 9">
													
													<option >Quận 9-Tăng Nhơn Phú A</option>
													<option >Quận 9-Phước Long A</option>
													<option >Quận 9-Hiệp Phú</option>
												</optgroup>

												<optgroup label="Thủ Đức">
													<option >Thủ Đức-An Phú</option>
													<option >Thủ Đức-Linh Chiểu</option>
													<option >Thủ Đức-Tân Phú</option>
													<optgroup style="color: red;" label="Phú Yên"></optgroup>		
												<optgroup label="Phú Hòa">
													
													<option >Phú Hòa-Xã Hòa Hội</option>
													<option >Phú Hòa-Thị Trấn Phú Hòa</option>
													<option >Phú Hòa-Xã Hòa Thắng</option>
												</optgroup>

												<optgroup label="Tuy An">
													<option >Tuy An -An Dân</option>
													<option >Tuy An -An Cư</option>
													<option >Tuy An -An Định</option>
													
													
												</optgroup>	
													
													
												</optgroup>
												
										</select>										
											<ul id="ui-id-1" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul><ul id="ui-id-2" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul></div>
										</div>
								
										
									</div>		
									<div class="col-md-1">
									
									<!-- <input id="change" type="button" style="margin-top: 40px;height: 40px;margin-left: 20px;" /> -->
									<input id="swap_button" type="button" value="Change" onclick="swap1()" />
									
									</div>				
									<div class="col-md-3">
									<p>Điểm Đến</p>
										<div class="form-group" id="num1">										
											<div class="form-field" id="from-location">
											 <select id="toAddress" style="width: 300px; margin-bottom: 10px; border-radius: 3px;height: 38px !important;"  >
												<optgroup style="color: red;" label="Sài Gòn"></optgroup>		
												<optgroup label="Quận 9">
													
													<option >Quận 9-Tăng Nhơn Phú A</option>
													<option >Quận 9-Phước Long A</option>
													<option >Quận 9-Hiệp Phú</option>
												</optgroup>

												<optgroup label="Thủ Đức">
													<option >Thủ Đức-An Phú</option>
													<option >Thủ Đức-Linh Chiểu</option>
													<option >Thủ Đức-Tân Phú</option>
													
													
												</optgroup>
												<optgroup style="color: red;" label="Phú Yên"></optgroup>		
												<optgroup label="Phú Hòa">
													
													<option >Phú Hòa-Xã Hòa Hội</option>
													<option >Phú Hòa-Thị Trấn Phú Hòa</option>
													<option >Phú Hòa-Xã Hòa Thắng</option>
												</optgroup>

												<optgroup label="Tuy An">
													<option >Tuy An -An Dân</option>
													<option >Tuy An -An Cư</option>
													<option >Tuy An -An Định</option>
													
													
												</optgroup>
												
												
										</select>										
											<ul id="ui-id-1" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul><ul id="ui-id-2" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul></div>
										</div>
									</div>
									<div class="col-md-2">
									<p>Ngày Đi</p>
										<div class="form-group">
											<div class="form-field">
												<i class="icon-before icon-icon-date"></i> <input type="date"  id="num16" value="2021-06-03"  class="form-control start-date date pl-5 hasDatepicker"><label for="oneway-fromDate"></label>
											</div>
										</div>
									</div>								
									<div  class="col-md-2 pl-3 d-flex" style="margin-top: 40px !important;margin-left: 100px;">																			
										<a href="Lab_2/test.htm" style="width: 150px; height: 40px;" type="submit" class="btn btn-primary btn-block btn-search">Tìm Vé</a>
									</div>
								</div>
							</form>
						</div>

						<div id="twoway" class="tab-pane animated  fadeIn hide">
							<form method="post" class="search-form">
								<div class="row no-gutters">
									<div class="col-md-3">
										<div class="form-group">
											<div class="form-field" id="from-location">
												<i class="icon-before icon-Vector-1"></i> <input type="text" id="twoway-fromLocation" required="required" class="form-control pl-5 from-location ui-autocomplete-input" autocomplete="off" province="18" code="thai-nguyen"> <label for="two-fromLocation">Điểm đi</label> <i id="btn-switch-location" class="icon-special icon-Group-20"></i>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<div class="form-field" id="to-location">
												<i class="icon-before icon-Vector-1"></i> <input type="text" id="twoway-toLocation" required="required" class="form-control pl-5 to-location ui-autocomplete-input" autocomplete="off" province="95" code="HN - BM"> <label for="twoway-toLocation">Điểm đến</label>
											</div>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<div class="form-field">
												<i class="icon-before icon-icon-date"></i> <input type="text" id="twoway-fromDate" required="required" class="form-control date pl-5 hasDatepicker"> <label for="twoway-fromDate">Ngày đi</label>
											</div>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<div class="form-field">
												<i class="icon-before icon-icon-date"></i> <input type="text" id="twoway-toDate" required="required" class="form-control date pl-5 hasDatepicker"> <label for="twoway-toDate">Ngày đi</label>
											</div>
										</div>
									</div>
									<div class="col-md-2 pl-3 d-flex">
										<input type="submit" name="submit" value="Tìm Vé1" class="btn btn-primary btn-block">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

<img  style=" width: 1518px; height: 500px;" class="img1" src="${pageContext.request.contextPath}/images/5.png">
<main class="container" style="float: left;" >							
</main>
<div style="width: 1400px !important;margin-left: 50px;"> 
<div class="d-flex justify-content-center align-items-center flex-column mb-3 animate-box-hide fadeInUp animated-fast" style="padding-top: 70px;">
					<h5 class="text-small-header">Cam kết chất lượng với</h5>
					<h2 class="text-header-uppercase">Bộ tiêu chuẩn nhà xe của Đông Lý</h2>
				</div>
					
			<div class="row about-quality">
					<div class="col-md-4 animate-box-hide fadeInUp animated-fast">
						<div class="card quality">
							<div class="card-body text-center">
								<div class="xeca-quality">
								<img  src="${pageContext.request.contextPath}/images/bus.png">
									
								</div>
								<h5 class="card-title">Hãng xe uy tín</h5>
								<p class="card-text">Đông Lý cung cấp vé của các hãng tàu, xe uy tín, đã được thị trường công nhận.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 animate-box-hide fadeInUp animated-fast">
						<div class="card quality border-dash">
							<div class="card-body text-center">
								<div class="xeca-quality">
								<img  src="${pageContext.request.contextPath}/images/seat.png">
									
								</div>
								<h5 class="card-title">Giữ chỗ 100%</h5>
								<p class="card-text">Mọi vé tàu, xe khi đặt mua qua Đông Lý sẽ luôn luôn được giữ chỗ 100%.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 animate-box-hide fadeInUp animated-fast">
						<div class="card quality">
							<div class="card-body text-center">
								<div class="xeca-quality">
									<img  src="${pageContext.request.contextPath}/images/ticket.png">
									
								</div>
								<h5 class="card-title">Giá vé rẻ nhất</h5>
								<p class="card-text">Giá vé tại Đông Lý luôn luôn thấp hơn hoặc bằng giá vé chính hãng.</p>
							</div>
						</div>
					</div>
				</div>				
</div>
<footer class="bg-dark pb-5" style="width: 100% !important;">
	<div style="margin-top: 300px;width: 100%; height: 350px;" class="container">
		<div class="row">
			<div class="col-md-3 ">
				<img  style="width: 200px;height:200px;margin-top: 20px; " class="img" src="${pageContext.request.contextPath}/images/4.png">
				<p style="color: blue;">
					Tầng 9, tòa nhà Licogi 13,1 Nguyễn Tất Thành, Phường 12, Quận 4,TP Hồ Chí Minh
				</p>
			</div>
			<div class="col-md-3 ">
				<h6 class="title">
					Về chúng tôi
				</h6>
				<p>
					<a href="#"><i class="fa fa-angle-right"></i> Giới thiệu</a>
				</p>
				<p>
					<a href="#"><i class="fa fa-angle-right"></i> Tuyển dụng</a>
				</p>
				<p>
					<a href="/contact"><i class="fa fa-angle-right"></i> Liên hệ</a>
				</p>
				<p>
					<a href="https://xeca.net/"><i class="fa fa-angle-right"></i> Phần mềm nhà xe</a>
				</p>
			</div>
			<div class="col-md-3 ">
				<h6 class="title">
					Hỗ trợ
				</h6>
				<p>
					<a href="#"><i class="fa fa-angle-right"></i> Quy định </a>
				</p>
				<p>
					<a href="#"><i class="fa fa-angle-right"></i> Câu hỏi thường gặp</a>
				</p>
				<p>
					<a href="#"><i class="fa fa-angle-right"></i> Cơ chế giải quyết tranh chấp</a>
				</p>
				<p>
					<a href="#"><i class="fa fa-angle-right"></i> Chính sách bảo mật</a>
				</p>
			</div>
			<div class="col-md-3 ">
				<h6 class="title">
					Cổng thanh toán
				</h6>
				<img  style="width: 50px;height:50px;margin-top: 20px; " class="img" src="${pageContext.request.contextPath}/images/1.png">
				<img style="width: 50px;height:50px; margin-top: 20px; " class="img" src="${pageContext.request.contextPath}/images/2.png">
				<img style="width: 50px;height:50px; margin-top: 20px; " class="img" src="${pageContext.request.contextPath}/images/3.png">
			</div>
		</div>
		<div class="row pt-3 pb-3 justify-content-between  align-items-center ">	
		<div class="row pt-4 pb-2 ">
			<div class="col-12 d-flex justify-content-center align-items-center">
				<a href="#">© 2014-2018 dongly.vn All Rights Reserved </a>
			</div>
		</div>
	</div>

</footer>
      <script type="text/javascript">   
      function swap1() {
          var data1 = document.getElementById("fromAddress").value;
          var data2 = document.getElementById("toAddress").value;
          document.getElementById("fromAddress").value = data2;
          document.getElementById("toAddress").value = data1;
          document.getElementById("swap_button").onclcik = function () {swap2()};
          
      }

      function swap2() {
          var data1 = document.getElementById("toAddress").value;
          var data2 = document.getElementById("fromAddress").value;
          document.getElementById("toAddress").value = data2;
          document.getElementById("toAddress").value = data1;
          document.getElementById("swap_button").onclcik = function () {swap2()};
      }
     
      function validate() {
          var n1 = document.getElementById("num1");
          var n2 = document.getElementById("num2");
          var n16 = document.getElementById("num16");
          if(n1.innerHTML !=  n2.innerHTML && n16.value !="") {           
              return true;           
          }
          else{
          	 	if(n1.value=n2.value)
          		{	
          	 		alert("Vui lòng thay đổi địa điểm bị trùng!!!");
          	 		return false;
          		}
          		if(n16.value=="")
          			{
          				alert("Vui lòng nhập ngày đi!!!");
          	 			return false;
          			}
     	   }
         
        }  
      
    
      </script>
  </body>
</html>
