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
    <script src="./static/ckeditor/ckeditor.js"></script>
    <script src="./static/js/bootstrap.min.js"></script>
	
    <!-- Glyphicons -->
    <link rel="stylesheet" href="./static/fonts/font-awesome.min.css">

    <!-- My CSS -->
    <link rel="stylesheet" href="./static/mycss/trangchu.css">

    <!-- JS -->
    <script type="text/javascript" src="./static/js/jquery.bootpag.js"></script>

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
                    <img id="UTE-Sign" class="navbar-brand" src="./static/img/UTE-Sign.PNG" style="height: 100px; width: 100px;" />
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><button id="newsButton"><i class="glyphicon glyphicon-list-alt"></i> Thông Báo</button></li>
                        <li><button id="forumButton"><i class="glyphicon glyphicon-thumbs-up"></i> Diễn Đàn</button></li>
                        <%int dangnhap = Integer.valueOf(request.getAttribute("dangnhap").toString()); %>
                        <% if(dangnhap == 1) {%>
                        <li><button id="toAdmin"><i class="glyphicon glyphicon-thumbs-up"></i> Quản lý</button></li>
                        <%} %>
                    </ul>
                    <% if(dangnhap != 1) {%>
                    <ul class="nav navbar-nav navbar-right">
                        <li style="margin-right: 55px;"><a href="${request.contextPath}/ToLogin" style="color: white;"><span class="glyphicon glyphicon-log-in" id="login"></span> Login</a></li>
                    </ul>
                    <%}else{ %>
                    <ul class="nav navbar-nav navbar-right">
                        <li style="margin-right: 55px;"><a href="${request.contextPath}/dangxuat" style="color: white;"><span class="glyphicon glyphicon-log-out" id="logout"></span> Logout</a></li>
                    </ul>
                    <%} %>
                </div>
            </div>
        </nav>
    </header>
    <div id="content">
        <div id="welcome">
        </div>

        <div id="TinTuc">
            <div class="row">
                <div class="col-sm-4 col-md-4 col-xs-12">
                    <h3>Gần đây</h3>
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                        	<% int dem = 1; %>
							<c:forEach var="tintuc" items="${tintucganday}">
								<% if(dem == 1) {%>
									<div class="item active">
                                	<a href="${pageContext.request.contextPath}tintucdetail?id=${tintuc.id}"><img src="${tintuc.linkanh}" 
                                	alt="" style="width:100%; height: 470px;"></a>
                                <% dem++; }else { %>
                                	<div class="item">
                                	<a href="${pageContext.request.contextPath}tintucdetail?id=${tintuc.id}"><img src="${tintuc.linkanh}" 
                                	alt="" style="width:100%; height: 470px;"></a>
                                <% } %>
                            </div>
							</c:forEach>
                        </div>

                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <div class="col-sm-8 col-md-8 col-xs-12">
                    <h3>Tổng hợp</h3>
                   	<div id="noidungTongHop" style="height: 415px;"></div>
                    <div id="page-selection_bot" style="text-align: right;margin-right: 15px; margin-bottom: 5px;"></div>
                </div>
            </div>
        </div>

        <div id="ThongBao">
        	<div class="row">
        	<div class="col-md-6">
	            <h3 style="color: #0E8AC6;">Thông báo</h3>
	            </div>
	         <div class="col-md-6" style="text-align: right;">
	         	<% if(dangnhap == 1) {%>
	            <button class="btn btn-default" id="suaThongBao" style="margin-right: 15px;margin-top: 20px">Chỉnh sửa</button>
	            <%} %>
	          </div>
            </div>
            <div id="messagediv" style="height: 479px;overflow-y: auto;">
            	<h4 id="message">${thongbaoLast.noidung}</h4>
            </div>
            <div id="theCK" style="width: 99%;">
            	<textarea id="ck"></textarea>
            </div>
            <div id="buttonGroupSua" style="text-align: right;">
            	<button class="btn btn-default" id="Save" style="margin-top: 15px;background-color: #00A2E8">Save</button>
            	<button class="btn btn-default" id="Cancel" style="margin-right: 15px;margin-top: 15px;">Cancel</button>
            </div>
        </div>

        <button id="myBtn">Top</button>
    </div>
    <footer>
        <div id="footer">
            <div class="row">
                <div class="col-sm-4 col-md-4 col-xs-4">
                    <h4>Giới thiệu</h4>
                    <h5>Là Website xem xét tin tức về tất cả các cuộc hội thảo của trường đại học SPKT.</h5>
                </div>
                <div class="col-sm-4 col-md-4 col-xs-4">
                    <h4>Hỗ trợ</h4>
                    <h5><i class="glyphicon glyphicon-eye-open"></i > Đăng ký tham dự hội thảo</h5>
                    <h5><i class="glyphicon glyphicon-education"></i> Đăng ký phát biểu trong hội thảo</h5>
                </div>
                <div class="col-sm-4 col-md-4 col-xs-4">
                    <h4>Liên hệ</h4>
                    <h5><i class="glyphicon glyphicon-envelope"></i> Email: tuhoatri680@gmail.com</h5>
                    <h5><i class="glyphicon glyphicon-phone-alt"></i> Phone: 01206002680</h5>
                </div>
            </div>
        </div>
    </footer>
    
    <script>
    	CKEDITOR.replace('ck');
        $(document).ready(function(){
         	$("#theCK").css("display","none");
         	$("#buttonGroupSua").css("display","none");
        });
        
    </script>
</body>

</html>