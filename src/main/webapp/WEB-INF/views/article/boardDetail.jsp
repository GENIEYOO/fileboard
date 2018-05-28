<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판상세보기</title>
</head>
<body>
	<table>
		<caption>게시물 상세보기</caption>

		<tr>
			<th>제목</th>
			<td>
				<c:out value="${boardInfo.a_title}"/>
			</td>
		</tr>

		<tr>
			<th>작성자</th>
			<td>
				<c:out value="${boardInfo.a_user}"/> 
			</td>
		</tr>

		<tr>
			<th>내용</th>
			<td>
				<c:out value="${boardInfo.content}"/>
			</td>
		</tr>


		<!-- <tr>
		<th>비밀번호</th>
		<td><input type="password", name="pwd" required="required"/></td>
		</tr>-->

		

		</form>
	</table>
	<a href="#" onclick="history.back(-1)">돌아가기</a>
	<a href="delete?a_no=<c:out value="${boardInfo.a_no}"/>">삭제</a>
	<a href="insert?a_no=<c:out value="${boardInfo.a_no}"/>">수정</a>
</body>
</html>