<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
  <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css" >
  <link rel="stylesheet" type="text/css" href="/resources/css/pe-icon-7-stroke.css" >
  <script type="text/javascript" src="/resources/js/chart/Chart.bundle.min.js"></script>
	<script type="text/javascript" src="/resources/js/chart/Chart.min.js"></script>
</head>
<!-- style="background-color:black;" -->
<body>
  <div class="container" >
    <header>

      <h1>Header</h1>

    </header>
    <!-- 여기부터 캘린더 시작 -->
    <div style="width:300px;height:300px;">
    <canvas id="myChart" width="300" height="300"></canvas>
    </div>
    
	<!-- 여기까지 캘린더 -->
    <div class="sidebar">
      <div>
        <h2>Menu</h2>
        <ul id="sidelist">
          <li class="list-group-item"><a href="#">Home</a></li>
          <li class="list-group-item"><a href="#">Calendar</a></li>
          <li class="list-group-item"><a href="#">Hello</a></li>
          <li class="list-group-item"><a href="#">JavaScript</a></li>
          <li class="list-group-item"><a href="#">Copyright</a></li>
        </ul>
      </div>
    </div>
    <div id="footer">
      <p>Copyright</p>
    </div>
  </div>

  <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">x</span>
      </button>
      <div class="modal-body">
        <div class="social">
          <a href="https://www.facebook.com/devitems/?ref=bookmarks"><i class="fa fa-facebook"></i></a> <a
            href="https://twitter.com/devitemsllc"><i class="fa fa-twitter"></i></a> <a
            href="https://www.google.com/"><i class="fa fa-google-plus"></i></a> <a href="https://www.instagram.com/"><i
              class="fa fa-instagram"></i></a> <a href="https://www.pinterest.com/devitemsllc/"><i
              class="fa fa-pinterest"></i></a>
        </div>
      </div>
    </div>
  </div>


  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="/resources/js/bootstrap.min.js"></script>
  	<script>
	var ctx = document.getElementById('myChart');
	var myChart = new Chart(ctx, {
		type: 'pie',
		data: {
			datasets: [{
				data: [1000,800],
				backgroundColor:[
					"#FF6384",
					"#36A2EB"
				],
				hoverBackgroundColor:[
					"#FF6384",
					"#36A2EB"
				]
			}]
		}
	});
</script>
</body>

</html>