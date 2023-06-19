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
<link rel="stylesheet" type="text/css" href="./css/style_scheader.css">
</head>
<body>
	<header>
		<div class="logo">
			<img src="img/fflogo.png">
		</div>
		<div class="menu">
			<ul>
				<li><a href="#"><img id="home-logo" src="img/home.png"></a></li>
				<li id="dropdown" class="dropdown">
					<a href="#"><img id= "dropdown-logo" src="img/dropdown.png"></a>
					<div class="dropdown-content">
						<a href="#">Link 1</a>
						<a href="#">Link 2</a>
						<a href="#">Link 3</a>
					</div>
				</li>
			</ul>
		</div>
	</header>
</body>
</html>