<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Board</title>
<link rel="stylesheet" href="resources/css/style.css">
<link href="resources/css/modal.css" rel="stylesheet">
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
	<div class="container" style="padding-top: 50px; padding-bottom: 50px">
		<div class="container-fluid">
			<div class="table-responsive text-center">
				<table class="table table-hover">
					<thead style="background-color:black;">
						<tr scope="col" style="color:white;">
							<th scope="col">No</th>
							<th scope="col">Title</th>
							<th scope="col">Content</th>
							<th scope="col">Name</th>
							<th scope="col">Date</th>
							<th scope="col">Hit</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>2</td>
							<td>2</td>
							<td>2</td>
							<td>2</td>
							<td>2</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>3</td>
							<td>3</td>
							<td>3</td>
							<td>3</td>
							<td>3</td>
						</tr>
					</tbody>
				</table>
				<hr />
				<div class="row">
				<div class="col-8 col-xs-8 col-sm-8 col-md-8">
						<ul class="pagination pagination-sm">
							<li class="page-item disabled"><a class="page-link" href="#"
								tabindex="-1">Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item active"><a class="page-link" href="#">2
									<span class="sr-only">(current)</span>
							</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a>
							</li>
						</ul>
				</div>
						<div class="col-4 col-xs-4 col-sm-4 col-md-4">
					<a class="btn btn-light float-right">write</a>
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
</body>

</html>