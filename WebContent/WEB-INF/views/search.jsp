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
      
</style>
    <link href='<c:url value="/resources/assets/dist/css/navbar-top.css"></c:url>' rel="stylesheet">
  </head>
  <body>  
<nav style="margin-bottom: 0px !important" class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Đông Lý</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Phần Mềm</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Support</a>
        </li>
      </ul>     
      <form class="d-flex">
     	<a style="background-color: red;  margin-right: 20px" class="btn btn-primary d-block" href="/look-up-tickets"> <span>Tra cứu vé</span>
			<i class="fas fa-search"></i>	
		</a>
        <button class="btn btn-outline-success" type="submit"><a href="Lab_2/login.htm" style="text-decoration: none;color: white;">Đăng Nhập</a></button>        
      </form>      
    </div>    
  </div>	
</nav>
<img  style=" width: 1518px;" class="img" src="${pageContext.request.contextPath}/images/5.png">
<main class="container">																								
<div id="lookup-tickets">
		<div class="content-banner"></div>
		<div class="container">
			<div class="title-page text-center mt-3">
				<h1 clas="title">
					Tra cứu thông tin vé
				</h1>
				<span class="intro">Bạn vui điền thông tin để kiểm tra thông tin vé</span>
			</div>
			<div class="search_box text-center mt-5 animate-box-hide fadeInUp animated-fast">
				<form class="search-tickets-form" search-tickets-form="">
					<form:form action="ves.htm" method="POST" commandName="ve"	>
					<div class="row" style="margin-left: 80px;">
						<div class="col-md-4">
							<div class="form-group">
								<div class="form-field">
									<i class="fas fa-ticket-alt"></i> 
									<form:input path="id" type="text"  required="required" class="form-control tickets-code"/>
									<label for="tickets-code">Mã vé</label>
								</div>
							</div>
						</div>					
						<div style="width: 400px;height: 50px;margin-top: 20px" class="col-md-4 d-flex">
							<input type="submit" name="action" value="Tìm kiếm" class="btn btn-primary btn-block">
						</div>
					</div>
					</form:form>
				</form>
			</div>
			<div class="result_box" style="display: none;">
				<div id="grid-data"><div class="fancy fancy-panel fancy-theme-bootstrap fancy-panel-shadow fancy-panel-grid-inside" id="fancy-gen-12" style="width: 1110px; height: 400px; border-bottom-width: 0px;"><div style="height:42px;" class="fancy-panel-header fancy-display-none"><div class="fancy-panel-header-text"></div><div class="fancy-panel-header-tools"></div></div><div style="height:42px;" class="fancy-panel-sub-header fancy-display-none"><div class="fancy-panel-sub-header-text"></div></div><div class="fancy-panel-body" style="border-width: 0px;"><div class="fancy-panel-tbar" style="height:38px;"><div class="fancy-bar-container"><div class="fancy-bar-text" id="fancy-gen-24" style="float: left; margin-right: 10px; padding-left: 0px; padding-top: 11px;">Thông tin vé</div><div class="fancy fancy-button fancy-bar-button" id="fancy-gen-25" style="width: 56px; height: 28px; float: left;"><div class="fancy-button-image"></div><a class="fancy-button-text">Hủy vé</a><div class="fancy-button-drop" style=""></div></div><div class="fancy fancy-button fancy-bar-button" id="fancy-gen-26" style="width: 84px; height: 28px; float: left;"><div class="fancy-button-image"></div><a class="fancy-button-text">Thanh toán</a><div class="fancy-button-drop" style=""></div></div></div><div class="fancy fancy-button fancy-bar-left-scroller" id="fancy-gen-27" style="width: 20px; height: 40px; position: absolute; left: -1px; top: -1px; display: none;"><div class="fancy-button-image" style="display: block;"></div><a class="fancy-button-text"></a><div class="fancy-button-drop" style=""></div></div><div class="fancy fancy-button fancy-bar-right-scroller" id="fancy-gen-28" style="width: 20px; height: 40px; position: absolute; right: -1px; top: -1px; display: none;"><div class="fancy-button-image" style="display: block;"></div><a class="fancy-button-text"></a><div class="fancy-button-drop" style=""></div></div></div><div class="fancy-panel-sub-tbar fancy-display-none" style="height:38px;"></div><div class="fancy-panel-body-inner"><div class="fancy fancy-grid fancy-grid-unselectable" role="grid" id="fancy-grid-1" style="width: 1110px; height: 324px; border-width: 1px;"><div class="fancy-grid-left fancy-grid-left-empty" style="width: 0px; height: 30px;"><div role="presentation" class="fancy-grid-header" style="height: 30px; width: 0px;"></div><div class="fancy-grid-body" role="presentation" style="height: 292px;"></div></div><div class="fancy-grid-center" style="left: 0px; width: 1108px; height: 30px;"><div role="presentation" class="fancy-grid-header" style="height: 30px; width: 1108px;"><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="width: 50px; height: 30px; left: 0px; top: 0px;" index="0"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text">Chọn</span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="width: 150px; height: 30px; left: 50px; top: 0px;" index="1"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text">Họ tên</span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="width: 100px; height: 30px; left: 200px; top: 0px;" index="2"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text">Số điện thoại</span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="width: 100px; height: 30px; left: 300px; top: 0px;" index="3"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text">Trạng thái</span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="width: 300px; height: 30px; left: 400px; top: 0px;" index="4"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text">Thông tin vé</span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="width: 100px; height: 30px; left: 700px; top: 0px;" index="5"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text">Giờ xuất bến</span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="width: 120px; height: 30px; left: 800px; top: 0px;" index="6"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text">Ngày xuất bến</span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="width: 60px; height: 30px; left: 920px; top: 0px;" index="7"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text">Vị trí</span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="width: 100px; height: 30px; left: 980px; top: 0px;" index="8"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text">Giá vé</span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="display: none; width: 100px; height: 30px; left: 1080px; top: 0px;" index="9"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text"></span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="display: none; width: 100px; height: 30px; left: 1080px; top: 0px;" index="10"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text"></span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="display: none; width: 100px; height: 30px; left: 1080px; top: 0px;" index="11"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text"></span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="display: none; width: 100px; height: 30px; left: 1080px; top: 0px;" index="12"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text"></span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div><div role="columnheader" class="fancy-grid-header-cell  fancy-grid-header-cell-trigger-disabled fancy-grid-header-cell-sortable" style="display: none; width: 100px; height: 30px; left: 1080px; top: 0px;" index="13"><div class="fancy-grid-header-cell-container" style="height: 30px;"><span class="fancy-grid-header-cell-text"></span><span class="fancy-grid-header-cell-trigger"><div class="fancy-grid-header-cell-trigger-image"></div></span></div></div></div><div class="fancy-grid-body" role="presentation" style="height: 292px; width: 1108px;"><div class="fancy-scroll-right fancy-display-none"><div class="fancy-scroll-right-inner" style="margin-top: 2px; height: 580px;"></div></div><div class="fancy-scroll-bottom fancy-display-none"><div class="fancy-scroll-bottom-inner" style="width: 1134.73px; margin-left: 1px;"></div></div><div></div><div class="fancy-grid-column" grid="fancy-grid-1" role="presentation" index="0" style="width: 50px; text-align: center; left: 0px; top: 0px;"></div><div class="fancy-grid-column fancy-grid-column-ellipsis" grid="fancy-grid-1" role="presentation" index="1" style="width: 150px; left: 50px; top: 0px;"></div><div class="fancy-grid-column fancy-grid-column-ellipsis" grid="fancy-grid-1" role="presentation" index="2" style="width: 100px; left: 200px; top: 0px;"></div><div class="fancy-grid-column fancy-grid-column-ellipsis" grid="fancy-grid-1" role="presentation" index="3" style="width: 100px; left: 300px; top: 0px;"></div><div class="fancy-grid-column fancy-grid-column-ellipsis" grid="fancy-grid-1" role="presentation" index="4" style="width: 300px; left: 400px; top: 0px;"></div><div class="fancy-grid-column fancy-grid-column-ellipsis" grid="fancy-grid-1" role="presentation" index="5" style="width: 100px; left: 700px; top: 0px;"></div><div class="fancy-grid-column fancy-grid-column-ellipsis" grid="fancy-grid-1" role="presentation" index="6" style="width: 120px; left: 800px; top: 0px;"></div><div class="fancy-grid-column fancy-grid-column-ellipsis" grid="fancy-grid-1" role="presentation" index="7" style="width: 60px; left: 920px; top: 0px;"></div><div class="fancy-grid-column fancy-grid-column-ellipsis" grid="fancy-grid-1" role="presentation" index="8" style="width: 100px; left: 980px; top: 0px;"></div><div class="fancy-grid-column fancy-grid-column-ellipsis" grid="fancy-grid-1" role="presentation" index="9" style="display: none; width: 100px; left: 1080px; top: 0px;"></div><div class="fancy-grid-column fancy-grid-column-ellipsis" grid="fancy-grid-1" role="presentation" index="10" style="display: none; width: 100px; left: 1080px; top: 0px;"></div><div class="fancy-grid-column fancy-grid-column-ellipsis" grid="fancy-grid-1" role="presentation" index="11" style="display: none; width: 100px; left: 1080px; top: 0px;"></div><div class="fancy-grid-column fancy-grid-column-ellipsis" grid="fancy-grid-1" role="presentation" index="12" style="display: none; width: 100px; left: 1080px; top: 0px;"></div><div class="fancy-grid-column fancy-grid-column-ellipsis" grid="fancy-grid-1" role="presentation" index="13" style="display: none; width: 100px; left: 1080px; top: 0px;"></div><div class="fancy-grid-empty-text"></div></div></div><div class="fancy-grid-right fancy-grid-right-empty" style="right: 0px; width: 0px; height: 30px;"><div role="presentation" class="fancy-grid-header" style="height: 30px; width: 0px;"></div><div class="fancy-grid-body" role="presentation" style="height: 292px;"></div></div><div class="fancy-grid-editors"></div><textarea class="fancy-grid-copy-textarea" aria-hidden="true"></textarea></div></div><div class="fancy-panel-bbar" style="height:38px;"><div class="fancy-bar-container"><div class="fancy fancy-button fancy-bar-button fancy-button-disabled" id="fancy-gen-13" style="width: 30px; height: 28px; float: left; margin-left: 5px; margin-right: 5px; margin-top: 3px;"><div class="fancy-button-image fancy-paging-first" style="display: block;"></div><a class="fancy-button-text"></a><div class="fancy-button-drop" style=""></div></div><div class="fancy fancy-button fancy-bar-button fancy-button-disabled" id="fancy-gen-14" style="width: 30px; height: 28px; float: left; margin-right: 5px; margin-top: 3px;"><div class="fancy-button-image fancy-paging-prev" style="display: block;"></div><a class="fancy-button-text"></a><div class="fancy-button-drop" style=""></div></div><div class="fancy-separator" style="float: left; margin-right: 5px; margin-top: 6px; padding-left: 0px;"><div></div></div><div class="fancy-bar-text" id="fancy-gen-15" style="float: left; margin-right: 10px; padding-left: 0px; padding-top: 11px;">Page</div><div class="fancy fancy-field" id="fancy-gen-16" style="float: left; margin-left: -1px; margin-right: 8px; margin-top: 4px; padding: 0px; width: 30px; height: 29px;"><div class="fancy-field-label" style="display:none;">false:</div><div class="fancy-field-text"><input placeholder="" class="fancy-field-text-input" style="width: 30px; height: 29px;" value=""><div class="fancy-field-spin"><div class="fancy-field-spin-up"></div><div class="fancy-field-spin-down"></div></div><div class="fancy-field-error" style=""></div></div><div class="fancy-clearfix"></div></div><div class="fancy-bar-text" id="fancy-gen-17" style="float: left; margin-right: 10px; padding-left: 0px; padding-top: 11px;">of 1</div><div class="fancy-separator" style="float: left; margin-right: 5px; margin-top: 6px; padding-left: 0px;"><div></div></div><div class="fancy fancy-button fancy-bar-button fancy-button-disabled" id="fancy-gen-18" style="width: 30px; height: 28px; float: left; margin-right: 5px; margin-top: 3px;"><div class="fancy-button-image fancy-paging-next" style="display: block;"></div><a class="fancy-button-text"></a><div class="fancy-button-drop" style=""></div></div><div class="fancy fancy-button fancy-bar-button fancy-button-disabled" id="fancy-gen-19" style="width: 30px; height: 28px; float: left; margin-right: 5px; margin-top: 3px;"><div class="fancy-button-image fancy-paging-last" style="display: block;"></div><a class="fancy-button-text"></a><div class="fancy-button-drop" style=""></div></div><div id="fancy-gen-20" class="fancy fancy-field fancy-combo fancy-theme-bootstrap" style="float: left; margin-right: 5px; margin-top: 4px; padding: 0px; height: 29px; width: 50px;"><div class="fancy-field-label" style="width:60px;display: none;">false:</div><div class="fancy-field-text"><div class="fancy-combo-input-container" style="height: 29px; width: 50px;"><div class="fancy-combo-left-el" style="height:29px;cursor:default;">&nbsp;</div><input placeholder="" class="fancy-field-text-input" style="height: 29px; cursor: default; width: 48px; margin-left: 0px;" value="50" tabindex="-1"><div class="fancy-combo-dropdown-button" style="height: 29px;">&nbsp;</div></div></div><div class="fancy-field-error" style=""></div><div class="fancy-clearfix"></div></div><div class="fancy-bar-text" id="fancy-gen-21" style="right: 0px; float: right; position: absolute; margin-right: 10px; padding-left: 0px; padding-top: 11px;">Rows 0 - 0 of 0</div></div><div class="fancy fancy-button fancy-bar-left-scroller" id="fancy-gen-22" style="width: 20px; height: 40px; position: absolute; left: -1px; top: -1px; display: none;"><div class="fancy-button-image" style="display: block;"></div><a class="fancy-button-text"></a><div class="fancy-button-drop" style=""></div></div><div class="fancy fancy-button fancy-bar-right-scroller" id="fancy-gen-23" style="width: 20px; height: 40px; position: absolute; right: -1px; top: -1px; display: none;"><div class="fancy-button-image" style="display: block;"></div><a class="fancy-button-text"></a><div class="fancy-button-drop" style=""></div></div></div><div class="fancy-panel-buttons fancy-display-none" style="height:38px;"></div><div class="fancy-panel-footer fancy-display-none" style="height:38px;"></div></div><div class="fancy-loadmask fancy-theme-bootstrap" style="width: 1110px; height: 400px; opacity: 0; display: none;"><div class="fancy-loadmask-inner" style="left: 526.5px; top: 176px;"><div class="fancy-loadmask-image"></div><div class="fancy-loadmask-text">Loading...</div></div></div></div></div>
			</div>
		</div>
	</div>														
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
  </body>
</html>
