<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form name="insertform" action="boardSave" method="post" enctype="multipart/form-data">

		<table>
			<caption>게시물 수정</caption>

			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="a_title" size="20" maxlength="20" value="<c:out value="${boardInfo.a_title}"/>">
				</td>
			</tr>

			<tr>
				<th>작성자</th>
				<td><input type="text" name="a_user" size="20" maxlength="20" value="<c:out value="${boardInfo.a_user}"/>"></td>
			</tr>

			<tr>
				<th>내용</th>
				<td><textarea name="content" rows="5" cols="60"><c:out value="${boardInfo.content}"/></textarea>
				
				</td>
			</tr>
			<tr>
			 	<th>첨부</th>
				 <td><input type="file" name="uploadfile" multiple=""/></td>
			 </tr>


			<!-- <tr>
		<th>비밀번호</th>
		<td><input type="password", name="pwd" required="required"/></td>
		</tr>-->
		</table>
		<input type= "hidden" name="a_no" value="<c:out value="${boardInfo.a_no}"/>">
		<a href="#" onclick="insertform.submit()">저장</a>
	</form>
</body>
</html>