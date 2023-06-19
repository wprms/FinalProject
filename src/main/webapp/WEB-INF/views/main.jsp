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
<title>친구부터</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/style_main.css">
</head>

<body>
	<%@ include file="main_header.jsp"%>
	<main>
		
		<section class="main_image">
			<img src="./img/main_img1.jpg"> <a href="/join"><sec:authorize access="isAnonymous()"><button
					class="btn1" type="button" style="cursor: pointer">가입하기</button></a> <a
				href="/login"><button class="btn2" type="button"
					style="cursor: pointer">로그인</button></a></sec:authorize>
		</section>
			<section class="contents">
			<article class="sub-image">
				<img src="./img/sub_img1.jpg">
			</article>
			<article class="info">
				<h2>친구부터</h2>
				<p>'친구부터'는 다양한 관계로 이어질 수 있는 가능성을 가지고 있는 곳입니다. 회원들이 자신있게 온라인에서 데이트
					상대 또는 우정을 쌓을 친구를 찾을 수 있고, 본인에게 맞는 상대를 쉽고 재미있게 탐색할 수 있도록 도와드리고
					있습니다. LIKE를 누르고, 대화를 시작하여 새로운 관계를 형성할 수 있는 가능성을 만들어보세요. '친구부터'는 서로에
					대한 존중과 친절한 태도를 기반으로 안전한 온라인 커뮤니티를 제공할 수 있도록 최선을 다하겠습니다. <br><br> 
					'친구부터'는 친구부터 웹사이트에서 무료로 이용할 수 있습니다. 무료 버전에서도 프로필을 LIKE하여 탐색을 즐길 수 있습니다. 
					브론즈, 실버, 골드로 업그레이드하여 더욱 수준높은 '친구부터'를 경험해 보세요! 
					구독 서비스 등급을 자세히 알아보고 나에게 가장 잘 맞는 서비스를 선택해 보셔도 좋아요.</p>
			</article>
			<article class="sns">
				<h2>SNS</h2>
				<ul>
					<li><a href="https://www.twitter.com"><i class="fab fa-twitter fa-2x"></i></a></li>
					<li><a href="https://www.instagram.com"><i class="fab fa-instagram fa-2x"></i></a></li>
					<li><a href="https://www.facebook.com"><i class="fab fa-facebook fa-2x"></i></a></li>
				</ul>
			</article>
		</section>
	</main>
	<%@ include file="main_footer.jsp"%>
</body>
</html>