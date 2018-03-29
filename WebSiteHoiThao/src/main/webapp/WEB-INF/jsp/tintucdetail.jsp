<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <title>Tin tức chi tiết</title>
    <!-- Meta -->
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge,chrome=1">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="./static/css/bootstrap.min.css">
    <script src="./static/js/jquery-3.2.1.min.js"></script>
    <script src="./static/js/bootstrap.min.js"></script>
     <link href="./static/css/prettyPhoto.css" rel="stylesheet">
    <link href="./static/css/price-range.css" rel="stylesheet">
    <link href="./static/css/animate.css" rel="stylesheet">
    <link href="./static/css/main.css" rel="stylesheet">
    <link href="./static/css/responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="./static/css/Css_Trangchu.css">

    <!-- Glyphicons -->
    <link rel="stylesheet" href="./static/fonts/font-awesome.min.css">

    <!-- My CSS -->
    <link rel="stylesheet" href="./static/mycss/tintucdetail.css">
	
	<!-- My JS -->
	<script type="text/javascript" src="./static/myjs/tintuc.js"></script>
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

    <div class="about">
        <div class="containerr">
            <div class="dv-child-one-style">
                <div class="dv-child-left">
                    <h3>Chi Tiết Tin Tức</h3>
                    <div class="product-details">
                        <!--product-details-->
                        <div class="col-sm-5">
                            <div id="img" class="view-product" style="height: 200px !important;">
                                
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div class="product-information" style="padding-top: 10px;">
                                <h2 id="tieuDe"></h2>
                                <p id="diaDiem"><b>Địa điểm: </b></p>
                                <p id="dienGia"><b>Diễn giả: </b></p>
                                <p><b>Nội dung:</b><p id="noiDung"></p></p>
                            </div>
                            <!--/product-information-->
                        </div>
                    </div>
                </div>
                <div class="dv-child-right">
                    <div class="product">
                        <div class="dv_content_leftsp">
                            <a href="" title="" style="text-decoration: none">
                                <h3>TIN TỨC MỚI NHẤT</h3>
                            </a>
                            <div id="newsRight">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
            <input type="hidden" value="<%=request.getParameter("id")%>" id="idParam"/>
</body>

</html>