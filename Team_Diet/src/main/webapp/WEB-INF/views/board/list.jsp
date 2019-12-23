<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Board</title>
<link rel="stylesheet" href="/resources/css/style.css">
<link href="/resources/css/modal.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap"
	rel="stylesheet">
</head>

<!-- " -->

<body>
	<%@include file="../header.jsp"%>
	<%@include file="../footer.jsp"%>
	<header class="bg-mistyrose bg-text-white head">
		<div class="container text-center">
			<div id="js-clock" style="padding: 25px">
				<span>Board</span>
			</div>
		</div>
	</header>


	<div class="wrap">
		<div class='box'>
			


		<div class="container" style="padding-top: 50px; padding-bottom: 50px">
			<div class="container-fluid">
			<div class="box-header with-border">
				<h3 class="box-title">Board List</h3>
			</div>
			
			<div class='box-body float-right'>
				<select name="searchType">
					<option value="n"
						<c:out value="${cri.searchType == null?'selected':''}"/>>
						---</option>
					<option value="t"
						<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
						Title</option>
					<option value="c"
						<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
						Content</option>
					<option value="w"
						<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
						Writer</option>
					<option value="tc"
						<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
						Title OR Content</option>
					<option value="cw"
						<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
						Content OR Writer</option>
					<option value="tcw"
						<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
						Title OR Content OR Writer</option>
				</select> <input type="text" name='keyword' id="keywordInput"
					value='${cri.keyword }'>
				<button id='searchBtn'>Search</button>
			</div>
		</div>
				<div class="table-responsive text-center">
					<table class="table table-hover">
						<thead style="background-color: black;">
							<tr scope="col" style="color: white;">
								<th scope="col">No</th>
								<th scope="col">Title</th>
								<th scope="col">Content</th>
								<th scope="col">Name</th>
								<th scope="col">Date</th>
								<th scope="col">Hit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="list">
								<tr>
									<th scope="row">${list.boardNo }</th>
									<td><a href='/board/read?boardNo=${list.boardNo}'>${list.title }</a></td>
									<td>${list.content }</td>
									<td>${list.writer }</td>
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
											value="${list.writeDate}" /></td>
									<td>${list.viewCnt }</td>
								</tr>

								<%-- 								<tr>
									<td><a href='/sboard/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardVO.bno}'>
											${boardVO.title} <strong>[ ${boardVO.replycnt} ]</strong>
									</a></td> --%>
							</c:forEach>
						</tbody>
					</table>
					<hr />

					<div class="row">
						<div class="col-8 col-xs-8 col-sm-8 col-md-8">
							<ul class="pagination pagination-sm">
							<c:if test="${pageMaker.prev}">
								<li class="page-item">
								<a class="page-link" tabindex="-1" href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">Previous</a>
								</li>
							</c:if>
									
								<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li class="page-item"
								<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
								<a class="page-link" href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
								</c:forEach>
								
<!-- 								<li class="page-item active"><a class="page-link" href="#">2
										<span class="sr-only">(current)</span>
								</a></li> -->
								
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li class="page-item"><a class="page-link" href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">Next</a>
								
								</li>
								</c:if>
							</ul>
						</div>
						<div class="col-4 col-xs-4 col-sm-4 col-md-4">
							<a href="/board/write" class="btn btn-light float-right">write</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

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
	<script>
	$(document).ready(
			function() {

				$('#searchBtn').on(
						"click",
						function(event) {

							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});
			});
</script>
</body>

</html>