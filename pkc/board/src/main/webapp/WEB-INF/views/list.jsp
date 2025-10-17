<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       <!-- core태그 사용시 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/static/style.css">
<style>
  .tblBox {
    padding: 0;
    background: none;
  }
  .tblBox tbody td {
    border-top: 1px solid #ddd;
  }
  .tblBox tbody tr:first-child td {
    border-top: 1px solid #000;
  }
  .tblBox tbody td:not(:first-child) {
    text-align: center;
  }
  .paging,
  .paging ul {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 10px;
  }
  .paging ul li a {
    width: 24px;
    height: 24px;
    line-height: 24px;
    text-align: center;
    display: block;
  }
  .paging ul li.this a {
    background-color: #000;
    border-radius: 50%;
    color: #fff;
  }
</style>
</head>
<body>
  <div class="inner">
    <h3 class="pageTop">게시판 목록</h3>
    <div class="tblBox">
      <table>
        <colgroup>
          <col width="*">
          <col width="100px">
          <col width="100px">
          <col width="100px">
        </colgroup>
        <thead>
          <tr>
            <th>제목</th>
            <th>작성자</th>
            <th>조회수</th>
            <th>작성일</th>
          </tr>
        </thead>
        <tbody>
          <!-- 
            items: 데이터 담은 목록
            var : 데이터를 가져올 DTO. 변수명으로 적어줌
          -->
          <c:forEach items="${list}" var="bdto">
            <tr>
              <td><a href="readnum?id=${bdto.id}">${bdto.title}</a></td>
              <td>${bdto.name}</td>
              <td>${bdto.readnum}</td>
              <td>${bdto.writeday}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
    <div class="btnBox">
      <a href="/write">글쓰기</a>
    </div>
    <div class="paging">
      <!-- 10페이지 이동 -->
      <c:if test="${pstart!=1}">
        <a href="list?page=${pstart-1}"> << </a>
      </c:if>
      <c:if test="${pstart==1}">
        <<
      </c:if>

      <!-- 이전페이지 -->
      <c:if test="${page!=1}">
        <b><a href="list?page=${page-1}"> 이전 </a></b>
      </c:if>
      <c:if test="${page==1}">
        <b>이전</b>
      </c:if>
      
      <ul>
        <c:forEach begin="${pstart}" end="${pend}" var="i">
          <c:if test="${page==i}">
            <li class="this"><a href="list?page=${i}">${i}</a></li>
          </c:if>
          <c:if test="${page!=i}">
            <li><a href="list?page=${i}">${i}</a></li>
          </c:if>
        </c:forEach>
      </ul>
      
      <!-- 다음페이지 -->
      <c:if test="${page!=chong}">
        <b><a href="list?page=${page+1}"> 다음 </a></b>
      </c:if>
      <c:if test="${page==chong}">
        <b>다음</b>
      </c:if>

      <!-- 다음 10페이지 -->
      <c:if test="${pend!=chong}">
        <a href="list?page=${pend+1}"> >> </a>
      </c:if>
      <c:if test="${pend==chong}">
        >>
      </c:if>
    </div>
  </div>
</body>
</html>