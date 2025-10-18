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
  .tblTop .writeInfo {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 20px;
  }
  .tblTop .writeInfo li:first-child {
    flex: 1;
  }
  .tblTop .writeInfo li b {
    font-weight: 400;
    color: #666;
  }
  .tblTop .writeInfo li span {
    padding: 0 10px;
    color: #222;
  }
  .tblCont {
    padding: 20px 10px;
    min-height: 500px;
  }
  .tblCont .userInfo {
    margin-bottom: 20px;
    padding: 10px;
    background-color: #f5f5f5;
    font-size: 12px;
  }
  .tblCont .userInfo ul {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 10px 20px;
  }
  .tblCont .userInfo ul li {
    width: 50%;
    display: flex;
    align-items: center;
    justify-content: start;
    gap: 10px;
  }
  .tblCont .userInfo ul li b,
  .tblCont .userInfo ul li span {
    font-weight: 400;
  }
  .tblCont .userInfo ul li b {
    color: #666;
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
        <p class="tit">제목 나오는 곳</p>
        <ul class="writeInfo">
          <li><b>작성일</b><span>202510-10</span></li>
          <li><b>조회수</b><span>0</span></li>
        </ul>
      </div>
      <div class="tblCont">
        <div class="userInfo">
          <ul>
            <li><b>작성자</b><span>홍길동</span></li>
            <li><b>성별</b><span>여자</span></li>
          </ul>
        </div>
        내용 나오는 곳
      </div>
    </div>
    <div class="btnBox">
      <a href="">글 목록</a>
      <div>
        <a href="">수정</a>
        <a href="">삭제</a>
      </div>
    </div>
  </div>
</body>
</html>