<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>NAVER LOGIN TEST</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>

<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap"
	rel="stylesheet">
	<link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet"
	type="text/css" />
	<link href="/resources/plugins/iCheck/square/blue.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<h1>Login Form</h1>
	<hr>
	<br>
	<center>
<%-- 		<c:choose> --%>
<%-- 			<c:when test="${sessionId != null}"> --%>
<!-- 				<h2>네이버 아이디 로그인 성공하셨습니다!!</h2> -->
<%-- 				<h3>'${sessionId}' 님 환영합니다!</h3> --%>
<!-- 				<h3> -->
<!-- 					<a href="logout">로그아웃</a> -->
<!-- 				</h3> -->
<%-- 			</c:when> --%>
<%-- 			<c:otherwise> --%>


<!-- Bootstrap 3.3.4 -->
<!-- <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> -->
<!-- Font Awesome Icons -->
<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" /> -->
<!-- Theme style -->
<link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet"
	type="text/css" />
<!-- iCheck -->
<link href="/resources/plugins/iCheck/square/blue.css" rel="stylesheet"
	type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>

<body class="login-page">
	<div class="login-box" style="margin-top: 5px; margin-bottom:400px;">
		<div class="login-logo">
			<a href="/"><b>DIET PROJECT</b></a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">Login with your ID</p>

			<form action="/user/loginPost" method="post">
				<div class="form-group has-feedback">
					<input type="text" name="id" class="form-control"
						placeholder="ID" /> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="pw" class="form-control"
						placeholder="Password" /> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-8 col-xs-8">
						<div class="checkbox icheck">
							<label style="float:left; margin-left:2px;"> <input type="checkbox" name="useCookie">
								로그인정보 기억하기
							</label>
						</div>
					</div>
					<!-- /.col -->
					
					<div class="col-4 col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">접속</button>
					</div>
					<!-- /.col -->
				</div>
			</form>


			<a href="#" style="text-align:left;">비밀번호를 잊었어요</a><br> <a href="register.html"
				class="text-center" style="text-align:left;">회원가입하기</a>
			<br>
			<div id="naver_id_login" style="text-align: center">
					<a href="${url}"> <img width="223"
						src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /></a>
				</div>
				<br>
		</div>
		<!-- /.login-box-body -->
	</div>
		
			
				<!-- 네이버 로그인 창으로 이동 -->
				
<%-- 			</c:otherwise> --%>
<%-- 		</c:choose> --%>
	</center>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<script src="/resources/js/weather.js"></script>
	<!-- jQuery 2.1.4 -->
	<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!-- Bootstrap 3.3.2 JS -->
	<script src="/resources/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<!-- iCheck -->
	<script src="/resources/plugins/iCheck/icheck.min.js"
		type="text/javascript"></script>
		<script>
		$(document).ready(function(){
			console.log("HIHI"+${url})
		})
		</script>
</html>

