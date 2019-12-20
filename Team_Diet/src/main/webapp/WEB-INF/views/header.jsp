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
   <nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-black" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger"style="font-size:35px;" href="/">Logo-img</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
        aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto ">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/">HOME</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/board/schedule?userno=${login.userno}">SCHEDULE</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/board/list">BOARD</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/user/mypage?id=${login.dtid }">MY PAGE</a></li>
					<c:if test="${login.dtid==null and naverId==null}">
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="join">JOIN</a></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="/login">LOGIN</a></li>
					</c:if>
					<c:if test="${login.dtid != null or naverId!=null}">
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="/user/mypage">${login.dtid } ${naverId }</a></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="/user/logout">LOGOUT</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>

  <!-- <img src="KakaoTalk_20191212_092336193.jpg" id="bg" alt=""> -->




</body>
</html>