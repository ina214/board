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
    <!-- onsubmit="return check(this) : 값이 제대로 입력되었는지 체크 -->
    <form action="writeOk" method="post" id="writeOk" onsubmit="return check(this)">
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
              <td><input type="text" name="name" id="" placeholder="작성자를 입력해주세요."></td>
            </tr>
            <tr>
              <th>비밀번호</th>
              <td><input type="password" name="pwd" id="" placeholder="비밀번호를 입력해주세요."></td>
            </tr>
            <tr>
              <th>내용</th>
              <td><textarea name="content" id="" placeholder="내용을 입력해주세요."></textarea></td>
            </tr>
            <tr>
              <th>성별</th>
              <td>
                <input type="radio" name="sung" value="0">남자
                <input type="radio" name="sung" value="1">여자
              </td>
            </tr>
            <tr>
              <th>취미</th>
              <td>
                <input type="checkbox" name="hobby" value="0">낚시
                <input type="checkbox" name="hobby" value="1">여행
                <input type="checkbox" name="hobby" value="2">독서
                <input type="checkbox" name="hobby" value="3">음악
                <input type="checkbox" name="hobby" value="4">댄스
                <input type="checkbox" name="hobby" value="5">멍때리기
              </td>
            </tr>
            <tr>
              <th>주소지</th>
              <td>
                <select name="juso">
                  <option value="1"> 경기도 </option>
                  <option value="2"> 서울특별시 </option>
                  <option value="3"> 충청도 </option>
                  <option value="4"> 전라도 </option>
                  <option value="5"> 강원도 </option>
                  <option value="6"> 경상도 </option>
                  <option value="7"> 제주도 </option>
                </select>
              </td>
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