<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.1
Version: 3.6
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html>
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
<meta charset="utf-8" />
<title>Admin Page</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />
<link
	href="../../assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../../assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../assets/global/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css" />
<link
	href="../../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css"
	href="../../assets/global/plugins/select2/select2.css" />
<link rel="stylesheet" type="text/css"
	href="../../assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="../../assets/global/plugins/bootstrap-datepicker/css/datepicker.css" />
<link rel="stylesheet" type="text/css"
	href="../../assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" />
<link
	href="../../assets/global/plugins/fancybox/source/jquery.fancybox.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="../../assets/global/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link href="../../assets/global/css/plugins.css" rel="stylesheet"
	type="text/css" />
<link href="../../assets/admin/layout/css/layout.css" rel="stylesheet"
	type="text/css" />
<link id="style_color"
	href="../../assets/admin/layout/css/themes/darkblue.css"
	rel="stylesheet" type="text/css" />
<link href="../../assets/admin/layout/css/custom.css" rel="stylesheet"
	type="text/css" />

<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->

<body class="page-header-fixed page-quick-sidebar-over-content ">
	<!-- BEGIN HEADER -->
	<div class="page-header navbar navbar-fixed-top">
		<!-- BEGIN HEADER INNER -->
		<div class="page-header-inner">
			<!-- BEGIN LOGO -->
			<div class="page-logo">
				<a href="#"> <img src="../../assets/admin/layout/img/logo.png"
					alt="logo" class="logo-default" />
				</a>
				<div class="menu-toggler sidebar-toggler hide">
					<!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
				</div>
			</div>
			<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="menu-toggler responsive-toggler"
				data-toggle="collapse" data-target=".navbar-collapse"> </a>
			<!-- END RESPONSIVE MENU TOGGLER -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right">
					<!-- BEGIN NOTIFICATION DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-extended dropdown-notification"
						id="header_notification_bar"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-close-others="true"> <i
							class="icon-bell"></i> <span class="badge badge-default">
								7 </span>
					</a>
						<ul class="dropdown-menu">
							<li class="external">
								<h3>
									<span class="bold">12 pending</span> notifications
								</h3> <a href="extra_profile.html">view all</a>
							</li>
							<li>
								<ul class="dropdown-menu-list scroller" style="height: 250px;"
									data-handle-color="#637283">
									<li><a href="javascript:;"> <span class="time">just
												now</span> <span class="details"> <span
												class="label label-sm label-icon label-success"> <i
													class="fa fa-plus"></i>
											</span> New user registered.
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="time">3
												mins</span> <span class="details"> <span
												class="label label-sm label-icon label-danger"> <i
													class="fa fa-bolt"></i>
											</span> Server #12 overloaded.
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="time">10
												mins</span> <span class="details"> <span
												class="label label-sm label-icon label-warning"> <i
													class="fa fa-bell-o"></i>
											</span> Server #2 not responding.
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="time">14
												hrs</span> <span class="details"> <span
												class="label label-sm label-icon label-info"> <i
													class="fa fa-bullhorn"></i>
											</span> Application error.
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="time">2
												days</span> <span class="details"> <span
												class="label label-sm label-icon label-danger"> <i
													class="fa fa-bolt"></i>
											</span> Database overloaded 68%.
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="time">3
												days</span> <span class="details"> <span
												class="label label-sm label-icon label-danger"> <i
													class="fa fa-bolt"></i>
											</span> A user IP blocked.
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="time">4
												days</span> <span class="details"> <span
												class="label label-sm label-icon label-warning"> <i
													class="fa fa-bell-o"></i>
											</span> Storage Server #4 not responding dfdfdfd.
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="time">5
												days</span> <span class="details"> <span
												class="label label-sm label-icon label-info"> <i
													class="fa fa-bullhorn"></i>
											</span> System Error.
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="time">9
												days</span> <span class="details"> <span
												class="label label-sm label-icon label-danger"> <i
													class="fa fa-bolt"></i>
											</span> Storage server failed.
										</span>
									</a></li>
								</ul>
							</li>
						</ul></li>
					<!-- END NOTIFICATION DROPDOWN -->
					<!-- BEGIN INBOX DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-extended dropdown-inbox"
						id="header_inbox_bar"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" data-hover="dropdown"
						data-close-others="true"> <i class="icon-envelope-open"></i> <span
							class="badge badge-default"> 4 </span>
					</a>
						<ul class="dropdown-menu">
							<li class="external">
								<h3>
									You have <span class="bold">7 New</span> Messages
								</h3> <a href="page_inbox.html">view all</a>
							</li>
							<li>
								<ul class="dropdown-menu-list scroller" style="height: 275px;"
									data-handle-color="#637283">
									<li><a href="inbox.html?a=view"> <span class="photo">
												<img src="../../assets/admin/layout3/img/avatar2.jpg"
												class="img-circle" alt="">
										</span> <span class="subject"> <span class="from"> Lisa
													Wong </span> <span class="time">Just Now </span>
										</span> <span class="message"> Vivamus sed auctor nibh congue
												nibh. auctor nibh auctor nibh... </span>
									</a></li>
									<li><a href="inbox.html?a=view"> <span class="photo">
												<img src="../../assets/admin/layout3/img/avatar3.jpg"
												class="img-circle" alt="">
										</span> <span class="subject"> <span class="from">
													Richard Doe </span> <span class="time">16 mins </span>
										</span> <span class="message"> Vivamus sed congue nibh auctor
												nibh congue nibh. auctor nibh auctor nibh... </span>
									</a></li>
									<li><a href="inbox.html?a=view"> <span class="photo">
												<img src="../../assets/admin/layout3/img/avatar1.jpg"
												class="img-circle" alt="">
										</span> <span class="subject"> <span class="from"> Bob
													Nilson </span> <span class="time">2 hrs </span>
										</span> <span class="message"> Vivamus sed nibh auctor nibh
												congue nibh. auctor nibh auctor nibh... </span>
									</a></li>
									<li><a href="inbox.html?a=view"> <span class="photo">
												<img src="../../assets/admin/layout3/img/avatar2.jpg"
												class="img-circle" alt="">
										</span> <span class="subject"> <span class="from"> Lisa
													Wong </span> <span class="time">40 mins </span>
										</span> <span class="message"> Vivamus sed auctor 40% nibh
												congue nibh... </span>
									</a></li>
									<li><a href="inbox.html?a=view"> <span class="photo">
												<img src="../../assets/admin/layout3/img/avatar3.jpg"
												class="img-circle" alt="">
										</span> <span class="subject"> <span class="from">
													Richard Doe </span> <span class="time">46 mins </span>
										</span> <span class="message"> Vivamus sed congue nibh auctor
												nibh congue nibh. auctor nibh auctor nibh... </span>
									</a></li>
								</ul>
							</li>
						</ul></li>
					<!-- END INBOX DROPDOWN -->
					<!-- BEGIN TODO DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-extended dropdown-tasks"
						id="header_task_bar"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" data-hover="dropdown"
						data-close-others="true"> <i class="icon-calendar"></i> <span
							class="badge badge-default"> 3 </span>
					</a>
						<ul class="dropdown-menu extended tasks">
							<li class="external">
								<h3>
									You have <span class="bold">12 pending</span> tasks
								</h3> <a href="page_todo.html">view all</a>
							</li>
							<li>
								<ul class="dropdown-menu-list scroller" style="height: 275px;"
									data-handle-color="#637283">
									<li><a href="javascript:;"> <span class="task">
												<span class="desc">New release v1.2 </span> <span
												class="percent">30%</span>
										</span> <span class="progress"> <span style="width: 40%;"
												class="progress-bar progress-bar-success" aria-valuenow="40"
												aria-valuemin="0" aria-valuemax="100"><span
													class="sr-only">40% Complete</span></span>
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="task">
												<span class="desc">Application deployment</span> <span
												class="percent">65%</span>
										</span> <span class="progress"> <span style="width: 65%;"
												class="progress-bar progress-bar-danger" aria-valuenow="65"
												aria-valuemin="0" aria-valuemax="100"><span
													class="sr-only">65% Complete</span></span>
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="task">
												<span class="desc">Mobile app release</span> <span
												class="percent">98%</span>
										</span> <span class="progress"> <span style="width: 98%;"
												class="progress-bar progress-bar-success" aria-valuenow="98"
												aria-valuemin="0" aria-valuemax="100"><span
													class="sr-only">98% Complete</span></span>
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="task">
												<span class="desc">Database migration</span> <span
												class="percent">10%</span>
										</span> <span class="progress"> <span style="width: 10%;"
												class="progress-bar progress-bar-warning" aria-valuenow="10"
												aria-valuemin="0" aria-valuemax="100"><span
													class="sr-only">10% Complete</span></span>
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="task">
												<span class="desc">Web server upgrade</span> <span
												class="percent">58%</span>
										</span> <span class="progress"> <span style="width: 58%;"
												class="progress-bar progress-bar-info" aria-valuenow="58"
												aria-valuemin="0" aria-valuemax="100"><span
													class="sr-only">58% Complete</span></span>
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="task">
												<span class="desc">Mobile development</span> <span
												class="percent">85%</span>
										</span> <span class="progress"> <span style="width: 85%;"
												class="progress-bar progress-bar-success" aria-valuenow="85"
												aria-valuemin="0" aria-valuemax="100"><span
													class="sr-only">85% Complete</span></span>
										</span>
									</a></li>
									<li><a href="javascript:;"> <span class="task">
												<span class="desc">New UI release</span> <span
												class="percent">38%</span>
										</span> <span class="progress progress-striped"> <span
												style="width: 38%;"
												class="progress-bar progress-bar-important"
												aria-valuenow="18" aria-valuemin="0" aria-valuemax="100"><span
													class="sr-only">38% Complete</span></span>
										</span>
									</a></li>
								</ul>
							</li>
						</ul></li>
					<!-- END TODO DROPDOWN -->
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-user"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-close-others="true"> <img alt=""
							class="img-circle" src="../../front-end/image/phuc.jpg" /> <span
							class="username username-hide-on-mobile"> Thiên Phúc </span> <i
							class="fa fa-angle-down"></i>
					</a>
						<ul class="dropdown-menu dropdown-menu-default">
							<li><a href="extra_profile.html"> <i class="icon-user"></i>
									My Profile
							</a></li>
							<li><a href="page_calendar.html"> <i
									class="icon-calendar"></i> My Calendar
							</a></li>
							<li><a href="inbox.html"> <i class="icon-envelope-open"></i>
									My Inbox <span class="badge badge-danger"> 3 </span>
							</a></li>
							<li><a href="page_todo.html"> <i class="icon-rocket"></i>
									My Tasks <span class="badge badge-success"> 7 </span>
							</a></li>
							<li class="divider"></li>
							<li><a href="extra_lock.html"> <i class="icon-lock"></i>
									Lock Screen
							</a></li>
							<li><a href="${contextPath}/dangxuat"> <i
									class="icon-key"></i> Log Out
							</a></li>
						</ul></li>
					<!-- END USER LOGIN DROPDOWN -->
					<!-- BEGIN QUICK SIDEBAR TOGGLER -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-quick-sidebar-toggler"><a
						href="javascript:;" class="dropdown-toggle"> <i
							class="icon-logout"></i>
					</a></li>
					<!-- END QUICK SIDEBAR TOGGLER -->
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END HEADER INNER -->
	</div>
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar-wrapper">
			<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
			<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
			<div class="page-sidebar navbar-collapse collapse">
				<!-- BEGIN SIDEBAR MENU -->
				<!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
				<!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
				<!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
				<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
				<!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
				<!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
				<ul class="page-sidebar-menu" data-keep-expanded="false"
					data-auto-scroll="true" data-slide-speed="200">
					<!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
					<li class="sidebar-toggler-wrapper">
						<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
						<div class="sidebar-toggler"></div> <!-- END SIDEBAR TOGGLER BUTTON -->
					</li>
					<!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
					<li class="sidebar-search-wrapper">
						<!-- BEGIN RESPONSIVE QUICK SEARCH FORM --> <!-- DOC: Apply "sidebar-search-bordered" class the below search form to have bordered search box -->
						<!-- DOC: Apply "sidebar-search-bordered sidebar-search-solid" class the below search form to have bordered & solid search box -->
						<form class="sidebar-search " action="#" method="POST">
							<a href="javascript:;" class="remove"> <i class="icon-close"></i>
							</a>
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Search...">
								<span class="input-group-btn"> <a href="javascript:;"
									class="btn submit"><i class="icon-magnifier"></i></a>
								</span>
							</div>
						</form> <!-- END RESPONSIVE QUICK SEARCH FORM -->
					</li>
					<li class="active start "><a href="#"> <i
							class="icon-home"></i> <span class="title">Home</span> <span
							class="arrow "></span>
					</a>
						<ul class="sub-menu">
							<li><a href="AdminManaged"> Conferences</a></li>
							<li><a href="${contextPath}/"> HomePage</a></li>
						</ul></li>
				</ul>
				<!-- END SIDEBAR MENU -->
			</div>
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<div class="modal fade" id="portlet-config" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true"></button>
								<h4 class="modal-title">Modal title</h4>
							</div>
							<div class="modal-body">Widget settings form goes here</div>
							<div class="modal-footer">
								<button type="button" class="btn blue">Save changes</button>
								<button type="button" class="btn default" data-dismiss="modal">Close</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<!-- BEGIN STYLE CUSTOMIZER -->

				<!-- END STYLE CUSTOMIZER -->
				<!-- BEGIN PAGE HEADER-->
				<h3 class="page-title">
					Conference <small>create & edit </small>
				</h3>

				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					<div class="col-md-12">
						<form class="form-horizontal form-row-seperated"
							action="publish-article" method="POST">
							<input type="hidden" name="id" value="${conference.id}" />
							<div class="portlet">
								<div class="portlet-title">
									<div class="caption">
										<i class="fa fa-shopping-cart"></i>Article
									</div>
									<div class="actions btn-set">
										<button class="btn default">
											<i class="fa fa-reply"></i> Reset
										</button>
										<button type="submit" class="btn green">
											<i class="fa fa-check"></i> Publish
										</button>
									</div>
								</div>
								<div class="portlet-body">
									<div class="tabbable">
										<ul class="nav nav-tabs">
											<li class="active"><a href="#tab_general"
												data-toggle="tab"> General </a></li>
										</ul>
										<div class="tab-content no-space">
											<div class="tab-pane active" id="tab_general">
												<div class="form-body">
													<div class="form-group">
														<label class="col-md-2 control-label">Title: <span
															class="required"> * </span>
														</label>
														<div class="col-md-10 ">
															<input type="text" class="form-control" name="tieude"
																value="${conference.tieude}" placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">Description:</label>
														<div class="col-md-10">
															<textarea id="ck" class="form-control maxlength-handler"
																rows="20" name="noidung" maxlength="10000">${conference.noidung}</textarea>
															<span class="help-block"> max 10 000 chars </span>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">Speaker: <span
															class="required"> * </span>
														</label>
														<div class="col-md-10 ">
															<div class="input-group input-large">
																<input type="text" class="form-control" name="diengia"
																	placeholder="" value="${conference.diengia}" />
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">Location: <span
															class="required"> * </span>
														</label>
														<div class="col-md-10 ">
															<div class="input-group input-large">
																<input type="text" class="form-control" name="diadiem"
																	placeholder="" value="${conference.diadiem}" />
															</div>
														</div>
													</div>

													<div class="form-group">
														<label class="col-md-2 control-label"><span
															class="required"> * </span>
														</label>
														<div class="col-md-4" id="Xemimg" style="height: 250px;border: dashed;border-width: 1px;padding: 0px !important;
														margin-left: 1vw;">
															<img src="${conference.linkanh}" style="height: 100%; width: 100%;" alt="" id="showimg"/>
														</div>
													</div>
													
													<!-- File Button -->
													<div class="form-group" style="display: none;">
														<label class="col-md-2 control-label">Link: <span
															class="required"> * </span>
														</label>
														<div class="col-md-10">
															<p id="linkanh">${conference.linkanh}</p>
															<input type="text" class="form-control" name="linkanh"
																id="inputlinkanh" style="display: none;"
																value="${conference.linkanh}" />
														</div>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</form>




						<div class="form-horizontal form-row-seperated">
							<div class="portlet"></div>
							<div class="portlet-body">
								<div class="tabbable">
									<div class="tab-content no-space">
										<div class="tab-pane active" id="tab_general">
											<div class="form-body">
												<!-- File Button -->
												<div class="form-group">
													<label class="col-md-2 control-label">Image: <span
														class="required"> * </span>
													</label>
													<form id="taianhlenDr" enctype="multipart/form-data">
														<div class="col-md-8 col-xs-12">
															<input type="file" name="file" value="" id="filebutton"
																accept="image/*">
														</div>
													</form>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label"><span
														class="required"> * </span> </label>
													<div class="col-md-10">
														<button class="btn yellow" id="btnUpLoad">
															<i class="fa fa-check"></i> Upload Image
														</button>
													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>

						</div>


					</div>
					<!-- END PAGE CONTENT-->
				</div>
			</div>
			<!-- END CONTENT -->

		</div>
		<!-- END CONTAINER -->
		<!-- BEGIN FOOTER -->
		<div class="page-footer">
			<div class="page-footer-inner"></div>
			<div class="scroll-to-top">
				<i class="icon-arrow-up"></i>
			</div>
		</div>
		<!-- END FOOTER -->
		<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
		<!-- BEGIN CORE PLUGINS -->
		<!--[if lt IE 9]>
<script src="../../assets/global/plugins/respond.min.js"></script>
<script src="../../assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
		<script src="../../static/ckeditor/ckeditor.js" type="text/javascript"></script>
		<script src="../../assets/global/plugins/jquery.min.js"
			type="text/javascript"></script>
		<script src="./static/js/AdminAddArticle.js" type="text/javascript"></script>
		<script src="../../assets/global/plugins/jquery-migrate.min.js"
			type="text/javascript"></script>
		<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
		<script
			src="../../assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"
			type="text/javascript"></script>
		<script
			src="../../assets/global/plugins/bootstrap/js/bootstrap.min.js"
			type="text/javascript"></script>
		<script
			src="../../assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
			type="text/javascript"></script>
		<script
			src="../../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
			type="text/javascript"></script>
		<script src="../../assets/global/plugins/jquery.blockui.min.js"
			type="text/javascript"></script>
		<script src="../../assets/global/plugins/jquery.cokie.min.js"
			type="text/javascript"></script>
		<script
			src="../../assets/global/plugins/uniform/jquery.uniform.min.js"
			type="text/javascript"></script>
		<script
			src="../../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
			type="text/javascript"></script>
		<!-- END CORE PLUGINS -->
		<!-- BEGIN PAGE LEVEL PLUGINS -->
		<script type="text/javascript"
			src="../../assets/global/plugins/select2/select2.min.js"></script>
		<script type="text/javascript"
			src="../../assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript"
			src="../../assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
		<script type="text/javascript"
			src="../../assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script type="text/javascript"
			src="../../assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
		<script
			src="../../assets/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"
			type="text/javascript"></script>
		<script
			src="../../assets/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js"
			type="text/javascript"></script>
		<script type="text/javascript"
			src="../../assets/global/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
		<script
			src="../../assets/global/plugins/plupload/js/plupload.full.min.js"
			type="text/javascript"></script>
		<script src="http://maps.google.com/maps/api/js?sensor=false"
			type="text/javascript"></script>
		<script src="../../assets/global/plugins/gmaps/gmaps.min.js"
			type="text/javascript"></script>
		<!-- END PAGE LEVEL PLUGINS -->
		<!-- BEGIN PAGE LEVEL SCRIPTS -->
		<script src="../../assets/global/scripts/metronic.js"
			type="text/javascript"></script>
		<script src="../../assets/admin/layout/scripts/layout.js"
			type="text/javascript"></script>
		<script src="../../assets/admin/layout/scripts/quick-sidebar.js"
			type="text/javascript"></script>
		<script src="../../assets/admin/layout/scripts/demo.js"
			type="text/javascript"></script>
		<script src="../../assets/global/scripts/datatable.js"></script>
		<script
			src="../../assets/admin/pages/scripts/ecommerce-products-edit.js"></script>
		<script src="../../assets/admin/pages/scripts/maps-google.js"
			type="text/javascript"></script>
		<!-- END PAGE LEVEL SCRIPTS -->
		<script>
		CKEDITOR.replace('ck'); <!-- cai nay thoi la dc, no thay ckeditor voi id="ck" -->
		$(document).ready(function() {
			Metronic.init(); // init metronic core components
			Layout.init(); // init current layout
			QuickSidebar.init(); // init quick sidebar
			Demo.init(); // init demo features
			EcommerceProductsEdit.init();
			MapsGoogle.init();
			
		});
		
	</script>
		<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>