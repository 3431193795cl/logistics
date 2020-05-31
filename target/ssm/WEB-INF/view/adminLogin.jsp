<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServletPath();
%>
<!DOCTYPE HTML>
<html lang="en" class="no-js">

<head>

<meta charset="utf-8">
<title>后台登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- CSS -->
<link rel='stylesheet'
	href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/supersized.css">
<link rel="stylesheet" href="css/style1.css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

</head>

<body>

	<div class="page-container">
		<h1>后台登录</h1>
		<form action="" method="post">
			<input type="text" name="username" class="username"
				placeholder="请输入用户名" id="username"> <input type="password"
				id="password" name="password" class="password" placeholder="请输入密码">
			<button type="submit" onclick="adLogin()">登录</button>
		</form>

	</div>
	<!-- Javascript -->
	<script src="js/jquery-1.8.2.min.js"></script>
	<script src="js/supersized.3.2.7.min.js"></script>
	<script src="js/supersized-init.js"></script>
	<script src="js/scripts.js"></script>
	<script type="text/javascript">
		function adLogin() {
			var username = $("#username").val();
			var password = $("#password").val();
			if(username == null){
				alert("请输入用户名");
				return;
			}
			if(password == null){
				alert("请输入密码");
				return;
			}
			$.ajax({
				url:'<%=path%>' + "/dengluguanli/adLogin.action",
				data : {
					"username" : username,
					"password" : password
				},
				dataType : "json",
				success : function(e) {
					alert(e.messages);
					if(e.success){
						window.location = '<%=path%>'
							+ "/toAdIndex.action";
					}else {
						window.location = '<%=path%>'
							+ "/toLogin.action";
					}
				}
			});
		}
	</script>
</body>

</html>