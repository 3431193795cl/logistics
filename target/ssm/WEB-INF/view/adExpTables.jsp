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

<title>物流订单管理</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="css/sb-admin.css" rel="stylesheet">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
</head>

<body>
	<!-- Modal -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">分配快递</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<input type="hidden" id="gid" /> <label for="id">快递公司选择：</label>
						<select id="company" name="select">
							<option>请选择</option>
							<option value="邮政">邮政</option>
							<option value="韵达">韵达</option>
							<option value="百世">百世</option>
							<option value="顺丰">顺丰</option>
							<option value="圆通">圆通</option>
							<option value="京东">京东</option>
						</select><br />
						<button class="btn" onclick="updateExp()">分配</button>
						<script type="text/javascript">
								function getId(id) {
									alert(id);
									$("#gid").val(id);
								}
								function updateExp() {
									var id=$("#gid").val();
									alert(id);
									var company = $("#company").val();
									$.ajax({
										url:'<%=path%>'+"/express/updateExp.action",
										data:{"id":id,"company":company},
										dataType:"json",
										success: function (e) {
											alert(e.messages);
										}
									});
								}
							</script>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
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
						物流订单管理<small>LogisticsOrderManager</small>
					</h1>
					<ol class="breadcrumb">
						<li><a href="index.html"><i class="fa fa-dashboard"></i>
								LogisticsOrderManager</a></li>
						<li class="active"><i class="fa fa-table"></i> 物流订单管理</li>
					</ol>
					<!-- <div class="alert alert-info alert-dismissable">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						物流訂單 <a class="alert-link" href="#">LogisticsOrderManager</a>
						物流訂單查詢
					</div> -->
				</div>
			</div>
			<!-- /.row -->
			<h2>物流订单查询</h2>
			<div class="table-responsive">
				<table class="table table-bordered table-hover tablesorter">
					<thead>
						<tr>
							<th>订单号<i class="fa fa-sort"></i></th>
							<th>收货地址与收货人<i class="fa fa-sort"></i></th>
							<th>发送地址与发送人<i class="fa fa-sort"></i></th>
							<th>收货人联系方式<i class="fa fa-sort"></i></th>
							<th>订单状态<i class="fa fa-sort"></i></th>
							<th>操作 <i class="fa fa-sort"></i></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="ex" items="${exp}">
							<tr>
								<td id="id"><c:out value="${ex.id}" /></td>
								<td><c:out value="${ex.fromlocation}" /></td>
								<td><c:out value="${ex.tolocation}" /></td>
								<td><c:out value="${ex.phone}" /></td>
								<td><c:out value="${ex.type}" /></td>
								<td>
									<button class="btn" data-toggle="modal" data-target="#myModal1"
										onclick="getId('<c:out value="${ex.id}" />')">分配快递</button>
									<button class="btn"
										onclick="deleExp('<c:out value="${ex.id}" />')">刪除</button>
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
		function deleExp(id) {
			if(confirm("确定要删除这条订单吗？")){
				$.ajax({
					url:'<%=path%>'+"/express/deleExp.action",
					data:{"id":id},
					dataType:"json",
					success: function (e) {
						alert(e.messages);
						window.location = '<%=path%>'+ "/toAdExpTables.action";
							}
						});
			} else {
				alert("已取消");
			}
		}
	</script>
</body>
</html>