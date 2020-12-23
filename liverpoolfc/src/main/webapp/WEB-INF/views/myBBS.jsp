<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<table class="table table-striped" id="table">
    <thead>
      <tr>
      	<th>글번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>등록시간</th>
      </tr>
    </thead>
    <tbody id="tb">
    <c:forEach var="vo" items="${list }">
      <tr>
      	<td>${vo.BNO}</td>
        <td><a href = "bbsRead.do?BNO=${vo.BNO}">${vo.BTITLE}</a></td>       
        <td>${vo.BWRITER}</td>
        <td>${vo.BDATE }</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>