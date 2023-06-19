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
<link rel="stylesheet" href="css/style_likeList.css">
<script
   src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
   integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
   crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script type="text/javascript">

	function updateUI() {
      location.reload();	  
	}
	
	//채팅 추가
	function addchatList(partnerno, partnername){
	 console.log(partnerno + ":" + partnername);
	 
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
			deleteLikeList(partnerno);
			alert('채팅이 추가되었습니다.');	
			updateUI();
		},
		error: function(e){
		console.log(e);
			}
		});
 	}
		
	
	//LIST 삭제
	function deleteLikeList(partnerno){
	$.ajax({
		type : "POST",
		url:"/deleteLikeList/" + partnerno,
		success: function(result){
			console.log(result);
			updateUI();
		},
		error: function(e){
			console.log(e);
		}
		});	  
	}
	
	
</script>    
</head>

<body>
	
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
								<li><a href="/myProfile?${user.custno}">마이페이지</a></li>
								<li><a href="/matchSearch?${user.custno}">탐색리스트</a></li>
								<li><a href="/contact">문의하기</a></li>
								<li><a href="/logout">로그아웃</a></li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<section class="content">
        <button type="button" class="btn btn-outline-secondary" id="filterDropdownButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">필터
				설정</button>
			<div class="dropdown-menu" aria-labelledby="filterDropdownButton">
				<div class="p-2">
					<a href="/likeList?${custno}">나를 좋아하는 유저</a>
				</div>
				<div class="p-2">
					<a href="/likeListRe?${custno}">내가 좋아하는 유저</a>
				</div>				
			</div>
         <article>
           <!-- 더보기 버튼 누르면 2row*3col 추가 -->
            <!-- col을 mouserover 하면 보여주는 형식 -->
            <div class="col-sm-12 padding-right">
               <div class="features_items">
                  <div class="row">
                     <c:forEach var="user" items="${likeList}">
                        <c:forEach var="img" items="${user.imgList}">
                           <div class="col-sm-4">
                              <div class="product-image-wrapper">
                                 <div class="single-products">
                                    <div class="productinfo text-center">
                                       <img src="img/${img.imgname1}" alt="${img.imgname1}" />
                                       </div>
                                    <div class="product-overlay">
                                       <div class="overlay-content">
                                         <h2 id="partnername">${user.custname}</h2>
                                          <p>${user.custage}</p>
                                          <p id="partnerno" style="display:none;">${user.custno}</p> 
                                          <a href="${pageContext.request.contextPath}/likeprofile?custno=${user.custno}" class="btn btn-default add-to-cart"><i
                                             class="fa fa-search-plus"></i>상세보기</a>
                                          <button onclick="addchatList('${user.custno}', '${user.custname}')" type="button" id="addchatlist" class="btn btn-default add-to-cart"><i
                                             class="fa fa-comment-dots"></i>채팅하기</button>
                                          <button onclick="deleteLikeList('${user.custno}')" type="button" class="btn btn-default add-to-cart"><i
                                             class="fa fa-times-circle"></i>취소하기</button>   
                                       </div>
                                    </div>
                                 </div>
                               </div>
                           </div>
                        </c:forEach>
                     </c:forEach>
                  </div>
               </div>
            </div>
          
      </article>
      </section>
   </div>
   
   <aside>
   	<c:set var="custname" value="${sessionScope.custname}" />
   	<c:set var="custrank" value="${sessionScope.custrank}" />	
      <div class="user_profile">
         <!--  <h3>나의 프로필</h3> -->
         <a href="/myProfile?${user.custno}">
            <i class="fas fa-user-circle fa-3x"></i>
            <h4>${custname}</h4>
            <span>${custrank}</span>
         </a>
         
      </div>
      <div>
         <!--   <h3>채팅 목록</h3> -->
         <ul class="chat_list">
         <c:forEach var="chatList" items="${chatList}" >
            <li><a href="${pageContext.request.contextPath}/chat?chatno=${chatList.chatno}">
                <i class="fas fa-user-circle fa-2x"></i>
                <div class="partner_name">${chatList.partnername}</div>
                <span class="recent_msg">${chatList.recentMsg}</span>
            </a></li>            
		 </c:forEach> 
         </ul>     
      </div>
      <div class="footer">
         <ul>
            <li><a href="/sitePolicy">이용약관</a></li>
            <li><a href="/userPolicy">취급방침</a></li>
            <li><a href="/supportBoard">문의하기</a></li>
         </ul>
      </div>
   </aside>
   
<script>
	
var custno = ${user.custno};

$ajax({
	type:"GET",
	url:"/profile?custno=custno",
	data:{
		"custno" : custno
	},
	success: function(result){
		console.log(result);
	},
	error: function(e){
		console.log(e);
	}
});		
	
</script>

   
</body>

</html>