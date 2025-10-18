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
    <div class="btnBox">
      <a href="">취소</a>
      <input type="submit" value="저장">
    </div>
  </div>
</body>
</html>