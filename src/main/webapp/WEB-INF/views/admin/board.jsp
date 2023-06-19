<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>관리자</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/style_joinform.css">
</head>

<body>
	<%@ include file="./admin_header.jsp"%>
	<main class="support">
		<div class="menu_wrap">
			<h2>관리자 문의 게시판</h2>
			<table cellpadding="0" cellspacing="0" border="1">
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>이름</td>
					<td>날짜</td>

				</tr>
				<c:forEach var="board" items="${boards}">
					<tr>
						<td>${board.textno}</td>
						<td>${board.title}</td>
						<td>${board.custname}</td>
						<td>${board.inqdate}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="4"><a href="write_view">글작성</a></td>
				</tr>
			</table>
		</div>
	</main>
	<%@ include file="./admin_footer.jsp"%>
</body>
</html>