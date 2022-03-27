<%@ page pageEncoding="utf-8"%> <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="" />
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors" />
        <meta name="generator" content="Hugo 0.80.0" />
        <title>Đăng Nhập</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/navbar-static/" />
        <base href="${pageContext.servletContext.contextPath}" />
        <link href="<c:url value='/resources/assets/dist/css/bootstrap.min.css'></c:url>" rel="stylesheet" />
        <link href="<c:url value='/resources/fontawesome-free-5.15.1-web/css/all.css'></c:url>" rel="stylesheet" />
        <style type="text/css">
            .main {
                background-size: cover;
                background-image: url(${pageContext.request.contextPath}/images/20.jpg);
                width: 100%;
                height: 722px;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .khoi {
                width: 50%;
                height: 60%;
                background-color: black;
                opacity: 0.8;
                text-align: center;
                padding-top: 30px;
                display: block;
            }
            .search {
                width: 80%;
                height: 40px;
                background-color: #fff;

                margin-left: 10%;
                margin-right: 10%;
            }
            .khoi h2 {
                color: #fff;
                font-family: Arial, Helvetica, sans-serif;
            }
            .khoi p {
                margin-top: 30px;
                margin-bottom: 30px;
                color: #fff;
                font-family: Arial, Helvetica, sans-serif;
            }
            .noidung {
                width: 90%;
                margin-top: 10px;
                margin: auto;

                height: 50px;
                display: flex;
                flex-direction: row;
                justify-content: center;
            }
            .content {
                margin-top: 10px;
                width: 30%;
                margin-right: 20px;
            }
            .content i {
                height: 50px;
                color: white;
                font-size: 30px;

                float: left;
                display: inline;
            }
            .content p {
                display: flex;
                flex-direction: row;

                align-items: left;
            }

            .btn {
                margin-bottom: 20px !important;
            }
            .content {
                color: red;
                opacity: 1;
            }
        </style>
        <body>
            <div class="main">
                <img style="width: 400px; height: 434px; opacity: 0.7;" class="img1" src="${pageContext.request.contextPath}/images/16.jpg" />
                <div class="khoi">
                    <h2>Đăng Nhập</h2>
                    <div class="noidung">
                        <div class="content">
                            <form:form method="post" modelAttribute="tk" action="Lab_2/login.htm">
                                <p>Tên tài khoản</p>
                                <form:input type="text" path="username" autocomplete="off" />
                                <p>Password</p>
                                <form:input type="password" path="pass" autocomplete="off" />
                                ${message}
                                <button style="margin-top: 40px; float: left;" class="btn btn-danger">
                                    <a href="Lab_2/test3.htm" style="text-decoration: none; color: white;">Thoát</a>
                                </button>
                                <button type="submit" style="margin-top: 40px; float: right;" class="btn btn-primary">Đăng Nhập</button>
                                <%-- ${message} --%>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </body>
    </head>
</html>
