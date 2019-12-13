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
</head>
<!-- style="background-color:black;" -->
<body>
  <div class="container" >
    <header>

      <h1>Header</h1>

    </header>
    <div class="content">
      <h2>Content</h2>
      <div class="js-clock">
        <h1>00:00</h1>
      </div>
      <div style="display: -webkit-inline-box;">
        <div>
        <img id=wImg src="" />
      </div>
        <div class="weather">
        <div class="place"></div>
        <div class="temperature"></div>
        <div class="description"></div>
        <span class="min-temp"></span>
        <span>/</span>
        <span class="max-temp"></span>
      </div>
      </div>
      <div class="fl">
        <div class="lr">
          <div class="user">
            <a href="#" data-toggle="modal" data-target="#productModal">modal</a>
          </div>
        </div>
        <div class="lr">
          <p>456</p>
        </div>
      </div> 
    </div>
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
  <script src="/resources/js/clock.js"></script>
  <script src="/resources/js/weather.js"></script>
</body>

</html>