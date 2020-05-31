<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServletPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成功</title>
</head>
<body>
	<h3 style="text-align: center;">您好！您的订单号：<c:out value="${dingdanId}"></c:out><br/>物流状态：<c:out value="${type}"></c:out></h3>
	<a href="<%=path%>/toIndex.action" style="text-align:center;"> 返回首页</a>
</body>
</html>