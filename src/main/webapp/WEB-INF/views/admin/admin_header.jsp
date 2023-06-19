<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>
			<a href="/"><img src="../img/logo.png" width="200px"></a>
		</h1>
		<nav>
			<ul>
				<li><a href="/membership"><button class="btn3" type="button">구독</button></a></li>
				<sec:authorize access="isAnonymous()">
					<li><a href="/login">로그인</a></li>
					<li><a href="/join">회원가입</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<li><form:form action="/logout" method="POST">
							<input type="submit" value="로그아웃" />
						</form:form></li>
					<li><a href="/match"><i class="fas fa-home"></i></a></li>
					<li class="dropdown"><i class="fas fa-bars"></i>
					<span class="dropdown-content">
						<a href="/admin/board">문의게시판</a> 
						<a href="/admin/payment">매출현황</a> 
						<a href="/logout">로그아웃</a>
					</span>
					</li>
				</sec:authorize>
			</ul>
		</nav>
	</header>
</body>
</html>