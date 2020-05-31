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

<title>时效管理</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="css/sb-admin.css" rel="stylesheet">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
</head>

<body>
	<!-- Moda3 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">保存时效</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="cfd">起始位置：</label> <input type="text"
							class="form-control" id="cfd" placeholder="请输入起始位置"> <br />
						<label for="jsd">抵达位置：</label> <input type="text"
							class="form-control" id="jsd" placeholder="请输入抵达位置"> <br />
						<label for="sj">所需天数：</label> <input type="text"
							class="form-control" id="sj" placeholder="请输入所需天数"> <br />
						<label for="zl">质量：</label> <input type="text"
							class="form-control" id="zl" placeholder="请输入质量"> <br />
						<label for="jg">价格：</label> <input type="text"
							class="form-control" id="jg" placeholder="请输入价格"> <br />
						<button type="button" class="btn" onclick="saveWang()">保存</button>
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
						时效管理<small>MessageBoardManager</small>
					</h1>
					<ol class="breadcrumb">
						<li><a href="index.html"><i class="fa fa-dashboard"></i>
								MessageBoardManager</a></li>
						<li class="active"><i class="fa fa-table"></i>时效管理</li>
					</ol>
					<!-- <div class="alert alert-info alert-dismissable">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						时效管理<a class="alert-link" href="#">MessageBoardManager</a> 时效查詢
					</div> -->
				</div>
			</div>
			<!-- /.row -->
			<button class="btn" data-toggle="modal" data-target="#myModal">新增时效</button>
			<h2>时效查询</h2>
			<div class="table-responsive">
				<table class="table table-bordered table-hover tablesorter">
					<thead>
						<tr>
							<th>起始地<i class="fa fa-sort"></i></th>
							<th>抵达地<i class="fa fa-sort"></i></th>
							<th>所需天数<i class="fa fa-sort"></i></th>
							<th>价格<i class="fa fa-sort"></i></th>
							<th>质量<i class="fa fa-sort"></i></th>
							<th>操作 <i class="fa fa-sort"></i></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="w" items="${wangdian}">
							<tr>
								<td id="id"><c:out value="${w.cfd}" /></td>
								<td><c:out value="${w.jsd}" /></td>
								<td><c:out value="${w.sj}" /></td>
								<td><c:out value="${w.jg}" /></td>
								<td><c:out value="${w.zl}" /></td>
								<td>
									<button class="btn"
										onclick="deleWang('<c:out value="${w.cfd}" />','<c:out value="${w.jsd}" />')">刪除</button>
									<button class="btn"
										onclick="findWangdian('<c:out value="${w.cfd}" />','<c:out value="${w.jsd}" />')"
										data-toggle="modal" data-target="#myModal">修改</button>
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
		function deleWang(cfd,jsd) {
			if(confirm("确定要删除这条时效吗？")){
				$.ajax({
					url:'<%=path%>'+"/wangdian/deleWang.action",
					data:{"cfd":cfd,"jsd":jsd},
					dataType:"json",
					success: function (e) {
						alert(e.messages);
						window.location = '<%=path%>'
								+ "/toAdshixiaoTables.action";
					}
				});
			} else {
				alert("已取消");
			}
		}
	</script>
	<script type="text/javascript">
						function saveWang() {
							var cfd = $("#cfd").val();
							var jsd = $("#jsd").val();
							var sj = $("#sj").val();
							var zl = $("#zl").val();
							var jg = $("#jg").val();
							if(cfd==""||cfd==null){
								alert("起始位置不能为空");
								return;
							} 
							if(jsd==""||jsd==null){
								alert("抵达位置不能为空");
								return;
							} 
							if(sj==""||sj==null){
								alert("所需天数不能为空");
								return;
							} 
							if(zl==""||zl==null){
								alert("质量不能为空");
								return;
							} 
							if(jg==""||jg==null){
								alert(qpassword);
								alert("价格不能为空");
								return;
							} 
							if(cfd != null || jsd != null){
								$.ajax({
									url:'<%=path%>'+"/wangdian/updateWang.action",
									data:{"cfd":cfd,"jsd":jsd,"sj":sj,"zl":zl,"jg":jg},
									dataType:"json",
									success: function (e) {
										alert(e.messages);
										window.location = '<%=path%>'
											+ "/toAdshixiaoTables.action";
									}
								});
							} else {
								$.ajax({
									url:'<%=path%>'+"/wangdian/addWang.action",
									data:{"cfd":cfd,"jsd":jsd,"sj":sj,"zl":zl,"jg":jg},
									dataType:"json",
									success: function (e) {
										alert(e.messages);
										window.location = '<%=path%>'
										+ "/toAdshixiaoTables.action";
									}
								});
							}
						}
							</script>
							<script type="text/javascript">
								function findWangdian(fromlocation,tolocation) {
									$.ajax({
										url:'<%=path%>'+"/wangdian/findWangdian.action",
										data:{"fromlocation":fromlocation,"tolocation":tolocation},
										dataType:"json",
										success: function (e) {
											$('#cfd').val(e.cfd);
											$('#jsd').val(e.jsd);
											$('#sj').val(e.sj);
											$('#zl').val(e.zl);
											$('#jg').val(e.jg);
											$('#myModal').modal(options);
										}
									});
								}
							</script>

</body>
</html>