<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
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
		<form role="form" action="modifyPage" method="post">

			<input type='hidden' name='boardNo' value="${boardVO.boardNo}">
			<input type='hidden' name='page' value="${read.page}"> <input
				type='hidden' name='perPageNum' value="${read.perPageNum}">
			<input type='hidden' name='searchType' value="${read.searchType}">
			<input type='hidden' name='keyword' value="${read.keyword}">

		</form>
		<div class="container" style="padding-top: 50px; padding-bottom: 50px">
			<div class="container-fluid">
				<form role="form" method="post">
					<input type='hidden' name='boardNo' value="${boardVO.boardNo}">
				</form>
				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">Title</label> <input type="text"
							name='title' class="form-control" value="${boardVO.title}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Content</label>
						<textarea class="form-control" name="content" rows="3"
							readonly="readonly">${boardVO.content}</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Writer</label> <input type="text"
							name="writer" class="form-control" value="${boardVO.writer}"
							readonly="readonly">
					</div>
				</div>
				<div class="box-footer float-right">
					<button type="submit" class="btn btn-sm bg-mr modi">Modify</button>
					<button type="submit" class="btn btn-sm bg-mr remo">REMOVE</button>
					<button type="submit" class="btn btn-sm bg-mr lial">LIST</button>
				</div>

				<!-- Modal -->
				<div id="modifyModal" class="modal modal-primary fade" role="dialog">
					<div class="modal-dialog">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title"></h4>
							</div>
							<%--       <div class="modal-body" data-rno>
        <p><input type="text" id="replytext" class="form-control" value='${login.userid }' readonly></p>
      </div> --%>
							<div class="modal-footer">
								<button type="button" class="btn btn-info" id="replyModBtn">Modify</button>
								<button type="button" class="btn btn-danger" id="replyDelBtn">DELETE</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="container" >
			<div class="col-12 text-center">
				<div class="box box-success">
					<div class="box-header">
						<p class="box-title">ADD NEW REPLY</p>
					</div>
					<div class="row" style="padding-left:15px; padding-right:15px">
						<input
							class="form-control col-1 mr-2" type="text" placeholder="USER ID"
							id="newReplyWriter"><input class="form-control col-9" style="margin: 0px 10px;"type="text"
							placeholder="REPLY TEXT" id="newReplyText">
						<button type="button" class="btn btn-sm bg-mr p-2 col-1" style="margin-left:auto;"id="replyAddBtn">ADD</button>
					</div>
					<!-- /.box-body -->

				</div>


				<!-- The time line -->
				<ul class="timeline">
					<!-- timeline time label -->
					<li class="time-label" id="repliesDiv"><span class="bg-green">
							Replies List </span></li>
				</ul>

				<div class='text-center'>
					<ul id="pagination" class="pagination pagination-sm no-margin ">

					</ul>
				</div>

			</div>
			<!-- /.col -->
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<script src="/resources/js/weather.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
	<script id="template" type="text/x-handlebars-template">
{{#each .}}
<li class="replyLi" data-replyNo={{replyNo}}>
<i class="fa fa-comments bg-blue"></i>
 <div class="timeline-item container text-left border border-secondary rounded">
<span class="timeline-header"><strong>{{replyer}}</strong></span>
<span class="time"><small><small> {{prettifyDate writeDate}} </small></small></span>
     <a class="btn btn-sm bg-mr float-right mt-2" 
	    data-toggle="modal" data-target="#modifyModal">Modify</a>
<p class="timeline-body ml-4">{{replyText}} </p>  
  </div>			
</li>
{{/each}}
</script>

	<script>
		Handlebars.registerHelper("prettifyDate", function(timeValue) {
			var dateObj = new Date(timeValue);
			var year = dateObj.getFullYear();
			var month = dateObj.getMonth() + 1;
			var date = dateObj.getDate();
			return year + "/" + month + "/" + date;
		});

		var printData = function(replyArr, target, templateObject) {

			var template = Handlebars.compile(templateObject.html());

			var html = template(replyArr);
			$(".replyLi").remove();
			target.after(html);

		}

		var boardNo = ${boardVO.boardNo};
		/* ${boardVO.boardNo} */
		var replyPage = 1;

		function getPage(pageInfo) {

			$.getJSON(pageInfo, function(data) {
				printData(data.list, $("#repliesDiv"), $('#template'));
				printPaging(data.pageMaker, $(".pagination"));

				$("#modifyModal").modal('hide');

			});
		}

		var printPaging = function(pageMaker, target) {

			var str = "";

			if (pageMaker.prev) {
				str += "<li><a href='" + (pageMaker.startPage - 1)
						+ "'> << </a></li>";
			}

			for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
				var strClass = pageMaker.cri.page == i ? 'class=active' : '';
				str += "<li "+strClass+"><a href='"+i+"'>" + i + "</a></li>";
			}

			if (pageMaker.next) {
				str += "<li><a href='" + (pageMaker.endPage + 1)
						+ "'> >> </a></li>";
			}

			target.html(str);
		};

		$("#repliesDiv").on("click", function() {

			if ($(".timeline li").length > 1) {
				return;
			}
			getPage("/replies/" + boardNo + "/1");

		});

		$(".pagination").on("click", "li a", function(event) {

			event.preventDefault();

			replyPage = $(this).attr("href");

			getPage("/replies/" + boardNo + "/" + replyPage);

		});

		//리플
		$("#replyAddBtn").on("click", function() {

			var replyerObj = $("#newReplyWriter");
			var replytextObj = $("#newReplyText");
			var replyer = replyerObj.val();
			var replyText = replytextObj.val();

			$.ajax({
				type : 'post',
				url : '/replies/',
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					boardNo : boardNo,
					replyer : replyer,
					replyText : replyText
				}),
				success : function(result) {
					console.log("result: " + result);
					if (result == 'SUCCESS') {
						alert("등록 되었습니다.");
						replyPage = 1;
						getPage("/replies/" + boardNo + "/" + replyPage);
						replyerObj.val("");
						replytextObj.val("");
					}
				}
			});
		});
		//

		$(".timeline").on("click", ".replyLi", function(event) {

			var reply = $(this);

			$("#replyText").val(reply.find('.timeline-body').text());
			$(".modal-title").html(reply.attr("data-replyNo"));

		});

		$("#replyModBtn").on("click", function() {

			var replyNo = $(".modal-title").html();
			var replytext = $("#replytext").val();

			$.ajax({
				type : 'put',
				url : '/replies/' + replyNo,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "PUT"
				},
				data : JSON.stringify({
					replyText : replyText
				}),
				dataType : 'text',
				success : function(result) {
					console.log("result: " + result);
					if (result == 'SUCCESS') {
						alert("수정 되었습니다.");
						getPage("/replies/" + boardNo + "/" + replyPage);
					}
				}
			});
		});

		$("#replyDelBtn").on("click", function() {

			var replyNo = $(".modal-title").html();
			var replyText = $("#replyText").val();

			$.ajax({
				type : 'delete',
				url : '/replies/' + replyNo,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "DELETE"
				},
				dataType : 'text',
				success : function(result) {
					console.log("result: " + result);
					if (result == 'SUCCESS') {
						alert("삭제 되었습니다.");
						getPage("/replies/" + boardNo + "/" + replyPage);
					}
				}
			});
		});
	</script>

	<script>
		$(document).ready(function() {

			var formObj = $("form[role='form']");

			console.log(formObj);

			$(".modi").on("click", function() {
				formObj.attr("action", "/board/modify");
				formObj.attr("method", "get");
				formObj.submit();
			});

			$(".remo").on("click", function() {
				formObj.attr("method", "post");
				formObj.attr("action", "/board/remove");
				formObj.submit();
			});

			$(".lial").on("click", function() {
				formObj.attr("method", "get");
				formObj.attr("action", "/board/list");
				formObj.submit();
			});

		});
	</script>

	<script id="templateAttach" type="text/x-handlebars-template">
<li data-src='{{fullName}}'>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	</span>
  </div>
</li>                
</script>

	<!-- <script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);

	
	var boardNo = ${boardVO.boardNo};
	var template = Handlebars.compile($("#templateAttach").html());
	
	$.getJSON("/sboard/getAttach/"+boardNo,function(list){
		alert(list)
		$(list).each(function(){
			
			var fileInfo = getFileInfo(this);
			
			var html = template(fileInfo);
			
			 $(".uploadedList").append(html);
			
		});
	});
	
	

	$(".uploadedList").on("click", ".mailbox-attachment-info a", function(event){
		
		var fileLink = $(this).attr("href");
		
		if(checkImageType(fileLink)){
			
			event.preventDefault();
					
			var imgTag = $("#popup_img");
			imgTag.attr("src", fileLink);
			
			console.log(imgTag.attr("src"));
					
			$(".popup").show('slow');
			imgTag.addClass("show");		
		}	
	});
	
	$("#popup_img").on("click", function(){
		
		$(".popup").hide('slow');
		
	});	
	

	
});
</script> -->
</body>

</html>