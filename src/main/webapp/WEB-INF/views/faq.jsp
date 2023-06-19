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
<title>고객지원 페이지 - 자주 하는 질문</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/style_support.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="./js/supportmenu.js"></script>
</head>
<body>
	<%@ include file="main_header.jsp"%>
	<main class="support">
		<div class="menu_wrap">
			<h2>자주 하는 질문</h2>
			<article>
				<p class="question">질문</p>
				<p class="answer">내용</p>
			</article>
			<article>
				<p class="question">질문</p>
				<p class="answer">내용</p>
			</article>
			<article>
				<p class="question">질문</p>
				<p class="answer">내용</p>
			</article>
			<article>
				<p class="question">질문</p>
				<p class="answer">내용</p>
			</article>
		</div>
	</main>
	<%@ include file="main_footer.jsp"%>
</body>

</html>