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

<script type="text/javascript">
$(function() {
	
	$('#loginBtn').click(function() {
		$.ajax({
			url : "logincheck.do",
			data : {
				id : $('#id').val(),
				pw : $('#pw').val()
				
			},
			success : function(result) {
				if(result == 1){
					alert("로그인 성공")
					location.href = "home.jsp"
				}else{
					alert("로그인 실패")	
				}
			}
		})	
	});
	
	
	
	
	
});




</script>











<style type="text/css">
body
{
background-color: #800000;
}
h3, h4
{
color: white;
}
</style>

<title>LIVERPOOL</title>
</head>
<body>
 <!-- 헤더 -->
 <jsp:include page="header.jsp"></jsp:include>

<!-- 바디 -->

<br><br><br><br><br><br><br><br><br><br><br><br><br><br>



<div style="width: 120px; margin: 0px auto;">
<h3 style="font-weight: bold;">로그인</h3>
</div>
<div style="width: 500px; margin: 0px auto;">

<h4>아이디</h4><input type="text" class="form-control" name="id" id="id" style="width: 500px; height: 40px;" autocomplete="off"><br><br>
<h4>비밀번호</h4><input type="password" class="form-control" name="pw" id="pw" style="width: 500px; height: 40px;" autocomplete="off"><br><br>
<div style="width: 300px; margin: 0px auto;"><br>
<button type="button" id = "loginBtn" class="btn btn-dark btn-block" style="height: 60px;">로그인</button>
</div>

</div>





<br><br><br><br><br><br><br><br><br><br><br><br>


<!-- 푸터 -->
<jsp:include page="footer.jsp"></jsp:include>
  <!-- 상단으로 -->
 <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
  

  

</body>
</html>