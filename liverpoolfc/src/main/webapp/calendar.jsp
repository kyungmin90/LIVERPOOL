<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">
  <!-- Vendor JS Files -->
  <script src="resources/assets/vendor/jquery/jquery.min.js"></script>
  <script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="resources/assets/vendor/php-email-form/validate.js"></script>
  <script src="resources/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="resources/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="resources/assets/vendor/counterup/counterup.min.js"></script>
  <script src="resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="resources/assets/vendor/venobox/venobox.min.js"></script>
  <script src="resources/assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/assets/js/main.js"></script>
<!-- Favicons -->
  <link href="resources/assets/img/favicon.png" rel="icon">
  <link href="resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
<!-- Vendor CSS Files -->
  <link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="resources/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="resources/assets/vendor/aos/aos.css" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="resources/assets/css/style.css" rel="stylesheet">
  
<link href='resources/fullcalendar/packages/core/main.css' rel='stylesheet' />
<link href='resources/fullcalendar/packages/daygrid/main.css' rel='stylesheet' />
<script src='resources/fullcalendar/packages/core/main.js'></script>
<script src="resources/fullcalendar/packages/interaction/main.js"></script>
<script src='resources/fullcalendar/packages/daygrid/main.js'></script>
<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
    
      var calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: [ 'dayGrid' ],
		events: {
	        url: 'resources/json/calendar.json'
	      }
      });
      calendar.render();
    });

    
</script>
<style type="text/css">
body
{
background-color: #800000;
}

</style>
<title>LIVERPOOL</title>
</head>
<!-- 헤더 -->
 <jsp:include page="header.jsp"></jsp:include>
 <br><br><br><br><br><br><br><br><br>
 
<body>
<div id='calendar' style="width: 1000px; height: 1000px; margin: 0px auto; background-color: white; border-radius: 10px;"></div>


<br><br><br><br><br><br>
 <!-- 푸터 -->
<jsp:include page="footer.jsp"></jsp:include>
  <!-- 상단으로 -->
 <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
 
  
</body>
</html>