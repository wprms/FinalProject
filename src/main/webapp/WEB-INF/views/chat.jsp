<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
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

<link rel="stylesheet" href="css/style_chat.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>


</head>
<body onload="loadNewMessages();">
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
								<li><a href="/contact">문의하기</a></li>
								<li><a href="/logout">로그아웃</a></li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>

		<section class="content">
			<article class="chat_content">
				<div class="chat_messages"></div>
				<form id="addMsg">
					<div class="chat_input">
						<textarea class="message_input" id="message" name="msg"
							autocomplete="off" placeholder="메시지를 입력하세요."></textarea>
						<button type="submit" class="send_message_btn">
							<i class="far fa-paper-plane"></i>
						</button>
					</div>
				</form>
			</article>
		</section>
	</div>
	<aside>
		<div class="user_profile">
			<!--  <h3>나의 프로필</h3> -->

			<a href="/myProfile?${custno}"> <i
				class="fas fa-user-circle fa-3x"></i>
				<h4>${custname}</h4> <span>${custrank}</span>
			</a>

		</div>
		<div class="addChatlist">
			<!--   <h3>채팅 목록</h3> -->
			<ul class="chat_list">
				<c:forEach var="chatList" items="${chatList}">
					<li><a id="${chatList.chatno}"
						href="/chat?chatno=${chatList.chatno}"> <i
							class="fas fa-user-circle fa-2x"></i>
							<div class="partner_name">${chatList.partnername}</div> <span
							class="recent_msg">${chatList.recentMsg}</span>
					</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="footer">
			<ul>
				<li><a href="/sitePolicy">이용약관</a></li>
				<li><a href="/userPolicy">취급방침</a></li>
				<li><a href="#">문의하기</a></li>
			</ul>
		</div>
	</aside>
<script>
	
	var msgno = -1; // 마지막 채팅 ID
	
	$(".message_input").keypress(function (e) {
	    if (e.which == 13 && !e.shiftKey) { // 엔터를 입력하면
	           e.preventDefault(); // 기본 엔터 동작 방지
	           sendMessage(); // 메시지 전송 함수 호출
	       }
	  	  });	    
	  
	$("#addMsg").submit(function(event){
	        event.preventDefault();
	        sendMessage();
	    });
	    
	   	//메시지 불러오기
	function loadNewMessages(){
	   		
		const searchParams = new URLSearchParams(location.search);
		for (const param of searchParams) {
		console.log(param);
		}
		var chatno = searchParams.get('chatno');
					
		$.ajax({
			type:"GET",
			url:"/chat/getNewMsg",
			data:{
				"chatno" : chatno,
				"msgno" : msgno // 마지막 채팅 ID 전달
			},			
			success: function(result){
				console.log(result);
			   // 새로운 채팅이 있을 경우
				result.forEach(function(item) {
	           // 메시지 출력
				var messageClass = item.custno === ${custno} ? 'outgoing' : 'incoming';
 				var messageTime = item.chattime;
  				var messageElement = $('<div>').addClass('message');
  				var messageText = $('<div>').addClass('message_text');
 				var messageContent = $('<p>').addClass('message_content').text(item.msg);
  				var messageTimeSpan = $('<span>').addClass('message_time').text(messageTime);

  				messageText.append(messageContent, messageTimeSpan);
			    messageElement.append(messageText);

  				$('.chat_messages').append(messageElement);

			    if (messageClass === 'outgoing') {
				  	 messageElement.addClass('outgoing');
				    } else {
				   	 messageElement.addClass('incoming');
				  	}

 				 msgno = item.msgno; // 마지막 msgno 갱신
 				 var chatMessages = $('.chat_messages');
				 chatMessages.scrollTop(chatMessages.prop('scrollHeight'));
													
	       	 });
			 },
			error: function(e) {
		        console.log("ERROR: ", e);
	   		}
			});
				
			 setTimeout(loadNewMessages, 1000);
		};
	
	//메시지 입력
	 function sendMessage() {
		
		const searchParams = new URLSearchParams(location.search);
		for (const param of searchParams) {
	  			console.log(param);
			}
		var chatno = searchParams.get('chatno');
		let msg = $('#message').val();
		
		if (msg.trim() === "") {
		      alert("메시지를 입력해주세요.");
		      return;
		}
		
		let form = {
			chatno : chatno,
			msg : msg
		};		
		
		$.ajax({
			type : "POST",
			url : "/chat/doAddMsg",
			data : form,			
			success : function(result) {
				msgno = -1; // 마지막 채팅 ID 초기화
				
				// 메시지 입력 필드 초기화
				$('.message_input').val('');				
				
			},
			 error : function(e) {
	            console.log("ERROR: ", e);
	        }
		});		
	  }
	

</script>
</body>
</html>
