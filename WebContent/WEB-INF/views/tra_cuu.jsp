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
      <title>Tra Cứu</title>
      <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/navbar-static/">
      <base href="${pageContext.servletContext.contextPath}"/>
      <link href="<c:url value='/resources/assets/dist/css/bootstrap.min.css'></c:url>" rel="stylesheet">
      <link href="<c:url value='/resources/fontawesome-free-5.15.1-web/css/all.css'></c:url>" rel="stylesheet">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.css"/>
 	  <script type="text/javascript" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.js"></script>
      
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
         .center {
         position:absolute;
         top:50%;
         left:50%;
         transform:translate(-50%,-50%);
         text-align:center;
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
         border:2px solid yellow;
         text-align:center;
         display:inline-block;
         border-radius:50%;
         line-height:60px;
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
         margin-right: 50px;
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
         /*collap  */
          .collapsible {
         margin-left:390px;
         color: white;
         cursor: pointer;
         padding: 10px;
         width: 160px;
         border: none;
         text-align: left;
         outline: none;
         font-size: 15px;
         height: 50px;
         }
         .active, .collapsible:hover {
        /*  background-color: #FDF6F6; */
         }
         .collapsible:after {
         color: white;
         font-weight: bold;
         float: right;
         margin-left: 5px;
         }
         .content {
         position:relative;        
       	 right:580px;   
         padding: 0 18px;
       	 max-height: 0;
         overflow: hidden;
         transition: max-height 0.2s ease-out;
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
                  <li class="nav-item" >
                     <a style="background-color: #212529 !important;" class="nav-link active" aria-current="page" href="/Lab_2/test3.htm">Phần Mềm</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="/Lab_2/test3.htm">Support</a>
                  </li>
               </ul>
               <form class="d-flex">
                  <a style="background-color: red;  margin-right: 20px" class="btn btn-primary d-block" href="/Lab_2/ves.htm"> <span>Tra cứu vé</span>
                  <i class="fas fa-search"></i>	
                  </a>
                  <button class="btn btn-outline-success" type="submit"><a href="Lab_2/login.htm" style="text-decoration: none;color: white;">Đăng Nhập</a></button>
               </form>
            </div>
         </div>
      </nav>
      <img  style=" width: 1518px;" class="img" src="${pageContext.request.contextPath}/images/5.png">
      <main class="container">
       <!--   <div id="lookup-tickets">
            <div class="content-banner"></div>
            <div class="container">
               <div class="title-page text-center mt-3">
                  <h1 clas="title">
                     Tra cứu thông tin vé
                  </h1>
                  <span class="intro">Bạn vui điền thông tin để kiểm tra thông tin vé</span>
               </div>
               
            </div>
         </div>
 -->
         
         <div>
  			<input id="myInput" type="text" placeholder="Nhập số điện thoại" class="form-control tickets-code" autocomplete="off" style="width: 500px;margin-left: 300px;margin-bottom: 100px;margin-top: 50px; ">
        	
        	<button  class="btn btn-primary d-block" style="margin-top: -138px !important;float: right;margin-bottom: 100px;margin-right: 360px;width: 80px;" onclick="show()">Tra cứu </button>
        	</div>
        	
         <table id="ve" class="table table-hover" >
            <tr style="background-color: pink" >
               <th style="text-align: center;" >Mã Vé</th>
               <th style="text-align: center;">Mã Khách Hàng</th>
               <th style="text-align: center;">Tên Tuyến Xe</th>
               <th style="text-align: center;">Vị trí ngồi</th>
               <th style="text-align: center;">Số Điện Thoại</th>
               <th></th>
               <th></th>
            </tr>
            <c:forEach var="v" items="${ves}">
            <tbody id="myTable">
               <tr style="margin-top: 20px; " id="myTable" >
                  
                  <td style="text-align: center;">${v.id}</td>
                  <td style="text-align: center;">${v.khachhang.id}</td>
                  <td style="text-align: center;">${v.chuyen.tuyen.tentuyen}</td>
                  <td style="text-align: center;">${v.vitri}</td>
                 <td style="text-align: center;">${v.khachhang.sdt}</td>


					<td>
					
							<button class="btn btn-info btn-block collapsible" type="button"
								class="btnedit" data-toggle="modal" data-target="#myModal"
								style="border: none; margin-right: -40px;">


								<i class="fas fa-info-circle"
									style="width: 80px; height: 30px; margin-right: -20px;"></i><span>Chi
									tiết</span>

							</button>
					
							    <div class="content" style="margin-top: 20px;margin-right: 10px !important;">
                        <hr style="color: red; ">
                        <div class="row pick-up-guest scroll">
                           <div class="col-6">
                           <ul style="list-style: none;">
                             
                 	 <li style="font-weight: bold;">Họ Tên Khách Hàng</li>
                 	 <li style="font-weight: bold;">Địa Chỉ</li>
                 	 <li style="font-weight: bold;">Số Điện Thoại</li>
                	  <li style="font-weight: bold;">Ngày Khởi Hành</li>
                	  <li style="font-weight: bold;">Giờ Khởi Hành</li>
                	 <li style="font-weight: bold;">Giá Vé</li>
                	 </ul>
                           </div>
                           <div class="col-6">
                              <ul style="list-style: none;">
                              
                 	 <li>${v.khachhang.ho} ${v.khachhang.ten}</li>
                	  <li">${v.khachhang.diachi}</li>
                	   <li>${v.khachhang.sdt}</li>
                	  <li>${v.chuyen.ngay}</li>
                	 <li>${v.chuyen.tuyen.gio}</li>
                	 <li>${v.chuyen.xe.loai.gia} VND</li>
                              </ul>
                           </div>
                        </div>
                     </div>
					</td>	
						<div class="center" >
                   
                     <td><a style="margin-left:20px !important;text-decoration: none;" onclick="huy()" id="huyy" name="btnDelete" class="btn btn-danger btn-block" href="Lab_2/ves/${v.id}.htm?linkDelete" role="button" ><i style="width: 100px; height: 30px; " class="fas fa-trash-alt"><span>  Hủy Vé</span></i></a> </td>	
                	
                  </div>
                  
                <!--  -${v.chuyen.tuyen.tentuyen}-${v.chuyen.xe.loai.ten}-${v.chuyen.xe.loai.gia}-->
     
               </tr>
               
              </tbody>
            </c:forEach>
         </table>
       
      </main>
      <footer class="bg-dark pb-5" style="width: 100%;">
         <div style="margin-top: 200px;width: 100%; height: 350px;" class="container">
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
         </div>
      </footer>
      <script type="text/javascript">
      var a;
      var n1 = document.getElementById("myInput");
   
      function show()
      {
    	  if(a==1 && n1.value != "")
    		  {
    		  document.getElementById("ve").style.display="inline-table";
    		  return a=0;
    		  }
    	  else
    		  {
    		  document.getElementById("ve").style.display="none";
    		  return a=1;
    		  }
      }
      
      
      $(document).ready(function(){
 		  $("#myInput").on("keyup", function() {
 		    var value = $(this).val().toLowerCase();
 		    $("#myTable tr").filter(function() {
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
      
    function huy() {
    	  alert("Xóa thành công!!!");
    	
    	  } 
      
         document.getElementById("open-popup-btn").addEventListener("click",function(){
         	  document.getElementsByClassName("popup")[0].classList.add("active");
         	});
         	 
         	document.getElementById("dismiss-popup-btn").addEventListener("click",function(){
         	  document.getElementsByClassName("popup")[0].classList.remove("active");
         	});
         		
          
         	
         	
         	
         
      </script>
   </body>
</html>