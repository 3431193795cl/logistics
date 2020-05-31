
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServletPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>后台首页</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="css/sb-admin.css" rel="stylesheet">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<!-- Page Specific CSS -->
<link rel="stylesheet" href="css/morris-0.4.3.min.css">
</head>

<body>

	<div id="wrapper">

		<!-- Sidebar -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<%=path%>/toAdIndex.action">中国物流后台管理系统</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav side-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i>
						功能管理 <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="<%=path%>/toAdExpTables.action">物流订单管理</a></li>
						<li><a href="<%=path%>/toAdshixiaoTables.action">时效管理</a></li>
						<li><a href="<%=path%>/toAdliuyanTables.action">留言管理</a></li>
						<li><a href="<%=path%>/toAdChaxunTables.action">申请管理</a></li>
					</ul></li>
			</ul>

			<ul class="nav navbar-nav navbar-right navbar-user">
				<li class="dropdown user-dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"><i
						class="fa fa-user"></i> ${sessionScope.guanli.name} <b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="<%=path%>/adLogout.action"><i
								class="fa fa-power-off"></i> 退出</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse --> </nav>
		<div class="copyrights">
			Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a>
		</div>
		<div id="page-wrapper">

			<div class="row">
				<div class="col-lg-12">
					<h1>
						物流 <small>Logistics</small>
					</h1>
					<ol class="breadcrumb">
						<li class="active"><i class="fa fa-dashboard"></i> 物流</li>
					</ol>
					<div class="alert alert-success alert-dismissable">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						返回首页<a class="alert-link" href="<%=path %>/toIndex.action">Return</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-bar-chart-o"></i> 物流订单量
							</h3>
						</div>
						<div class="panel-body">
							<div id="morris-chart-area"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- JavaScript -->
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>

	<!-- Page Specific Plugins -->
	<script src="js/raphael-min.js"></script>
	<script src="js/morris-0.4.3.min.js"></script>
	<script src="js/morris/chart-data-morris.js"></script>
	<script src="js/tablesorter/jquery.tablesorter.js"></script>
	<script src="js/tablesorter/tables.js"></script>

</body>
</html>