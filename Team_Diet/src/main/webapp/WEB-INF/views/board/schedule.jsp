<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="/resources/css/style.css">
  <link href="/resources/css/modal.css" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
  integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap" rel="stylesheet">
</head>

<!-- style="background-color:black;" -->
<body>
<%@include file="../header.jsp"%>
<%@include file="../footer.jsp"%>
  <header class="bg-mistyrose bg-text-white head">
    <div class="container text-center">
      <div id="js-clock" style="padding:25px">
        <span>00:00</span>
      </div>
    </div>
  </header>
<div class="wrap">
    <!-- 여기부터 바디 시작 -->
      <div class="container" style="padding-top:50px; padding-bottom:50px">
    <div class="container-fluid">

		<div class="col-12 col-xs-12 col-sm-12 col-md-12">Graph Name(To Month)
			<canvas id="lineChart"></canvas>
    	</div>
		<div class="col-12 col-xs-12 col-sm-12 col-md-12">Graph Name(To Today)
			<canvas id="pieChart"></canvas>
			</div>
		<div class="col-12 col-xs-12 col-sm-12 col-md-12">Graph Name(Day by Day)
			<canvas id="barChart"></canvas>
   	</div>
    </div>
    </div>
	<!-- 여기까지 바디 -->

    <div id="footer">
      <p>Copyright</p>
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
</div>

  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>
  <script src="/resources/js/clock.js"></script>
  <script src="/resources/js/weather.js"></script>
  <script type="text/javascript" src="/resources/js/chart/Chart.bundle.min.js"></script>
  <script type="text/javascript" src="/resources/js/chart/Chart.min.js"></script>
  	<script>
	var line = document.getElementById('lineChart'); //월별 비교
	var pie = document.getElementById('pieChart'); // 일별 기초대사량 대비 섭취 칼로리 비교
	var bar = document.getElementById('barChart'); // 주별 비교
	//기초대사량 구하는 공식 = 
	//남자 : 66.47+(13.75*체중)+(5*키)-(6.76*나이)
	//여자 : 655.1+(9.56*체중)+(1.85*키)-(4.68*나이)
	var daycal_eat=200;
	var daycal_total=1000;
	var daycal_cal=daycal_total-daycal_eat;
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
				data: [daycal_cal,daycal_eat],
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