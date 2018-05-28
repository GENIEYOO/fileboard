<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시글</title>
</head>
<body>
	<table border=1>
			<caption><h1>음악 게시판</h1></caption><br>
			
			<thead>
			<tr>
			
			<th>번호</th>
			<th>제목</th>
			<th>등록자</th>
			<th>등록일</th>
			<th>조회수</th>
			
			</tr>
			
			</thead>
			<tbody>
				<c:forEach var="board" items="${BoardList}" varStatus="status">
					<c:url var="link" value="boardDetail">
						<c:param name="a_no" value="${board.a_no}"/>
					</c:url>
					<tr>
						<td><c:out value="${board.a_no}"/></td>
						<td><a href="${link}"><c:out value="${board.a_title}"/></a></td>
						<td><c:out value="${board.a_user}"/></td>
						<td><c:out value="${board.regdate}"/></td>
						<td><c:out value="${board.hit}"/></td>	
					</tr>
				</c:forEach>
			</tbody>
	</table>
	</br>
	<text align="right"><a href="insert">새 글</a></text>
	
	
			
</body>
</html>