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
<style>
header nav {
	position: absolute;
	right: 0;
	
}

header nav ul li {
	float: left;
}

.dropmenu {
	cursor: pointer;
	float: left;
	padding-left: 350px;
}

.dropmenu ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

.dropmenu li {
	float: left;
	padding: 0px;
}

#current {
	margin-right: 50px;
	padding-left: 50px;
}

.dropmenu li a {
	display: block;
	margin: 0px;
	line-height: 80px;
	padding: 0px 30px;
	text-align: center;
	text-decoration: none;
}

.dropmenu li a:hover, .dropmenu ul li:hover a {
	text-decoration: none;
}

.dropmenu li ul {
	display: none;
	height: auto;
	border: 0px;
	border-radius: 5px;
	background-color:white;
	position: absolute;
	padding-left: 10px;
	width: 130px;
	z-index: 100;
	/*top:1em;
/*left:0;*/
}

.dropmenu li:hover ul {
	display: block;
}

.dropmenu li li {
	display: block;
	float: none;
	margin: 0px;
	padding: 0px;
	width: 100px;
}

.dropmenu li:hover li a {
	background: none;
}

.dropmenu li ul a {
	display: block;
	height: 60px;
	line-height: 50px;
	font-size: 15px;
	margin: 0px;
	padding: 0px 10px 0px 15px;
	text-align: center;
}

.dropmenu li ul a:hover, .dropmenu li ul li:hover a {
	border: 0px;
	color: #57abff;
	text-decoration: none;
}

.dropmenu p {
	clear: left;
}

#rank {
  margin-top: 13px;
}

</style>
</head>
<body>
	<header>
		<h1>
			<a href="/"><img src="./img/logo.png" width="200px"></a>
		</h1>
		<nav>
			<ul>
				<sec:authorize access="isAnonymous()">
					<li><a href="/login">로그인</a></li>
					<li><a href="/join">회원가입</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">					
				<nav>
					<div class="dropmenu">
					<ul>
					    <li id="rank"><a href="/membership"><button class="btn3" type="button">구독</button></a></li>
						<li><a href="/matchSearch"><i class="fas fa-home"></i></a></li>
						<li><a href="#" id="current"><i class="fas fa-bars"></i></a>
						<ul>
							<li><a href="/myProfile?${user.custno}">마이페이지</a></li>
							<li><a href="/matchSearch?${user.custno}">탐색리스트</a></li>
							<li><a href="/likeList">Like목록</a></li>
							<li><a href="/supportBoard">문의하기</a></li>
							<li><a href="/logout">로그아웃</a></li>
						</ul>
						</li>
					</ul>
					</div>
			   </nav>					
			   </sec:authorize>
			</ul>
		</nav>
	</header>
</body>
</html>