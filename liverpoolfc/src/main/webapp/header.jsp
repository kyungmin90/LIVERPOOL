<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%//user 로그인 세션
String ID = (String)session.getAttribute("ID"); 
%> 

<script type="text/javascript">
			
$(function() {
	//로그아웃
	$('#logoutBtn').click(function() {
		
		var result = confirm("로그아웃 하시겠습니까?");
		
	if (result) { //확인
	//로그아웃 확인 클릭시 logout.jsp로 이동하여 유저아이디 session remove
		location.replace("/mvc00/logout.jsp");
	}else{
		//취소 동작 없음
	}
		
	})//로그아웃 end



})
</script>

<!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container-fluid">
      <div class="row justify-content-center">
      <div style="width: 800px; margin: 0px auto;">
        <div class="col-xl-10 d-flex align-items-center">
        
         <img src="resources/img/mainlogo.png" style="width: 80px; height: 88px;"> &emsp; <h1 class="logo">LIVERPOOL FC<span>.</span>&ensp;</h1><img src="resources/img/cham.PNG" style="width: 200px; height: 70px;">
       
		</div>
		</div>
       </div>
     </div>
      <div class="container-fluid">
      <div class="row justify-content-center">
      <div class="col-xl-10 d-flex align-items-center">
      <div style="width: 800px; margin: 0px auto;">
          <nav class="nav-menu d-none d-lg-block">
            <ul>
              <li class="active"><a href="<c:url value="/home.jsp"/>" style="font-size: 20px;">HOME</a></li>&emsp;&emsp;&emsp;
              <li><a href="<c:url value="/players.jsp"/>" style="font-size: 20px;">선수단</a></li>&emsp;&emsp;&emsp;
              <li><a href="<c:url value="/calendar.jsp"/>" style="font-size: 20px;">일정</a></li>&emsp;&emsp;&emsp;
              <li><a href="<c:url value="/bbs.do"/>" style="font-size: 20px;">게시판</a></li>&emsp;&emsp;&emsp;
             
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
             
             <!-- 미로그인시 헤더 메뉴 --> 
             <%if(ID == null){ %>
              <li class="active"><a href="<c:url value="/join.jsp"/>" style="font-size: 20px;">회원가입</a></li>&emsp;&emsp;&emsp;
              <li class="active"><a href="<c:url value="/login.jsp"/>" style="font-size: 20px;">로그인</a></li>
            <%}else{%>
            <!-- 로그인시 헤더메뉴 -->
            <li><a href="<c:url value="/mypage.jsp"/>" style="font-size: 20px;">마이페이지</a></li>&emsp;&emsp;&emsp;
            <c:forEach var="user" items="${userDB.rows}" end="0">
            <li class="active" style="font-size: 18px; font-weight: bold;">${user.NAME }님 환영합니다!</li>
            </c:forEach>
           <li class="active"><button id="logoutBtn" class="btn btn-dark">로그아웃</button></li>
            <%} %>
            
            
            
            
            </ul>
          </nav><!-- .nav-menu -->
          </div>
	</div></div></div>
  </header><!-- End Header -->