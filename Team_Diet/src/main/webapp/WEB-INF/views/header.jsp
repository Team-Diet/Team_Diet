<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="out">
	<div id="header">
		<div class="header_top_wrap">
			<div class="header_top">
				<div class="right">
					<ul>
						<li>
						<form name="form" action="/order/orderlist" method="get">
						<input type="hidden" name="dtid" value="${login.dtid }">
						<a href="javascript:form.submit();">ORDER</a></form></li>
						<li><a href="/user/mypage?id=${login.dtid }">MY PAGE</a></li>
						<c:if test="${login.dtid==null }">
							<li><a href="join">JOIN</a></li>
							<li><a href="/user/login">LOGIN</a></li>
						</c:if>
						<c:if test="${login.dtid != null }">
							<li><a href="/user/logout">LOGOUT</a></li>
							<li><a href="/user/mypage">${login.dtid }</a></li>
							<li><a href="/order/cart?oid=${login.dtid }">CART</a></li>
						</c:if>
					</ul>
				</div>


			</div>
		</div>

	</div>
</body>
</html>