<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <title>UTE Seminar</title>

    <!-- Meta -->
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge,chrome=1">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="./static/css/bootstrap.min.css">
    <script src="./static/js/jquery-3.2.1.min.js"></script>
    <script src="./static/js/bootstrap.min.js"></script>

    <!-- Glyphicons -->
    <link rel="stylesheet" href="./static/fonts/font-awesome.min.css">

    <!-- My CSS -->
    <link rel="stylesheet" href="./static/mycss/trangchu.css">
    <link rel="stylesheet" href="./static/mycss/dangnhap.css">

    <!-- JS -->

    <!-- My JS -->
    <script type="text/javascript" src="./static/myjs/index.js"></script>
    
</head>

<body>
    <header class="UTE-Seminar-header">
        <nav class="navbar navbar-inverse" style="background-color: #00558D; height: 50px;border-radius: 0px;">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>                        
                        </button>
                    <a href="${request.contextPath}/">
                    <img id="UTE-Sign" class="navbar-brand" src="./static/img/UTE-Sign.PNG" style="height: 100px; width: 100px;" />
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-left">
                        <h2 style="color: white; margin-top: 7px;">Welcome to UTE Seminar</h2>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <div id="Login" style="margin-top: -59px;">
        <div class="card card-container">
        <h3 style="text-align: center;font: bold; color: #e8491d; padding-bottom: 15px;">${message}</h3>
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="./static/img/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="login"method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="text" id="ipusername" name="taikhoan" class="form-control" placeholder="Tài Khoản" required autofocus>
                <input type="password" id="ippassword" name="matkhau" class="form-control" placeholder="Mật khẩu" required>
                
                <button class="btn btn-lg btn-primary btn-block btn-signin" style="font-size: 22px;" id="login" type="submit">Đăng nhập</button>
            </form>
            <!-- /form -->
            
        </div>
    </div>

    <footer>
        <div id="footer">
            <div class="row">
                <div class="col-sm-4">
                    <h4>Giới thiệu</h4>
                    <h5>Là Website xem xét tin tức về tất cả các cuộc hội thảo của trường đại học SPKT.</h5>
                </div>
                <div class="col-sm-4">
                    <h4>Hỗ trợ</h4>
                    <h5><i class="glyphicon glyphicon-eye-open"></i > Đăng ký tham dự hội thảo</h5>
                    <h5><i class="glyphicon glyphicon-education"></i> Đăng ký phát biểu trong hội thảo</h5>
                </div>
                <div class="col-sm-4">
                    <h4>Liên hệ</h4>
                    <h5><i class="glyphicon glyphicon-envelope"></i> Email: tuhoatri680@gmail.com</h5>
                    <h5><i class="glyphicon glyphicon-phone-alt"></i> Phone: 01206002680</h5>
                </div>
            </div>
        </div>
    </footer>
    
</body>

</html>