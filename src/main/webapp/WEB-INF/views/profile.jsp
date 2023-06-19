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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>안녕하세요!</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

<link rel="stylesheet" href="css/style_user.css">
<style>
.profile_wrap {
	width: 100%;
	height: 600px;
	background-color: #ececec;
	border: 1px solid #EEE;
	border-radius: 10px;
	box-shadow: 2px 2px #DDD;
	margin-top: 8%;
}

.profile_wrap>div {
	float: left;
	width: 50%;
	height: 100%;
}

.profile_wrap .left_side img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.profile_wrap .right_side {
	padding: 50px;
}

.button_wrap {
	margin: 20px auto;
	text-align: center;
}

.button_wrap .btn {
	width: 50px;
	height: 50px;
	margin: 0 20px;
	border-radius: 50%;
	border: 1px solid #EEE;
	box-shadow: 2px 2px #DDD;
}

.button_wrap .btn i {
	color: #ececec;
}

.button_wrap .btn:hover i {
	color: #AEAEAE;
}
</style>

<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//LIKE 버튼클릭
		$("#like").click(function(event) {
			
			event.preventDefault();
						
			const searchParams = new URLSearchParams(location.search);
			for (const param of searchParams) {
		  			console.log(param);
				}
			var partnerno = searchParams.get('custno');
			console.log(partnerno);
					
			/*
			$.ajax({
			     type : `http method type`,
			     url : `url`,
			     data : `서버에 전송할 데이터`,
			     contentType : "전송할 데이터 타입",
			     //기본 값 : "application / x-www-form-urlencoded; charset = UTF-8"  
			     dataType : '서버로 부터 수신할 데이터 타입',
			     //아무것도 지정하지 않으면 jQuery는 응답의 MIME 유형을 기반으로 해석을 시도
			     error : `에러 발생시 수행할 함수`,
			     success : `성공시 수행할 함수`
			   });
			 */

			$.ajax({
				type : "POST",
				url : "/like",
				data : {"partnerno" : partnerno},
				success : function(result) {
					console.log(result);
					// Redirect to matchSearch.jsp
				},
				error : function(e) {
					console.log(e);
				}
			});
			alert("like리스트에 추가되었습니다.");
			window.location.href = "/matchSearch";
		});
				
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		//DISLIKE 버튼클릭
		$("#dislike").click(function(event) {
			
			event.preventDefault();
						
			const searchParams = new URLSearchParams(location.search);
			for (const param of searchParams) {
		  			console.log(param);
				}
			var partnerno = searchParams.get('custno');
			console.log(partnerno);
			
			$.ajax({
				type : "POST",
				url : "/dislike",
				data : {"partnerno" : partnerno},
				success : function(result) {
					console.log(result);
					// Redirect to matchSearch.jsp
				},
				error : function(e) {
					console.log(e);
				}
			});
			alert("탐색리스트에서 삭제하였습니다.");
			window.location.href = "/matchSearch";
		});
				
	});
</script>
<script>
$(document).ready(function() {
//SUPER LIKE 버튼클릭
		$("#superlike").click(function(event) {
			
			event.preventDefault();
						
			const searchParams = new URLSearchParams(location.search);
			for (const param of searchParams) {
		  			console.log(param);
				}
			var partnerno = searchParams.get('custno');
			var partnername = $("#partnername").text();
			console.log(partnerno, partnername);
					
			let form ={
					 partnerno : partnerno,
					 partnername : partnername
				 };
				
			$.ajax({
				type:"POST",
				url:"/doAddChatList",
				data:form,
				success: function(result){
					console.log(result);
					alert('채팅이 추가되었습니다.');	
					window.location.href = "/matchSearch";
				},
				error: function(e){
				console.log(e);
					}
				});
		});
});
</script>

</head>

<body>
	<c:set var="custno" value="${sessionScope.custno}" />
	<c:set var="custname" value="${sessionScope.custname}" />
	<c:set var="custrank" value="${sessionScope.custrank}" />
	<div class="wrap">
		<header>
			<h1>
				<a href="/"><img src="./img/logo.png" width="150px"
					style="cursor: pointer"></a>
			</h1>
			<nav>
				<div class="dropmenu">
					<ul>
						<li><a href="/"><i class="fas fa-home"></i></a></li>
						<li><a href="#" id="current"><i class="fas fa-bars"></i></a>
							<ul>

								<li><a href="/myProfile?${custno}">마이페이지</a></li>
								<li><a href="/matchSearch?${custno}">탐색리스트</a></li>
								<li><a href="/likeList?${custno}">Like목록</a></li>
								<li><a href="/supportBoard">문의하기</a></li>
								<li><a href="/logout">로그아웃</a></li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<section class="content">

			<article>
				<div class="profile_wrap">
					<div class="left_side">
						<img src="img/${profile.imgname1}" alt="${profile.imgname1}">
					</div>
					<div class="right_side">
						<ul>
							<h2>
								<li id="partnername">${profile.custname}</li>
							</h2>
							<li>나이 : ${profile.custage}</li>
							<li>생년월일 : ${profile.custbirth}</li>
							<li>${profile.zodiac}</li>
							<li>${profile.custloc}</li>
							<li>${profile.mbti}</li>
							<li>${profile.sns}</li>

						</ul>
					</div>
				</div>
				<div class="button_wrap">
					<button id="dislike" class="btn">
						<i class="fas fa-thumbs-down" style="color: #57abff"></i>
					</button>
					<button id="superlike" class="btn">
						<i class="fas fa-heart" style="color: #ff53b6"></i>
					</button>
					<button id="like" class="btn">
						<i class="fas fa-thumbs-up" style="color: #57abff"></i>
					</button>
				</div>
			</article>
		</section>
	</div>
	<!-- end of wrap -->
	<aside>
		<div class="user_profile">
			<!--  <h3>나의 프로필</h3> -->

			<a href="/profile?custno=${custno}"> <i
				class="fas fa-user-circle fa-3x"></i>
				<h4>${custname}</h4> <span>${custrank}</span>
		</div>
		<div>
			<!--   <h3>채팅 목록</h3> -->
			<div class="addChatlist">
				<!--   <h3>채팅 목록</h3> -->
				<ul class="chat_list">
					<c:forEach var="chatList" items="${chatList}">
						<li><a href="/chat?chatno=${chatList.chatno}"> <i
								class="fas fa-user-circle fa-2x"></i>
								<div class="partner_name">${chatList.partnername}</div> <span
								class="recent_msg">${chatList.recentMsg}</span>
						</a></li>
						<!-- 
            <li><a href="#">
                  <figure>
                     <img src="#" class="rounded" alt="userimg">
                  </figure>
                  <div class="name">김지수</div> <span class="recent_msg">안녕하세요</span>
            </a></li>
             -->
					</c:forEach>
				</ul>
			</div>

		</div>
		<div class="footer">
			<ul>
				<li><a href="/sitePolicy">이용약관</a></li>
				<li><a href="/userPolicy">취급방침</a></li>
				<li><a href="/supportBoard">문의하기</a></li>
			</ul>
		</div>
	</aside>
</body>

</html>