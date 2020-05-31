<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServletPath();
%>
<!DOCTYPE HTML>
<html>
<head>
<title>物流首頁</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<script type="text/javascript" src="js/cityselect.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/cityselect.css">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 






</script>
<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Dancing+Script:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300'
	rel='stylesheet' type='text/css'>
<!-- Google Font link ends-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
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
					<h4 class="modal-title" id="myModalLabel">单号查询</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="id">物流单号：</label> <input type="text"
							class="form-control" id="id" placeholder="请输入物流单号"> <br />
						<button type="button" class="btn" onclick="findExpessById()">查询</button>
						<script type="text/javascript">
								function findExpessById() {
									var id = $("#id").val();
									var pattern = /^[0-9]{18}/;
									console.log(pattern.test(id));
									if(pattern.test(id)){
										$.ajax({
											url:'<%=path%>'+"/express/findExpressById.action",
											data:{"id":id},
											dataType:"json",
											success: function (e) {
												alert("尊敬的用户：\n您好\n\t您的订单号为："+e.id+"，\n发送地址与发送人为："+e.fromlocation+"，\n收货人联系方式是："+e.phone+"，\n状态为："+e.type);
											}
										});
									} else {
										alert("请输入合适的订单号");
									}
									
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
	<!-- Moda2 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">我要发货</h4>
				</div>
				<div class="modal-body">
					<form id="fm1" action="<%=path%>/express/addExpress.action"
						method="get">
						<div class="demo">
							<!-- 在输入框加入id -->
							<input type="hidden" name="fromlocation" id="rfromlocation">
							<label for="fromlocation">寄发城市</label> <input type="text"
								class="cityinput" id="fromlocation" placeholder="请输入寄发地">
							<label for="fromlocation">寄发详细地址</label> <input type="text"
								class="cityinput" name="fromdetal" id="fromdetal"
								style="width: 300px;" placeholder="请输入详细地址"><br> <span
								id="fromlabel" style="color: red;"></span> <br> <span
								id="fromlabel1" style="color: red;"></span> <br> <label
								for="fromlocation">寄发人</label> <input type="text"
								class="cityinput" name="fromname" id="fromname"
								placeholder="请输入寄发人"> <label for="fromlocation">寄发人电话</label>
							<input type="text" class="cityinput" name="phone" id="fromphone"
								style="width: 300px;" placeholder="请输入寄发人电话">
						</div>
						<div class="demo" style="text-align: center;">
							<span style="">寄<br> <br>收
							</span>
						</div>
						<div class="demo">
							<!-- 在输入框加入id -->
							<input type="hidden" name="tolocation" id="rtolocation">
							<label for="tolocation">收件城市</label> <input type="text"
								class="cityinput" id="tolocation" placeholder="请输入目的地">
							<label for="fromlocation">收件人详细地址</label> <input type="text"
								class="cityinput" name="todetal" id="todetal"
								style="width: 300px;" placeholder="请输入详细地址"><br> <span
								id="tolabel" style="color: red;"></span> <br> <span
								id="tolabel1" style="color: red;"></span> <br> <label
								for="fromlocation">收件人</label> <input type="text"
								class="cityinput" name="toname" id="toname" placeholder="请输入收件人">
							<label for="fromlocation">收件人电话</label> <input type="text"
								class="cityinput" name="tophone" id="tophone"
								style="width: 300px;" placeholder="请输入收件人电话">
						</div>
						<br />
						<button onclick="fmsub()"
							style="color: #fff; background-color: #4B95FF; border-color: #2a75fe; border-radius: 5px; height: 45px; width: 100%">发送快递</button>
					</form>
					<script type="text/javascript">
					var test1 = new Vcity.CitySelector({
						input : 'fromlocation'
					});
					var test = new Vcity.CitySelector({
						input : 'tolocation'
					});
					function fmsub(){
						var fromlocation = $('#fromlocation').val();
						var fromdetal = $("#fromdetal").val();
						var fromname = $("#fromname").val();
						var fromphone = $("#fromphone").val();
						var tolocation = $("#tolocation").val();
						var todetal = $("#todetal").val();
						var toname = $("#toname").val();
						var tophone = $("#tophone").val();
						if(fromlocation==""||fromdetal==""){
							$("#fromlabel").html("寄发地或寄发详细地址不能为空");
							return;
						}
						$("#fromlabel").html("");
						if(fromname==""||fromphone==""){
							$("#fromlabel1").html("寄发人或寄发人手机号不能为空");
							return;
						}$("#fromlabel1").html("");
						if(tolocation==""||todetal==""){
							$("#tolabel").html("收货地或收货详细地址不能为空");
							return;
						}$("#tolabel").html("");
						if(toname==""||tophone==""){
							$("#tolabel1").html("收货人或收货人手机号不能为空");
							return;
						}$("#tolabel1").html("");
						var rfromlocation = fromlocation+fromdetal+fromname;
						$("#rfromlocation").val(rfromlocation);
						var rtolocation = tolocation+todetal+toname+"收"+tophone;
						$("#rtolocation").val(rtolocation);
						$("#fm1").submit();
					}
					</script>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Moda3 -->
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">注册账号</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="usname">注册账号：</label> <input type="text"
							class="form-control" id="usname" placeholder="请输入注册"> <br />
						<label for="uspassword">密码：</label> <input type="text"
							class="form-control" id="uspassword" placeholder="请输入密码">
						<br /> <label for="qpassword">确认密码：</label> <input type="text"
							class="form-control" id="qpassword" placeholder="请输入确认密码">
						<br />
						<button type="button" class="btn" onclick="addDenglu()">注册</button>
						<script type="text/javascript">
						function addDenglu() {
							var usname = $("#usname").val();
							var uspassword = $("#uspassword").val();
							var qpassword = $("#qpassword").val();
							if(usname==""||usname==null){
								alert("账号不能为空");
								return;
							} 
							if(uspassword==""||uspassword==null){
								alert("密码不能为空");
								return;
							} 
							if(qpassword==""||qpassword==null){
								alert(qpassword);
								alert("确认密码不能为空");
								return;
							} 
							else if(qpassword!=uspassword){
								alert(qpassword);
								alert("两次密码不一致");
								return;
							} 
									$.ajax({
										url:'<%=path%>'+"/denglu/addDenglu.action",
										data:{"name":usname,"password":uspassword},
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
	<!-- Moda3 -->
	<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">申请合作</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="com">合作公司：</label> <input type="text"
							class="form-control" id="com" placeholder="请输入合作公司"> <br />
						<label for="usernames">申请人：</label> <input type="text"
							class="form-control" id="usernames" placeholder="请输入申请人">
						<br /> <label for="phone">申请人联系方式：</label> <input type="text"
							class="form-control" id="phone" placeholder="请输入申请人联系">
						<br />
						<button type="button" class="btn" onclick="addShenqing()">申请</button>
						<script type="text/javascript">
						function addShenqing() {
							var com = $("#com").val();
							var usernames = $("#usernames").val();
							var phone = $("#phone").val();
							if(usname==""||usname==null){
								alert("合作公司不能为空");
								return;
							} 
							if(uspassword==""||uspassword==null){
								alert("申请人不能为空");
								return;
							} 
							if(qpassword==""||qpassword==null){
								alert("申请人联系不能为空");
								return;
							} 
									 $.ajax({
										url:'<%=path%>'+"/chaxun/addChaxun.action",
										data:{"usernames":usernames,"phone":phone,"com":com},
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
	<!-- Header starts here-->
	<div class="header">
		<div class="container">
			<div class="header-top">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt="物流系统"></a>
				</div>
				<span class="menu"></span>
				<div class="clear"></div>
				<div class="navigation">
					<ul class="navig">
						<li class="active"><a href="<%=path%>/toIndex.action">首页</a></li>
						<li><a href="#about" class="scroll">详细查询</a></li>
						<li><a href="#service" class="scroll">时效</a></li>
						<li><a href="#features" class="scroll">合作伙伴</a></li>
						<li><a href="#contact" class="scroll">建议</a></li>
						<%-- <c:if test="${sessionScop.denglu == null}">style="display: none;"</c:if> --%>
						<li class="bold" id="dl"><a href="#">登录</a></li>
						<li class="logout" id = "logout" style="display: none;"><a href="<%=path%>/toIndex.action">退出</a></li>
						<%-- <c:if test="${sessionScope.denglu != null}">
							<li class=""><a href="#">你好<c:set
										value="${sessionScope.denglu.name}" /></a></li>
						</c:if> --%>
					</ul>
				</div>
				<script>
					$("span.menu").click(function() {
						$("ul.navig").slideToggle("slow", function() {
							// Animation complete.
						});
					});
				</script>

				<div class="clearfix"></div>
			</div>
			<!-- Log In a BoX -->
			<div class="login" id="dlk">
				<div class="text">
					<input type="text" placeholder="账号" id="name" required=""
						name="name" />
				</div>
				<div class="text">
					<input type="password" placeholder="密码" id="password" required=""
						name="password" />
				</div>
				<div class="text">
					<input type="submit" value="登录" onclick="login()" /> <a
						data-toggle="modal" data-target="#myModal3" style="font-size: 8px">没有账号？注册</a>
				</div>
				<script>
					$("ul.navig li.bold a").click(function() {
						$(".login").slideToggle("slow", function() {
							// Animation complete.
						});
					});
					function login() {
						var name = $("#name").val();
						var password = $("#password").val();
						var obj1 = document.getElementById("dl");
						var obj2 = document.getElementById("dlk");
						var obj3 = document.getElementById("logout");
						$.ajax({
							url : '<%=path%>' + "/denglu/login.action",
							data : {
								"name" : name,
								"password" : password
							},
							dataType : "json",
							success : function(e) {
								alert(e.messages);
								if (e.success) {
									var denglu = '<%=session.getAttribute("denglu")%>';
								    if(denglu != null){
								    	obj1.style.display = "none";
								    	obj2.style.display = "none";
								    	obj3.style.display = "";
								    }
								   <%--  window.location = '<%=path%>'
										+ "/toIndex.action"; --%>
								}
							}
						});

					}
				</script>
			</div>
			<!-- Log In a BoX -->
			<div class="banner">
				<div class="row banner-row">
					<div class="col-md-6 banner-row-left">
						<img src="images/ban-mat1.png" />
					</div>
					<div class="col-md-6 banner-row-left banner-row-right">
						<h2>中国物流</h2>
						<p>中国物流股份有限公司致力于为国内外广大客户提供现代物流服务、
							公路运输和铁路集装箱全程门到门运输和代理、企业供应链管理、综合 物流中心管理、国际集装箱多式联运等综合服务。公司在全国主要交通
							枢纽城市设有分支机构40余家，现有集装箱堆场面积120多万平方米，
							各种运输车辆1000余台，仓库20多万平方米，另有9条铁路专用线和若
							干公路配货网点。在内地重点城市重庆、成都、常州、武汉、乌鲁木齐、 霍尔果斯等地均建有大型集装箱中转站，在沿海主要港口设立了集装箱
							进出口中转代理机构。</p>
						<div class="buttons">
							<button type="button" class="btn btn-primary btn-lg"
								data-toggle="modal" data-target="#myModal1">查询单号</button>
							<button type="button" class="btn btn-primary btn-lg"
								data-toggle="modal" data-target="#myModal2">我要发货</button>
						</div>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Header ends here-->
	<!-- About starts here-->
	<div class="about" id="about">
		<div class="container">
			<div class="row about-content">
				<div class="col-md-7 about-left-content">
					<h3>详细查询</h3>
					<!-- <p>详细查询</p> -->
				</div>
				<div class="col-md-5 about-right-content">
					<img src="images/about-mat.png" />
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="about-us">
			<div class="container">
				<div class="row about-below-content">
					<label for="fromlocation">城市名</label> <input type="text"
						class="form-control" placeholder="请输入城市" id="fromlocations" /> <br>
					<label for="ides">订单号</label> <input type="text"
						class="form-control" placeholder="请输订单号" id="ides" /> <br> <a
						class="btn btn-primary btn-lg" onclick="showdiv('ycbc')">查询</a>
					<div id="ycbc" style="display: none">
						<table class="table table-hover" id="tb">
							<tr>
								<th>订单号</th>
								<th>收货地址与收货人</th>
								<th>发送地址与发送人</th>
								<th>收货人联系方式</th>
								<th>订单状态</th>
							</tr>
							<!-- 不用管 -->
							<tr>
								<td>订单号</td>
								<td>收货地址与收货人</td>
								<td>发送地址与发送人</td>
								<td>收货人联系方式</td>
								<td>订单状态</td>
							</tr>
						</table>
					</div>
					<div class="clearfix"></div>
					<script type="text/javascript">
					function showdiv(a){
				        var obj = document.getElementById(a);
				        var fromlocation = $("#fromlocations").val();
				        var id = $("#ides").val();
				        if (fromlocation == null) {
				        	alert("请输入城市名称");
				        	return;
						} 
				        if(id == null){
				        	alert("请输入订单号");
				        	return;
				        }
				        if(obj.style.display==""){
				        	obj.style.display = "none";  
				        }else{
				        	obj.style.display = "";
				        	$.ajax({
				        		url:'<%=path%>'+"/express/findExpessByfrom.action",
				        		data:{"fromlocation":fromlocation,"id":id},
				        		dataType:"json",
				        		success: function (e) {
				        			console.log(e);
				        			 $('#tb tr:gt(0)').remove();
				        			var s = '';
				        			 for(var i = 0; i < e.length; i++) s += '<tr><td>'+ e[i].id + 
				        			'</td><td>'+ 
				        			e[i].fromlocation + '</td>'+'<td>'+ e[i].tolocation + 
				        			'</td><td>'+ e[i].phone + '</td><td>'+ e[i].type +'</td></tr>';
				        			$('#tb').append(s);
								}
				        	});
				        }       
				}
					</script>
				</div>
			</div>
		</div>
	</div>
	<div class="about-us">
		<div class="container">
			<div class="row about-below-content">
				<label for="fromlocation">快递公司名</label> <input type="text"
					class="form-control" placeholder="请输入快递公司" id="company" /> <br>
				<label for="kuaiid">订单号</label> <input type="text"
					class="form-control" placeholder="请输入订单号" id="kuaiid" /> <br> <a
					class="btn btn-primary btn-lg" onclick="showdiv1('ycbc1')">查询</a>
				<div id="ycbc1" style="display: none">
					<table class="table table-hover" id="tb1">
						<tr>
							<th>订单号</th>
							<th>收货地址与收货人</th>
							<th>发送地址与发送人</th>
							<th>收货人联系方式</th>
							<th>订单状态</th>
						</tr>
						<!-- 不用管 -->
						<tr>
							<td>订单号</td>
							<td>收货地址与收货人</td>
							<td>发送地址与发送人</td>
							<td>收货人联系方式</td>
							<td>订单状态</td>
						</tr>
					</table>
				</div>
				<div class="clearfix"></div>
				<script type="text/javascript">
					function showdiv1(a){
				        var obj = document.getElementById(a);
				        var company = $("#company").val();
				        var id = $("#kuaiid").val();
				        if (company == null) {
				        	alert("请输入快递公司");
				        	return;
						} 
				        if(id == null){
				        	alert("请输入订单号");
				        	return;
				        }
				        if(obj.style.display==""){
				        	obj.style.display = "none";  
				        }else{
				        	obj.style.display = "";
				        	$.ajax({
				        		url:'<%=path%>'+"/express/findExpessBycompany.action",
				        		data:{"company":company,"id":id},
				        		dataType:"json",
				        		success: function (e) {
				        			console.log(e);
				        			 $('#tb1 tr:gt(0)').remove();
				        			var s = '';
				        			 for(var i = 0; i < e.length; i++) s += '<tr><td>'+ e[i].id + 
				        			'</td><td>'+ 
				        			e[i].fromlocation + '</td>'+'<td>'+ e[i].tolocation + 
				        			'</td><td>'+ e[i].phone + '</td><td>'+ e[i].type +'</td></tr>';
				        			$('#tb1').append(s);
								}
				        	});
				        }       
				}
					</script>
			</div>
		</div>
	</div>
	<!-- About ends here-->
	<!-- Slide starts here-->
	<div class="slider-start" id="service">
		<div class="container">

			<div class="slider-content">
				<div class="slider-heading">
					<h3>时效价格查询</h3>
					<p>物流的概念最早是在美国形成的，起源于20世纪30年代， 原意为“实物分配”或“货物配送”。1963年被引入日本，日文
						意思是“物的流通”。20世纪70年代后，日本的“物流”一词逐 渐取代了“物的流通”。</p>
				</div>
				<div class="wmuSlider example1">
					<article style="position: absolute; width: 100%; opacity: 0;">

						<div class="banner">
							<img src="images/layer-image1.png" alt="" />
						</div>
					</article>
					<article style="position: relative; width: 100%; opacity: 1;">

						<div class="banner">
							<img src="images/layer-image.png" alt="" />
						</div>
					</article>
					<article style="position: absolute; width: 100%; opacity: 0;">

						<div class="banner">
							<img src="images/layer-image2.png" alt="" />
						</div>
					</article>

				</div>
				<div class="about-us">
					<div class="container">
						<div class="row about-below-content">
							<label for="fromlocation">发货城市名：</label> <input type="text"
								placeholder="请输入发货城市" id="fromlocationes" /> <br> <label
								for="tolocation">收货城市名：</label> <input type="text"
								placeholder="请输入收货城市" id="tolocations" /> <br> <label
								for="zl">质量（斤）：</label> <input type="text" placeholder="请输入质量"
								id="zl" /> <br> <a class="btn btn-primary btn-lg"
								onclick="findWangdian()">查询</a>
							<script type="text/javascript">
								function findWangdian() {
									var fromlocation = $("#fromlocationes").val();
									var tolocation = $("#tolocations").val();
									var zl = $("#zl").val();
									var jg = null;
									$.ajax({
										url:'<%=path%>'+"/wangdian/findWangdian.action",
										data:{"fromlocation":fromlocation,"tolocation":tolocation},
										dataType:"json",
										success: function (e) {
											jg = zl * e.jg;
											alert("从"+e.cfd+"到"+e.jsd+"共"+e.sj);
											alert(zl+"斤，所用费用为"+jg+"元");
										}
									});
								}
							</script>
						</div>
					</div>
				</div>
			</div>
			<script src="js/jquery.wmuSlider.js"></script>
			<script>
				$('.example1').wmuSlider();
			</script>
		</div>
	</div>
	</div>
	</div>
	</div>
	<!-- Slide ends here-->
	<div class="container">
		<div class="testimonals" id="features">
			<div class="slide-content-class3">
				<h3>合作伙伴</h3>
			</div>
			<div class="row slide-content-class4">
				<div class="col-md-6 slide-content-class4-left">
					<i class="ser-a"></i>
					<div class="services-column-row-left">
						<h3>邮政</h3>
						<p>邮政，是由国家管理或直接经营寄递各类邮件（信件或物品） 的事业，具有通政通商通民的特点。邮政是一种生产力，如《载
							敬堂集》载：“函信会议，借国家邮政力以通函形式交通信息，达 到交换意见、集中议题、办理事务等目的的会议。”1896年3月20
							日清朝光绪皇帝在“兴办大清邮政”的奏折御笔朱批，正式批准开 办大清邮政官局，中国近代邮政由此诞生。</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 slide-content-class4-left">
					<i class="ser-b"></i>
					<div class="services-column-row-left">
						<h3>韵达</h3>
						<p>韵达快递，是集快递、物流、电子商务配送和仓储服务为一体的 全国网络型品牌快递企业，创立于1999年8月 ，总部位于中国
							上海 ，服务范围覆盖国内31个省（区、市）及港澳台地区</p>
					</div>
				</div>
			</div>
			<div class="row slide-content-class4">
				<div class="col-md-6 slide-content-class4-left">
					<i class="ser-c"></i>
					<div class="services-column-row-left">
						<h3>百世</h3>
						<p>百世快运”成立于2003年，是一家在国内率先运用信息化手段 探索快递行业转型升级之路的大型民营快递公司，对快递的派送
							流程实行条码扫描和运单核对的方式，为用户提供精准的速递服 务。</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 slide-content-class4-left">
					<i class="ser-d"></i>
					<div class="services-column-row-left">
						<h3>顺丰</h3>
						<p>顺丰是国内的快递物流综合服务商，经过多年发展，已初步建 立为客户提供一体化综合物流解决方案的能力，不仅提供配送端的
							物流服务，还延伸至价值链前端的产、供、销、配等环节，从消费 者需求出发，以数据为牵引，利用大数据分析和云计算技术，为客
							户提供仓储管理、销售预测、大数据分析、金融管理等一揽子解决 方案。</p>
					</div>
				</div>
			</div>
			<div class="row slide-content-class4">
				<div class="col-md-6 slide-content-class4-left">
					<i class="ser-e"></i>
					<div class="services-column-row-left">
						<h3>圆通</h3>
						<p>上海圆通速递有限公司有各类运输车辆千余辆，员工3万余名，
							服务覆盖全国500多个城市。成立于2000年5月28日。经过20年的 精心打造，现已成为集速递、物流、电子商务为一体的大型民营
							企业。公司总部位于上海市青浦区华新镇。数年来，公司业务迅 速发展，网络覆盖中国各个城市</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 slide-content-class4-left">
					<i class="ser-f"></i>
					<div class="services-column-row-left">
						<h3>京东</h3>
						<p>京东快递是京东物流的服务之一。京东拥有中国电商领域规模最 大的物流基础设施，拥有中小件、大件、冷藏冷冻仓配一体化物流
							设施。</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="about-us">
		<div class="container">
			<div class="row about-below-content">
				<a class="btn btn-primary btn-lg" data-toggle="modal"
					data-target="#myModal4">申请合作</a>
			</div>
		</div>
	</div>
	<!-- Contact start-->
	<div class="contact" id="contact">
		<div class="container">
			<div class="row contact-row">
				<div class="col-md-6 contact-row-left">
					<h3>网站建设意见</h3>
					<p>建议，是个人或团体，对某件事情未来要如何的操作， 提出的解决问题的办法。又指通常是在适当的时候指针对
						一个人或一件事的客观存在，提出自己合理的见解或意见， 使其具备一定的改革和改良的条件，使其向着更加良好的、
						积极的方面去完善和发展，是有益处的。出处魏巍《东方》 第三部第十三章：“她的建议立刻得到热烈的响应。”</p>
					<p class="add-mark">
						<span><img src="images/ad-sy.png" /></span>北京市海淀区光明大道36号甲级写字楼
					</p>
					<p class="cel-mark">
						<span><img src="images/cel-sy.png" /></span>0888-7738-21 /
						0977-333-222-111
					</p>
					<p class="ema-mark">
						<span><img src="images/ema-sy.png" /></span><a
							href="mailto:example@mail.com">zhongguowuliu@montes.com</a>
					</p>
				</div>
				<div class="col-md-6 contact-row-right">
					<div class="form-row1">
						<input type="text" placeholder="账号" required="" id="uname" /> <input
							type="text" placeholder="E-Mail" required="" id="eMail" />
					</div>
					<div class="form-row2">
						<select id="title">
							<option>请选择</option>
							<option value="建议">建议</option>
							<option value="反馈">反馈</option>
						</select>
					</div>

					<textarea placeholder="留言框" required="" id="liuyan"></textarea>
					<div class="form-row3">
						<input type="submit" onclick="addliuyan()" />
					</div>
					<script type="text/javascript">
						function addliuyan() {
							var name = $("#uname").val();
							var eMail = $("#eMail").val();
							var title = $("#title").val();
							var liuyan = $("#liuyan").val();
							$.ajax({
								url:'<%=path%>'+ "/liuyanban/addLiuyan.action",
								data : {
									"name" : name,
									"eMail" : eMail,
									"title" : title,
									"liuyan" : liuyan
								},
								dataType : "json",
								success : function(e) {
									alert(e.messages);
									if(e.success){
										 window.location = '<%=path%>'+ "/toIndex.action";
									}
								}
							});

						}
					</script>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<!-- Contact End-->
	<!--FOOTER START-->
	<div class="footer">
		<div class="container">
			<div class="footer-top">
				<p style="color: black;">
					2020 &copy; <a href="https://mail.qq.com/3431193795@qq.com">jerrymouse</a>&trade;<a style="color: black;"
						href="<%=path%>/toLogin.action">管理员</a>
				</p>
			</div>
			<script type="text/javascript">
				$(document).ready(function() {
					/*
					var defaults = {
						containerID: 'toTop', // fading element id
						containerHoverID: 'toTopHover', // fading element hover id
						scrollSpeed: 1200,
						easingType: 'linear' 
					};
					 */

					$().UItoTop({
						easingType : 'easeOutQuart'
					});

				});
			</script>
			<a href="#" id="toTop" style="display: block;"> <span
				id="toTopHover" style="opacity: 1;"> </span></a>

		</div>
	</div>
	<!--FOOTER END-->
</body>
</html>
