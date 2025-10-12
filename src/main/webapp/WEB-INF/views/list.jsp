<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <th>작성일</th>
            <th>조회수</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>${boardDto.title}</td>
            <td>${boardDto.name}</td>
            <td><fmt:formatDate value="${writedayDate}" pattern="yyyy-MM-dd" /></span></td>
            <td>${boardDto.readnum}</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="btnBox">
      <a href="/write">글쓰기</a>
    </div>
  </div>
</body>
</html>