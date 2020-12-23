<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <img src="resources/img/players/${vo.IMG}" style="width: 200px; height: 200px;">
 
 <table class="table" style="margin-top: 30px; font-weight: bold;">
 <tr>
 <td>등번호</td>
 <td>${vo.NO}</td>
 </tr>
 <tr>
 <td>이름</td>
 <td>${vo.NAME}</td>
 </tr>
 <tr>
 <td>영문이름</td>
 <td>${vo.FNAME}</td>
 </tr>
 <tr>
 <td>국적</td>
 <td>${vo.COUNTRY}</td>
 </tr>
 <tr>
 <td>나이</td>
 <td>${vo.BIRTH}</td>
 </tr>
 <tr>
 <td>신체조건</td>
 <td>${vo.PHYSICAL}</td>
 </tr>
 <tr>
 <td>포지션</td>
 <td>${vo.POSITION1}</td>
 </tr>
  <tr>
 <td>상세포지션</td>
 <td>${vo.POSITION2}</td>
 </tr>


 
 </table>
 
 