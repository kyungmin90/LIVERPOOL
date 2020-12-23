<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%//user 로그인 세션
String ID = (String)session.getAttribute("ID"); 
%> 
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
	//게시판 저장 버튼
	$('#btnUpdate').click(function() {
		var result = confirm("저장하시겠습니까?");
		if (result) { //확인
			bbsform.submit();

			
			}else{
				//취소 동작 없음
			}
		
	})	

	// 목록으로 돌아가기
	$('#btnList').click(function() {
		var result = confirm("목록으로 돌아가시겠습니까?");
		if (result) { //확인
			location.replace("bbs.do");

			
			}else{
				//취소 동작 없음
			}
		
	})	


})



</script>


<style type="text/css">
body
{
background-color: #800000;
}

</style>

<title>LIVERPOOL</title>
</head>

<body>
<!-- 헤더 -->
 <jsp:include page="../../header.jsp"></jsp:include>



<!-- 바디 -->
<br><br><br><br><br><br><br><br><br>



<article>

		<div class="container" role="main" style="background-color: white; padding-top: 50px; padding-bottom: 50px; border-radius: 20px;">
			<h2 style="font-weight: bold;">게시글 수정</h2><br>
			<form name="form" id="bbsform" action="bbsUpInsert.do">
			<div class="mb-3">
					<label for="title">글번호</label>
					<input type="text" class="form-control" name="BNO" id="BNO" value="${vo.BNO }" autocomplete="off" readonly>
				</div>

				<div class="mb-3">
					<label for="title">제목</label>
					<input type="text" class="form-control" name="BTITLE" id="BTITLE" value="${vo.BTITLE }" autocomplete="off">
				</div>

				<div class="mb-3">
					<label for="reg_id">작성자</label>
					<input type="text" class="form-control" name="BWRITER" id="BWRITER" value="<%=ID %>" readonly>
				</div>

				<div class="mb-3">
					<label for="content">내용</label>
					<textarea class="form-control" rows="15" name="BCONTENT" id="BCONTENT">${vo.BCONTENT }</textarea>
				</div>

			</form>

			<div >

				<button type="button" id="btnUpdate" class="btn btn-dark">수정</button>

				<button type="button" id="btnList" class="btn btn-dark">목록</button>

			</div>

		</div>

	</article>





<br><br><br><br>

  
  
  
  
 <!-- 푸터 -->
<jsp:include page="../../footer.jsp"></jsp:include>
  <!-- 상단으로 -->
 <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  

 

</body>
</html>