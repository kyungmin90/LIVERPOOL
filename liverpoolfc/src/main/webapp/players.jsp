<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

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
	 
	 
	$('table').click(function() {
		    	$.ajax({
    			url : "playAjax.do",
    			data : {//테이블 id는 선수 등번호
    				NO : $(this).attr('id'),
    			},
    			success : function(result) {
					$(".modal-body").html(result);
					$('#myModal').modal('show');
    			}	
    		})
		})
	 
})
 </script>
  
  
<style type="text/css">
hr{
background-color: #800000;
height: 2px;
}
h4{
font-weight: bold;
text-align: left;
}
img{
width: 120px;
height: 120px;
}
#td1{
text-align: center;
width: 60px;
font-size: 20px;
font-weight: bold;
color: white;
background-color: #CD0000;
}
#td2{
text-align: center;
width: 180px;
font-weight: bold;
background-color: #f2f2f2;

}
.bTable{
border: 1px solid #f2f2f2;
display: inline-block;
}
.bTable:hover{
background:#cdcdcd;
opacity: 0.5;
}
div{
text-align: center;
}
</style>

<title>LIVERPOOL</title>
</head>
<body style="background-color: #800000;">
<!-- 헤더 -->
 <jsp:include page="header.jsp"></jsp:include>



<!-- 바디 -->
<br><br><br><br><br><br><br><br><br>
<!-- JSTL 로 DB 연결 -->
 	<sql:setDataSource
	url="jdbc:oracle:thin:@localhost:1521:xe"
	driver="oracle.jdbc.OracleDriver"
	user="root"
	password="1234"
	scope="application"
	var="db"
	/>
	
	
	<sql:query var="gk" dataSource="${db}">
	SELECT * FROM "PLAYERS" WHERE POSITION1 = '골키퍼'
	</sql:query>
	<sql:query var="def" dataSource="${db}">
	SELECT * FROM "PLAYERS" WHERE POSITION1 = '수비수'
	</sql:query>
	<sql:query var="mid" dataSource="${db}">
	SELECT * FROM "PLAYERS" WHERE POSITION1 = '미드필더'
	</sql:query>
	<sql:query var="forw" dataSource="${db}">
	SELECT * FROM "PLAYERS" WHERE POSITION1 = '공격수'
	</sql:query>
	
	
 	<div style="width: 1300px; background-color: white; margin: 0px auto; padding: 30px 30px 30px 30px; border-radius: 20px;">

	 <h4>&emsp;GOALKEEPERS</h4><hr><br>
	 <c:forEach var="vo" items="${gk.rows }">
	 <table id="${vo.NO}" class="bTable">
	 <tr>
	 <td>
	 <img src="resources/img/players/${vo.IMG}">
	 </td>
	 <td id="td1">${vo.NO}</td>
	 <td id="td2">${vo.NAME}</td>
	 </tr>
	 </table>
	 </c:forEach>
	 <br><br>
	 
	 
	 
	 <h4>&emsp;DEFENDERS</h4><hr><br>
	 <c:forEach var="vo1" items="${def.rows }">
	<table id="${vo1.NO}" class="bTable">
	 <tr>
	 <td>
	 <img src="resources/img/players/${vo1.IMG}">
	 </td>
	 <td id="td1">${vo1.NO}</td>
	 <td id="td2">${vo1.NAME}</td>
	 </tr>
	 </table>
	 </c:forEach>
	 <br><br>
	 
	 
	 
	 <h4>&emsp;MIDFIELDERS</h4><hr><br>
	 <c:forEach var="vo2" items="${mid.rows }">
	 <table id="${vo2.NO}" class="bTable">
	 <tr>
	 <td>
	 <img src="resources/img/players/${vo2.IMG}">
	 </td>
	 <td id="td1">${vo2.NO}</td>
	 <td id="td2">${vo2.NAME}</td>
	 </tr>
	 </table>
	 </c:forEach>
	 <br><br>
	 
	 
	 
	 <h4>&emsp;FORWARDS</h4><hr><br>
	 <c:forEach var="vo3" items="${forw.rows }">
	 <table id="${vo3.NO}" class="bTable">
	 <tr>
	 <td>
	 <img src="resources/img/players/${vo3.IMG}">
	 </td>
	 <td id="td1">${vo3.NO}</td>
	 <td id="td2">${vo3.NAME}</td>
	 </tr>
	 </table>
	 </c:forEach>
	 
	</div>

 

  <!--모달 -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- 모달 내용-->
      <div class="modal-content">
      <!-- 모달 바디 , 선수 정보-->
      <div class="modal-body">
        <!-- ajax의 result가 들어옴 -->
      </div>
      <!-- 모달 푸터, 닫기버튼 -->
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
      </div>
    </div>
  </div>
  

<br><br><br><br>

  <!-- 푸터 -->
<jsp:include page="footer.jsp"></jsp:include>
  <!-- 상단으로 -->
 <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

</body>
</html>