<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
//로그인 아이디 세션
String ID = null; 
boolean idCheck = false;
if(session.getAttribute("ID")!=null){
	ID=(String)session.getAttribute("ID");
	idCheck=true;
}

%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">
    <!-- Vendor JS Files -->
  <script src="<c:url value="/resources/assets/vendor/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
  <script src="<c:url value="/resources/assets/vendor/jquery.easing/jquery.easing.min.js"/>"></script>
  <script src="<c:url value="/resources/assets/vendor/php-email-form/validate.js"/>"></script>
  <script src="<c:url value="/resources/assets/vendor/owl.carousel/owl.carousel.min.js"/>"></script>
  <script src="<c:url value="/resources/assets/vendor/waypoints/jquery.waypoints.min.js"/>"></script>
  <script src="<c:url value="/resources/assets/vendor/counterup/counterup.min.js"/>"></script>
  <script src="<c:url value="/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"/>"></script>
  <script src="<c:url value="/resources/assets/vendor/venobox/venobox.min.js"/>"></script>
  <script src="<c:url value="/resources/assets/vendor/aos/aos.js"/>"></script>

  <!-- Template Main JS File -->
  <script src="<c:url value="/resources/assets/js/main.js"/>"></script>
  <!-- Favicons -->
  <link href="<c:url value="/resources/assets/img/favicon.png"/>" rel="icon">
  <link href="<c:url value="/resources/assets/img/apple-touch-icon.png"/>" rel="apple-touch-icon">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <!-- Vendor CSS Files -->
  <link href="<c:url value="/resources/assets/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/assets/vendor/icofont/icofont.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/assets/vendor/boxicons/css/boxicons.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/assets/vendor/owl.carousel/assets/owl.carousel.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/assets/vendor/remixicon/remixicon.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/assets/vendor/venobox/venobox.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/assets/vendor/aos/aos.css"/>" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<c:url value="/resources/assets/css/style.css"/>" rel="stylesheet">
<title>LIVERPOOL</title>
<script type="text/javascript">

$(function() {
//삭제,수정 버튼 보이기 유무
	var w = $('.w').attr('id')
	var uid = "<%=ID%>"
	
if (<%=idCheck %> == false) {
	$('#updateBtn').hide();
	$('#deleteBtn').hide();
}else if(w != uid){
	$('#updateBtn').hide();
	$('#deleteBtn').hide();
}else{
	$('#updateBtn').show();
	$('#deleteBtn').show();
}//버튼 유무 end


//목록으로 돌아가기
$('#listBtn').click(function() {
	var result = confirm("목록으로 돌아가시겠습니까?");
	if (result) { //확인
		location.replace("bbs.do");

		
		}else{
			//취소 동작 없음
		}
	
})//목록end

//수정버튼
$('#updateBtn').click(function() {
	var result = confirm("수정 페이지로 이동 하시겠습니까?");
	if (result) { //확인
		location.replace("bbsUpdate.do?BNO="+${vo.BNO});

		
		}else{
			//취소 동작 없음
		}
	
})//수정end


//삭제버튼
$('#deleteBtn').click(function() {
	var result = confirm("게시물을 삭제하시겠습니까?");
	if (result) { //확인
		location.replace("bbsDelete.do?BNO="+${vo.BNO});

		
		}else{
			//취소 동작 없음
		}
	
})//삭제end





})//end


	





</script>
</head>
<body style="background-color: #800000;">
<!-- 헤더 -->
 <jsp:include page="../../header.jsp"></jsp:include>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>




	<div style="background-color: white; padding-top: 40px; padding-bottom: 40px; width: 1300px; margin: 0px auto; border-radius: 20px;">
	<table class="container">
		<thead>
			<tr class="row">
				<th colspan="3" style="width: 600px; padding-left: 35px;">
					<h3 style="color: #1e1e1e; width: 80%; padding-bottom : 15px">
						<strong style="width: 100%;"> ${vo.BTITLE}</strong>
					</h3>
					<hr color= "#800000" >
				</th>
			</tr>
			<tr class="userBoardView_con">
				<th style="padding-left: 20px;">글번호 : ${vo.BNO}</th>
				<th style="width: 60%; text-align: center;" class="w" id="${vo.BWRITER}">작성자 : ${vo.BWRITER}</th>
				<th style="width: 100%; text-align: right; padding-right: 20px;">등록시간 : ${vo.BDATE}</th>
			</tr>
		</thead>
		<tbody>	
			<tr>
				<td colspan="3" class="col-sm-9" >
					<hr> ${vo.BCONTENT}
					<hr>
				</td>
			</tr>
		</tbody>
	</table>
	<div style="padding-left: 100px;">

	<button type="button" id="updateBtn" class="btn btn-dark">수정</button>
	<button type="button" id="deleteBtn" class="btn btn-dark">삭제</button>
	<button type="button" id="listBtn" class="btn btn-dark">목록</button>
	</div>
	</div>


<br><br><br><br><br><br><br><br><br>


<!-- 푸터 -->
<jsp:include page="../../footer.jsp"></jsp:include>
  <!-- 상단으로 -->
 <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
</body>
</html>