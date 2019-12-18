<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Diet</title>
  <link rel="stylesheet" href="resources/css/style.css">
  <link href="resources/css/modal.css" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
  integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap" rel="stylesheet">
</head>

<body>
<%@include file="../views/header.jsp"%>
<%@include file="../views/footer.jsp"%>

  <header class="bg-mistyrose bg-text-white head">
    <div class="container text-center">
      <div id="js-clock" style="padding:25px">
        <span>00:00</span>
      </div>
    </div>
  </header>
<div class="wrap">
  <div class="container" style="padding-top:50px;">
      <div class="container-fluid">
        <div class="row text-center">
          <div class="col-6 col-xs-6 col-sm-6 col-md-6"style="font-size:25px;">
            My
          </div>
          <div class="col-6 col-xs-6 col-sm-6 col-md-6"style="font-size:25px;">
            Friend
          </div>
            <!-- <script src="bootstrap.min.js"></script> -->
          </div>
        </div>
      </div>

  <!--Chart-->
  <div class="container" style="padding-top:50px;">
    <div class="container-fluid">
      <div class="row">
        <div class="col-6 col-xs-6 col-sm-6 col-md-6">
                <canvas id="myChart">
            </canvas>
        </div>
        <div class="col-6 col-xs-6 col-sm-6 col-md-6">
                <canvas id="yourChart">
                </canvas>
        </div>
          <!-- <script src="bootstrap.min.js"></script> -->
        </div>
      </div>
    </div>
    <div class="container" style="padding-top:50px; padding-bottom:50px">
      <div class="container-fluid text-center">
          <div class="d-inline-flex shadow-sm lr col-5 col-xs-5 col-sm-5 col-md-5">
            <a href="#" data-toggle="modal" data-target="#modal">modal</a>
          </div>
          <div class="d-inline-flex shadow-sm lr col-5 col-xs-5 col-sm-5 col-md-5">
            <a href="#" data-toggle="modal" data-target="#modal">modal</a>
          </div>
      </div>
    </div>
</div>
  <!-- Footer -->
<!--   <footer class="py-4 bg-black">
    <div class="container">
                    날씨
                    <div class="container-fluid text-right text-white">
                          <div style="display: -webkit-inline-box;">
                            <img id=wImg src="" />
                            <div>
                              <div>
                                <span class="place"></span>
                                <span class="temperature"></span>
                                <span class="description"></span>
                              </div>
                              <span class="min-temp"></span>
                              <span>/</span>
                              <span class="max-temp"></span>
                            </div>
                          </div>
                      </div>
                      /날씨
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
  </footer> -->


  <!-- Modal -->
  <div class="modal fade" id="modal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Modal Header</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
    var ctx = document.getElementById('yourChart');
    var youChart = new Chart(ctx, {
      type: 'pie',
      data: {
        datasets: [{
          data: [1000, 800],
          backgroundColor: [
            "#FF6384",
            "#36A2EB"
          ],
          hoverBackgroundColor: [
            "#FF6384",
            "#36A2EB"
          ]
        }]
      }
    });
  </script>
    <script>
        var ctx = document.getElementById('myChart');
        var myChart = new Chart(ctx, {
          type: 'pie',
          data: {
            datasets: [{
              data: [1000, 800],
              backgroundColor: [
                "#FF6384",
                "#36A2EB"
              ],
              hoverBackgroundColor: [
                "#FF6384",
                "#36A2EB"
              ]
            }]
          }
        });
      </script>
</body>

</html>