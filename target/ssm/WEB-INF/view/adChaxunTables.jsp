<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="true" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServletPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>申请管理</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="css/sb-admin.css" rel="stylesheet">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
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
							class="fa fa-user"></i> <c:out
								value="${sessionScope.guanli.name}" /> <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="<%=path%>/adLogout.action"><i
									class="fa fa-power-off"></i> 退出</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>

		<div id="page-wrapper">

			<div class="row">
				<div class="col-lg-12">
					<h1>
						申请管理<small>MessageBoardManager</small>
					</h1>
					<ol class="breadcrumb">
						<li><a href="index.html"><i class="fa fa-dashboard"></i>
								MessageBoardManager</a></li>
						<li class="active"><i class="fa fa-table"></i>申请管理</li>
					</ol>
					<!-- <div class="alert alert-info alert-dismissable">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						申请管理<a class="alert-link" href="#">MessageBoardManager</a> 申请查詢
					</div> -->
				</div>
			</div>
			<!-- /.row -->
			<h2>申请查询</h2>
			<div class="table-responsive">
				<table class="table table-bordered table-hover tablesorter">
					<thead>
						<tr>
							<th>编号<i class="fa fa-sort"></i></th>
							<th>申请人<i class="fa fa-sort"></i></th>
							<th>公司名称<i class="fa fa-sort"></i></th>
							<th>申请人联系方式<i class="fa fa-sort"></i></th>
							<th>操作 <i class="fa fa-sort"></i></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="c" items="${chaxun}">
							<tr>
								<td id="id"><c:out value="${c.number}" /></td>
								<td><c:out value="${c.xingming}" /></td>
								<td><c:out value="${c.shoujihao}" /></td>
								<td><c:out value="${c.cfd}" /></td>
								<td>
									<button class="btn"
										onclick="deleLiu('<c:out value="${c.number}" />')">刪除</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->

	<!-- JavaScript -->
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>

	<!-- Page Specific Plugins -->
	<script src="js/tablesorter/jquery.tablesorter.js"></script>
	<script src="js/tablesorter/tables.js"></script>
	<script type="text/javascript">
		function deleLiu(number) {
			if(confirm("确定要删除这条申请吗？")){
				$.ajax({
					url:'<%=path%>'+"/chaxun/deleChaxun.action",
					data:{"number":number},
					dataType:"json",
					success: function (e) {
						alert(e.messages);
						window.location = '<%=path%>'
										+ "/toAdChaxunTables.action";
							}
						});
			} else {
				alert("已取消");
			}
		}
	</script>
</body>
</html>