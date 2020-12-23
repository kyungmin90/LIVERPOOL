<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
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
	
	//글쓰기 버튼 클릭
	$('#writeBtn').click(function() {
		if (<%=idCheck %> == false) {
				alert("로그인 후 이용해주세요.")

		}else {
			location.href = "bbsWrite.do"
			
		}
	})
	
	//내가쓴글
	$("#myChk").change(function(){
        if($("#myChk").is(":checked")){
    		$.ajax({
    			url : "myBBS.do",
    			data : {
    				BWRITER : $('#myChk').val(),
    			},
    			success : function(result) {
    				//결과를 html로 받아 화면 전환
					$("#table").html(result);
    			}	
    		})
            
        }else{
            
        }
    });
	
	
	//검색
	//검색 form에 입력값을 submit
	$("#searchform").submit(function() {
	searchInput = $("#searchInput").text();
	})//검색end
	
	
	
})





</script>
<title>LIVERPOOL</title>
</head>
<body style="background-color: #800000;">
<!-- 헤더 -->
 <jsp:include page="../../header.jsp"></jsp:include>



<!-- 바디 -->
<br><br><br><br><br><br><br><br><br>


<!-- 게시판 테이블 -->

<div class="container" style="background-color: white; padding-bottom: 50px; border-radius: 20px; margin-bottom: 300px;">
<div style="width: 150px; margin: 0px auto;"><br>
  <h2 style="font-weight: bold;">검색 결과</h2></div><br>
  
  
    <div style="width: 1100px;">
  <button id="writeBtn" class="btn btn-dark" style="display: inline-block; ">글쓰기</button>
  
  <!-- 검색 -->
  <div style="display: inline-block; margin-left: 750px;">
  
  <input type="checkbox" id="myChk" name="BWRITER" value="<%=ID%>"> 내가쓴글보기
  <form action="search.do">
  <input id="searchInput" name="searchInput"type="text" placeholder="글 제목을 입력해주세요." autocomplete="off">
  <button id="searchBtn" class="btn btn-dark">검색</button>
  </form>
  </div>
  </div>

  <table class="table table-striped">
    <thead>
      <tr>
      	<th>글번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>등록시간</th>
      </tr>
    </thead>
	<c:choose>
	<c:when test="${empty list }">
	<tbody>
	<tr>
	<td></td>
	<td style="text-align: center; padding-left: 160px;"><h4>검색결과가 없습니다.</h4></td>       
    <td></td>
    <td></td>
	</tr>
	</tbody>
	</c:when>
	<c:otherwise>
    <tbody>
    <c:forEach var="vo" items="${list }">
      <tr>
      	<td>${vo.BNO}</td>
        <td><a href = "bbsRead.do?BNO=${vo.BNO}">${vo.BTITLE}</a></td>       
        <td>${vo.BWRITER}</td>
        <td>${vo.BDATE }</td>
      </tr>
      </c:forEach>
    </tbody>
  </c:otherwise>
  </c:choose>
  </table>
</div>

<br><br><br><br>

  <!-- 푸터 -->
<jsp:include page="../../footer.jsp"></jsp:include>
  <!-- 상단으로 -->
 <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

</body>
</html>