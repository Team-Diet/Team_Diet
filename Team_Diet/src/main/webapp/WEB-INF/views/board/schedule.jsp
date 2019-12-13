<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  <link rel="stylesheet" type="text/css" href="/resources/css/modal.css" >
  <script type="text/javascript" src="/resources/js/chart/Chart.bundle.min.js"></script>
	<script type="text/javascript" src="/resources/js/chart/Chart.min.js"></script>
</head>
<!-- style="background-color:black;" -->
<body>
<%@include file="../header.jsp"%>
  <div class="container" >
  
    <header>

      <h1>Header</h1>

    </header>
    <!-- 여기부터 바디 시작 -->
    <div class="content">
		<div style="top:30px;width:900px;height:30px;font-size:20px;">Graph Name(To Month)
			<canvas id="lineChart" width="890" height="400"></canvas>
    	</div>
   	</div>
   	<div class="content" style="margin-top:430px;height:500px;">
		<div style="width:900px;height:30px;font-size:20px;">Graph Name(To Today)
			<canvas id="pieChart" width="890" height="400"></canvas>
			</div>
   	</div>
   	<div class="content" style="margin-top:30px;height:500px;">
		<div style="width:900px;height:30px;font-size:20px;">Graph Name(Day by Day)
			<canvas id="barChart" width="890" height="400"></canvas>
		</div>
   	</div>
    
	<!-- 여기까지 바디 -->
    <div class="sidebar" style="position:absolute;">
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
  <script src="/resources/js/clock.js"></script>
  <script src="/resources/js/weather.js"></script>
  	<script>
	var line = document.getElementById('lineChart');
	var pie = document.getElementById('pieChart');
	var bar = document.getElementById('barChart');
	var lineChart = new Chart(line, {
		type: 'line',
		data: {
			labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
			datasets: [{
				label: '',
				data: [1000, 1500, 2000, 2500, 3000, 3500],
				fillColor: "rgba(220,220,220,0.2)",
                strokeColor: "rgba(220,220,220,1)",
                pointColor: "rgba(220,220,220,1)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(220,220,220,1)",
                data: [1450, 1500, 1900, 2700, 3000, 3100, 2540]	
			},
			{
                label: "",
                fillColor: "rgba(151,187,205,0.2)",
                strokeColor: "rgba(151,187,205,1)",
                pointColor: "rgba(151,187,205,1)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(151,187,205,1)",
                data: [1200, 1300, 1400, 1200, 1500, 2400, 2000]
            }]
		},
		options: {
			responsive: false,
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero: true
					}
				}]
			},
		}
	});
	var pieChart = new Chart(pie, {
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
	var pieChart = new Chart(bar, {
		type: 'bar',
		data: {
			labels: ["아침", "점심", "저녁", "간식", "야식"],
			datasets: [{
	            label: 'Pass',
	            backgroundColor: "#1E90FF",
	            data: [
	                670,
	                450,
	                300,
	                200,
	                1500,
	           ]
	        }, {
	            label: 'NG',
	            backgroundColor: "#F7464A",
	            data: [
	            	570,
	                350,
	                200,
	                100,
	                1400,
	            ]
	        }]
		}
	});
</script>
</body>

</html>