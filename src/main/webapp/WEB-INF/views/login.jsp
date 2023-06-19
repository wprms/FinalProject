<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>로그인 페이지</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/style_loginform.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>

<body>
	<%@ include file="main_header.jsp"%>
	<main class="support">
		<div class="menu_wrap">
		
		<h2>친구부터 시작할까요?</h2>
		
		<form:form name="f" action="/loginProcess" method="POST" class="loginform">
			
			<p>
				<label for="custid">ID</label> <input type="text" id="custid"
					name="custid" />
			</p>
			<p>
				<label for="custpw">비밀번호</label> <input type="password"
					id="custpw" name="custpw" />
			</p>
			<%-- <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> --%>
			<button type="submit" class="btn login">로그인</button>
			<c:if test="${param.error != null}">
				<p>아이디 또는 비밀번호가 잘못되었습니다.</p>
			</c:if>
			<c:if test="${param.logout != null}">
				<p>로그아웃 하였습니다.</p>
			</c:if>
		</form:form>
		</div>
	</main>
	<%@ include file="main_footer.jsp"%>


</body>
</html>