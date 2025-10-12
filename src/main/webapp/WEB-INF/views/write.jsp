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
    padding-left: 20px;
    padding-right: 20px;
  }
</style>
</head>
<body>
  <div class="inner">
    <h3 class="pageTop">게시판 글쓰기</h3>
    <!-- 사용자가 입력한 정보를 서버로 전송 위해 form태그 사용  -->
    <!-- DB테이블의 필드명과 name속성 값이 일치하면 자동매핑 -->
    <form action="writeOk" method="post" id="writeOk">
      <div class="tblBox">
        <table>
          <colgroup>
            <col width="100px">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th>제목</th>
              <td><input type="text" name="title" id="" placeholder="제목을 입력해주세요."></td>
            </tr>
            <tr>
              <th>작성자</th>
              <td><input type="text" name="name" id="" placeholder="제목을 입력해주세요."></td>
            </tr>
            <tr>
              <th>내용</th>
              <td><textarea name="content" id="" placeholder="내용을 입력해주세요."></textarea></td>
            </tr>
          </tbody>
        </table>
      </div>
    </form>
    <div class="btnBox">
      <a href="/list">취소</a>
      <input type="submit" value="저장" form="writeOk">
    </div>
  </div>
</body>
</html>