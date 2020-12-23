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

  <!-- Favicons -->
  <link href="resources/assets/img/favicon.png" rel="icon">
  <link href="resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
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
  
  <!-- 주소찾기 API -->
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  
  
  
  <script type="text/javascript">
  $(function() {
	  var idcheck = false;
	  var pwcheck = false;
	  
	//keyup과 ajax를 사용하여 아이디 중복 확인
	$('#id').keyup(function() { 
		$.ajax({
			url : "checkid.do",
			data : {
				id : $('#id').val(),
			},
			success : function(result) {
				if($('#id').val().length < 5){
					$('#idchk').html('<font style="color:red; font-weight:bold;">아이디는 5자리 이상 입력해주세요.</font>');
					idcheck = false;
				}else if(result == 1){
					$('#idchk').html('<font style="color:red; font-weight:bold;">중복된 아이디가 있습니다.</font>');			
					idcheck = false;
				}else{
					$('#idchk').html('<font style="color:green; font-weight:bold;">사용가능한 아이디 입니다.</font>');
					idcheck = true;
				}
			}	
		})
	});

	//keyup을 사용하여 비밀번호, 비밀번호 확인
	$('#pwchk').keyup(function(){
        if($('#pwchk').val() != $('#pw').val()){
          $('#pwcheck').html('<font style="color:red; font-weight:bold;">비밀번호가 일치하지 않습니다.</font>');
          pwcheck = false;
        } else{
          $('#pwcheck').html('<font style="color:green; font-weight:bold;">비밀번호가 일치합니다.</font>');
          pwcheck = true;
        }
    });
	
	 //유효성 검사
	  $('#joinOK').click(function() { 
	      if(idcheck == false){
	         alert("아이디를 확인 해주세요.");
	         $('#id').focus();
	      }else if(pwcheck == false){
	    	  alert("비밀번호를 확인해주세요.");
	    	  $('#pw').focus();
	      }
	      else{
	          if($('#id').val().length ==0 || $('#pw').val().length ==0 || $('#pwchk').val().length ==0 || $('#name').val().length ==0 || $('#birth').val().length ==0 || $('#tel').val().length ==0
	                ||  $('#address').val().length ==0){
	            alert("빈칸을 확인해주세요");
	         }else{
	         	alert("회원가입이 완료되었습니다.");
	        	joinForm.submit(); // 유효성 검사 완료 후 회원가입
	         } 
	      }
	      
	   });
	
	
	
	
	
});
  

  //주소찾기 api
  function searchAddress() {
     new daum.Postcode(
           {
              oncomplete : function(data) {
                 // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                 // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                 // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                 var addr = ''; // 주소 변수
                 var extraAddr = ''; // 참고항목 변수

                 //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                 if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                 } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                 }

                 // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                 if (data.userSelectedType === 'R') {
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if (data.bname !== ''
                          && /[동|로|가]$/g.test(data.bname)) {
                       extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== ''
                          && data.apartment === 'Y') {
                       extraAddr += (extraAddr !== '' ? ', '
                             + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if (extraAddr !== '') {
                       extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("address2").value = extraAddr;

                 } else {
                	 document.getElementById("address2").value = '';
                 }

                 // 우편번호와 주소 정보를 해당 필드에 넣는다.
                 document.getElementById("address").value = addr;
                 // 커서를 상세주소 필드로 이동한다.
                 document.getElementById("address1").focus(); 
              }
           }).open();
  }
  

</script>
  
<style type="text/css">
body
{
background-color: #800000;
}
h3, h4
{
color: black;
}
</style>

<title>LIVERPOOL</title>
</head>
<body>
<!-- 헤더 -->
 <jsp:include page="header.jsp"></jsp:include>



<!-- 바디 -->

<br><br><br><br><br><br><br><br><br>




<div style="width: 800px; margin: 0px auto; background-color: white; border-radius: 20px;">
<div style="width: 120px; margin: 0px auto;">
<br><br>
<h3 style="font-weight: bold;">회원가입</h3>
</div>
<div style="width: 500px; margin: 0px auto; padding-bottom: 30px;">
<form action="insert.do" id="joinForm" name="joinForm">
<h4>아이디</h4><input type="text" class="form-control" name="id" id="id" placeholder="아이디를 입력해주세요." style="width: 500px; height: 40px;" autocomplete="off">
<font id="idchk" style="color: white;">아이디를 입력해주세요.</font><br><br>
<h4>비밀번호</h4><input type="password" class="form-control" name="pw" id="pw" placeholder="비밀번호를 입력해주세요." maxlength="10" style="width: 500px; height: 40px;" autocomplete="off"><br><br>
<h4>비밀번호 확인</h4><input type="password" class="form-control" id="pwchk" placeholder="비밀번호를 확인해주세요." maxlength="10" style="width: 500px; height: 40px;" autocomplete="off">
<font id ="pwcheck" style="color: white;">암호를 입력해주세요.</font><br><br>
<h4>이름</h4><input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력해주세요." style="width: 500px; height: 40px;" autocomplete="off"><br><br>
<h4>생년월일</h4><input type="date" class="form-control" name="birth" id="birth" style="width: 500px; height: 40px;"><br><br>
<h4>전화번호</h4><input type="text" class="form-control" name="tel" id="tel" placeholder="전화번호를 입력해주세요." style="width: 500px; height: 40px;" autocomplete="off"><br><br>
<h4>주소</h4>
<input type="button" class="btn btn-dark" onclick="searchAddress()" value="주소 찾기" readonly="readonly"><br>
<input class="form-control" style="width: 500px; height: 40px;" type="text" name="address" id="address" placeholder="주소" readonly="readonly"><br>
<input class="form-control" style="width: 500px; height: 40px;" type="text" name="address1" id="address1" placeholder="상세주소" oninput="this.value = this.value.replace(/[^ㄱ-ㅎ|가-힣|0-9|-]/g, '')" autocomplete="off"><br>
<input class="form-control" style="width: 500px; height: 40px;" type="text" name="address2" id="address2" placeholder="참고항목" readonly="readonly"><br><br>
         
<div style="width: 200px; margin: 0px auto;">
<button type="button" id = "joinOK" class="btn btn-dark btn-block" style="height: 50px;">회원가입</button>
</div>
</form>
</div>
</div>
<hr>


<br><br><br><br>







 <!-- 푸터 -->
<jsp:include page="footer.jsp"></jsp:include>
  <!-- 상단으로 -->
 <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>


</body>
</html>