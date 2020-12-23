<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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


<style type="text/css">
#td1{
font-weight: bold;
color: #800000;
width: 200px;

}


</style>

<title>LIVERPOOL</title>
</head>
<body style="background-color: #800000;">
<!-- 헤더 -->
 <jsp:include page="header.jsp"></jsp:include>
 <br><br><br><br><br><br><br><br><br><br>
 
 
 
 <sql:setDataSource
	url="jdbc:oracle:thin:@localhost:1521:xe"
	driver="oracle.jdbc.OracleDriver"
	user="root"
	password="1234"
	scope="application"
	var="db"
		/>
	<sql:query var="userDB" dataSource="${db}">
		SELECT * FROM "USER" WHERE ID = '<%=ID %>'
	</sql:query>  
 
 
 
 
 <div style="width: 1000px; height:500px; margin: 0px auto; background-color: white; text-align: center; border-radius: 20px;">
 <h2 style="padding-top: 30px; font-weight: bold; padding-bottom: 30px;">마이페이지</h2>
 <c:forEach var="user" items="${userDB.rows}" end="0">
 <table class="table" style="width: 600px; margin: 0px auto; font-size: 18px;">
 	<tr>
 	<td id="td1">아이디</td>
 	<td>${user.ID }</td>
 	</tr>
 	<tr>
 	<td id="td1">이름</td>
 	<td>${user.NAME }</td>
 	</tr>
 	<tr>
 	<td id="td1">생년월일</td>
 	<td><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${user.BIRTH }"/></td>
 	</tr>
 	<tr>
 	<td id="td1">전화번호</td>
 	<td>${user.TEL }</td>
 	</tr>
 	<tr>
 	<td id="td1">주소</td>
 	<td>${user.ADDRESS }</td>
 	</tr>
 	
 </table>
 </c:forEach>
 
 
 
 </div>
 
 
 
 
 
 
 <br><br><br><br><br>
 
 
 
 
 <!-- 푸터 -->
<jsp:include page="footer.jsp"></jsp:include>
  <!-- 상단으로 -->
 <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

</body>
</html>