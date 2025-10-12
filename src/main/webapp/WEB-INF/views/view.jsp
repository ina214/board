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
  .tblTop {
    padding: 10px;
    border-bottom: 1px solid #000;
  }
  .tblTop .tit {
    padding: 5px 0 10px;
    font-size: 20px;
    font-weight: 700;
  }
  .tblTop .info {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 20px;
  }
  .tblTop .info li:first-child {
    flex: 1;
  }
  .tblTop .info li b {
    font-weight: 400;
    color: #666;
  }
  .tblTop .info li span {
    padding: 0 10px;
    color: #222;
  }
  .tblCont {
    padding: 20px 10px;
    min-height: 500px;
  }
  .btnBox {
    justify-content: space-between;
  }
</style>
</head>
<body>
  <div class="inner">
    <h3 class="pageTop">게시판 상세</h3>
    <div class="tblBox">
      <div class="tblTop">
        <p class="tit">${boardDto.title}</p>
        <ul class="info">
          <li><b>작성자</b><span>${boardDto.name}</span></li>
          <li><b>조회수</b><span>${boardDto.readnum}</span></li>
          <li><b>작성일</b><span><fmt:formatDate value="${writedayDate}" pattern="yyyy-MM-dd" /></span></li>
        </ul>
      </div>
      <div class="tblCont">
        ${boardDto.content}
      </div>
    </div>
    <div class="btnBox">
      <a href="/list">글 목록</a>
      <div>
        <a href="/list">삭제</a>
        <input type="button" value="삭제" onclick="location='/delPost?id={boardDto.id}'">
        <a href="/modify?id={boardDto.id}">수정</a>
      </div>
    </div>
  </div>
</body>
</html>