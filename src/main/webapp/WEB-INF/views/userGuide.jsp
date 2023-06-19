<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>사용자가이드</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Lato:400,700,900italic,300italic,300,100italic,100,700italic,400italic,900'>
<link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.3/animate.min.css'><link rel="stylesheet" href="css/style_guide.css">
</head>
<body>
	<header>
		<div class="logo">
			<img src="img/fflogo.png">
		</div>
		<div class="menu">
			<ul>
				<li><a href="#"><img src="img/home.png"></a></li>
				<li id="dropdown" class="dropdown">
					<a href="#"><img src="img/dropdown.png"></a>
					<div class="dropdown-content">
						<a href="#">Link 1</a>
						<a href="#">Link 2</a>
						<a href="#">Link 3</a>
					</div>
				</li>
			</ul>
		</div>
	</header>

<!-- partial:index.partial.html -->
<section class="cd-faq">
  <ul class="cd-faq-categories">
    <li><a class="selected" href="#basics">회원 가입 및 시작</a></li>
    <li><a href="#mobile">프로필 및 계정</a></li>
    <li><a href="#account">설정</a></li>
    <li><a href="#payments">매치 및 탐색</a></li>
    <li><a href="#privacy">청구 및 결제</a></li>
    <!-- <li><a href="#delivery">Delivery</a></li> -->
  </ul>
  <!-- cd-faq-categories-->
  <div class="cd-faq-items">
    <ul class="cd-faq-group" id="basics">
      <li class="cd-faq-title">
        <h2>회원 가입 및 시작</h2>
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">1. 계정 생성</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit quidem delectus rerum eligendi mollitia, repudiandae quae beatae. Et repellat quam atque corrupti iusto architecto impedit explicabo repudiandae qui similique aut iure ipsum quis inventore nulla error aliquid alias quia dolorem dolore, odio excepturi veniam odit veritatis. Quo iure magnam, et cum. Laudantium, eaque non? Tempore nihil corporis cumque dolor ipsum accusamus sapiente aliquid quis ea assumenda deserunt praesentium voluptatibus, accusantium a mollitia necessitatibus nostrum voluptatem numquam modi ab, sint rem.</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">2. 아이디 및 비밀번호 찾기</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">3. 회원</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      
    </ul>
    <!-- cd-faq-group-->
    <ul class="cd-faq-group" id="mobile">
      <li class="cd-faq-title">
        <h2>프로필 및 계정</h2>
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">1. 프로필 생성</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur accusantium dolorem vel, ad, nostrum natus eos, nemo placeat quos nisi architecto rem dolorum amet consectetur molestiae reprehenderit cum harum commodi beatae necessitatibus. Mollitia a nostrum enim earum minima doloribus illum autem, provident vero et, aspernatur quae sunt illo dolorem. Corporis blanditiis, unde, neque, adipisci debitis quas ullam accusantium repudiandae eum nostrum quis! Velit esse harum qui, modi ratione debitis alias laboriosam minus eaque, quod, itaque labore illo totam aut quia fuga nemo. Perferendis ipsa laborum atque assumenda tempore aspernatur a eos harum non id commodi excepturi quaerat ullam, explicabo, incidunt ipsam, accusantium quo magni ut! Ratione, magnam. Delectus nesciunt impedit praesentium sed, aliquam architecto dolores quae, distinctio consectetur obcaecati esse, consequuntur vel sit quis blanditiis possimus dolorum. Eaque architecto doloremque aliquid quae cumque, vitae perferendis enim, iure fugiat, soluta aut!</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">2. 프로필 수정</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">3. 계정 삭제</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
        </div>
        <!-- cd-faq-content-->
      </li>      
    </ul>
    <!-- cd-faq-group-->
    <ul class="cd-faq-group" id="account">
      <li class="cd-faq-title">
        <h2>설정</h2>
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">1. 필터 설정</a>
        <div class="cd-faq-content">
          <p>This is the foundation document for Lego V5's visual framework. All HTML is written in JADE, CSS is generated using SCSS and Javscript uses Coffeescript.</p>
          <p>This is the foundation document for Lego V5's visual framework. All HTML is written in JADE, CSS is generated using SCSS and Javscript uses Coffeescript. </p>
          <P>Codepen.io is used to demonstrate individual elements and modules. The naming scheme is based on BEM to create a human readable naming scheme. Selectors are not abbreviated as the extra characters for full names offers the benefit of clarity when working in teams. Abbrevtated selectros often leads to confusion and this cost outweights the ocst of a few extar characters in our markup.</P>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">2. 알림</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi cupiditate et laudantium esse adipisci consequatur modi possimus accusantium vero atque excepturi nobis in doloremque repudiandae soluta non minus dolore voluptatem enim reiciendis officia voluptates, fuga ullam? Voluptas reiciendis cumque molestiae unde numquam similique quas doloremque non, perferendis doloribus necessitatibus itaque dolorem quam officia atque perspiciatis dolore laudantium dolor voluptatem eligendi? Aliquam nulla unde voluptatum molestiae, eos fugit ullam, consequuntur, saepe voluptas quaerat deleniti. Repellendus magni sint temporibus, accusantium rem commodi?</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">3. 공개 설정</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">4. 차단 목록 관리</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">5. 언어 설정</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
        </div>
        <!-- cd-faq-content-->
      </li>
    </ul>
    <!-- cd-faq-group-->
    <ul class="cd-faq-group" id="payments">
      <li class="cd-faq-title">
        <h2>매치 및 탐색</h2>
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">1. 매치에 영향을 주는 요인들</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit quidem delectus rerum eligendi mollitia, repudiandae quae beatae. Et repellat quam atque corrupti iusto architecto impedit explicabo repudiandae qui similique aut iure ipsum quis inventore nulla error aliquid alias quia dolorem dolore, odio excepturi veniam odit veritatis. Quo iure magnam, et cum. Laudantium, eaque non? Tempore nihil corporis cumque dolor ipsum accusamus sapiente aliquid quis ea assumenda deserunt praesentium voluptatibus, accusantium a mollitia necessitatibus nostrum voluptatem numquam modi ab, sint rem.</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">2. 매치 회원에게 메시지 보내기</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi tempore, placeat quisquam rerum! Eligendi fugit dolorum tenetur modi fuga nisi rerum, autem officiis quaerat quos. Magni quia, quo quibusdam odio. Error magni aperiam amet architecto adipisci aspernatur! Officia, quaerat magni architecto nostrum magnam fuga nihil, ipsum laboriosam similique voluptatibus facilis nobis? Eius non asperiores, nesciunt suscipit veniam blanditiis veritatis provident possimus iusto voluptas, eveniet architecto quidem quos molestias, aperiam eum reprehenderit dolores ad deserunt eos amet. Vero molestiae commodi unde dolor dicta maxime alias, velit, nesciunt cum dolorem, ipsam soluta sint suscipit maiores mollitia assumenda ducimus aperiam neque enim! Quas culpa dolorum ipsam? Ipsum voluptatibus numquam natus? Eligendi explicabo eos, perferendis voluptatibus hic sed ipsam rerum maiores officia! Beatae, molestias!</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">3. 신고하기</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">4. 매치 취소하기</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">5. 메시지 삭제하기</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
        </div>
        <!-- cd-faq-content-->
      </li>
    </ul>
    <!-- cd-faq-group-->
    <ul class="cd-faq-group" id="privacy">
      <li class="cd-faq-title">
        <h2>청구 및 결제</h2>
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">1. 결제 방법</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis earum autem consectetur labore eius tenetur esse, in temporibus sequi cum voluptatem vitae repellat nostrum odio perspiciatis dolores recusandae necessitatibus, unde, deserunt voluptas possimus veniam magni soluta deleniti! Architecto, quidem, totam. Fugit minus odit unde ea cupiditate ab aperiam sed dolore facere nihil laboriosam dolorum repellat deleniti aliquam fugiat laudantium delectus sint iure odio, necessitatibus rem quisquam! Ipsum praesentium quam nisi sint, impedit sapiente facilis laudantium mollitia quae fugiat similique. Dolor maiores aliquid incidunt commodi doloremque rem! Quaerat, debitis voluptatem vero qui enim, sunt reiciendis tempore inventore maxime quasi fugiat accusamus beatae modi voluptates iste officia esse soluta tempora labore quisquam fuga, cum. Sint nemo iste nulla accusamus quam qui quos, vero, minus id. Eius mollitia consequatur fugit nam consequuntur nesciunt illo id quis reprehenderit obcaecati voluptates corrupti, minus! Possimus, perspiciatis!</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">2. 환불</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo tempore soluta, minus magnam non blanditiis dolore, in nam voluptas nobis minima deserunt deleniti id animi amet, suscipit consequuntur corporis nihil laborum facere temporibus. Qui inventore, doloribus facilis, provident soluta voluptas excepturi perspiciatis fugiat odit vero! Optio assumenda animi at! Assumenda doloremque nemo est sequi eaque, ipsum id, labore rem nisi, amet similique vel autem dolore totam facilis deserunt. Mollitia non ut libero unde accusamus praesentium sint maiores, illo, nemo aliquid?</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">3. 등급 업데이트</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
        </div>
        <!-- cd-faq-content-->
      </li>
      <li><a class="cd-faq-trigger" href="#0" style="color: white">4. 구독 취소하기</a>
        <div class="cd-faq-content">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum at aspernatur iure facere ab a corporis mollitia molestiae quod omnis minima, est labore quidem nobis accusantium ad totam sunt doloremque laudantium impedit similique iste quasi cum! Libero fugit at praesentium vero. Maiores non consequuntur rerum, nemo a qui repellat quibusdam architecto voluptatem? Sequi, possimus, cupiditate autem soluta ipsa rerum officiis cum libero delectus explicabo facilis, odit ullam aperiam reprehenderit! Vero ad non harum veritatis tempore beatae possimus, ex odio quo.</p>
        </div>
        <!-- cd-faq-content-->
      </li>
    </ul>
    <!-- cd-faq-group-->
  </div>
  <!-- cd-faq-items--><a class="cd-close-panel" href="#0">Close</a>
</section>
<!-- cd-faq-->
<!-- partial -->

<footer>
  <h3><img src = "./img/logo.png" width="180px"></h3>
  <ul class="footermenu">
    <li><a href="/userGuide" style="color: #62b0ff">사용자 가이드</a></li>
    <li><a href="/faq" style="color: #62b0ff">자주하는 질문</a></li>
    <li><a href="/contact" style="color: #62b0ff">문의하기</a></li>
    <li><a href="/sitePolicy" style="color: #62b0ff">이용 약관</a></li>
    <li><a href="/userPolicy" style="color: #62b0ff">취급 방침</a></li>
  </ul>
  <p> ⓒ 2023 All rights reserved</p>
</footer>
  <script src='https://cdn.jsdelivr.net/g/modernizr@2.8.3,jquery@2.1.4,jquery.lazyloadxt@1.0.4(jquery.lazyloadxt.min.js+jquery.lazyloadxt.video.js),jquery.owlcarousel@1.31,trianglify@0.3.1'></script>
  <script>
    jQuery(document).ready(function($){
	//update these values if you change these breakpoints in the style.css file (or _layout.scss if you use SASS)
	var MqM= 768,
		MqL = 1024;

	var faqsSections = $('.cd-faq-group'),
		faqTrigger = $('.cd-faq-trigger'),
		faqsContainer = $('.cd-faq-items'),
		faqsCategoriesContainer = $('.cd-faq-categories'),
		faqsCategories = faqsCategoriesContainer.find('a'),
		closeFaqsContainer = $('.cd-close-panel');
	
	//select a faq section 
	faqsCategories.on('click', function(event){
		event.preventDefault();
		var selectedHref = $(this).attr('href'),
			target= $(selectedHref);
		if( $(window).width() < MqM) {
			faqsContainer.scrollTop(0).addClass('slide-in').children('ul').removeClass('selected').end().children(selectedHref).addClass('selected');
			closeFaqsContainer.addClass('move-left');
			$('body').addClass('cd-overlay');
		} else {
	        $('body,html').animate({ 'scrollTop': target.offset().top - 19}, 200); 
		}
	});

	//close faq lateral panel - mobile only
	$('body').bind('click touchstart', function(event){
		if( $(event.target).is('body.cd-overlay') || $(event.target).is('.cd-close-panel')) { 
			closePanel(event);
		}
	});
	faqsContainer.on('swiperight', function(event){
		closePanel(event);
	});

	//show faq content clicking on faqTrigger
	faqTrigger.on('click', function(event){
		event.preventDefault();
		$(this).next('.cd-faq-content').slideToggle(200).end().parent('li').toggleClass('content-visible');
	});

	//update category sidebar while scrolling
	$(window).on('scroll', function(){
		if ( $(window).width() > MqL ) {
			(!window.requestAnimationFrame) ? updateCategory() : window.requestAnimationFrame(updateCategory); 
		}
	});

	$(window).on('resize', function(){
		if($(window).width() <= MqL) {
			faqsCategoriesContainer.removeClass('is-fixed').css({
				'-moz-transform': 'translateY(0)',
			    '-webkit-transform': 'translateY(0)',
				'-ms-transform': 'translateY(0)',
				'-o-transform': 'translateY(0)',
				'transform': 'translateY(0)',
			});
		}	
		if( faqsCategoriesContainer.hasClass('is-fixed') ) {
			faqsCategoriesContainer.css({
				'left': faqsContainer.offset().left,
			});
		}
	});

	function closePanel(e) {
		e.preventDefault();
		faqsContainer.removeClass('slide-in').find('li').show();
		closeFaqsContainer.removeClass('move-left');
		$('body').removeClass('cd-overlay');
	}

	function updateCategory(){
		updateCategoryPosition();
		updateSelectedCategory();
	}

	function updateCategoryPosition() {
		var top = $('.cd-faq').offset().top,
			height = jQuery('.cd-faq').height() - jQuery('.cd-faq-categories').height(),
			margin = 20;
		if( top - margin <= $(window).scrollTop() && top - margin + height > $(window).scrollTop() ) {
			var leftValue = faqsCategoriesContainer.offset().left,
				widthValue = faqsCategoriesContainer.width();
			faqsCategoriesContainer.addClass('is-fixed').css({
				'left': leftValue,
				'top': margin,
				'-moz-transform': 'translateZ(0)',
			    '-webkit-transform': 'translateZ(0)',
				'-ms-transform': 'translateZ(0)',
				'-o-transform': 'translateZ(0)',
				'transform': 'translateZ(0)',
			});
		} else if( top - margin + height <= $(window).scrollTop()) {
			var delta = top - margin + height - $(window).scrollTop();
			faqsCategoriesContainer.css({
				'-moz-transform': 'translateZ(0) translateY('+delta+'px)',
			    '-webkit-transform': 'translateZ(0) translateY('+delta+'px)',
				'-ms-transform': 'translateZ(0) translateY('+delta+'px)',
				'-o-transform': 'translateZ(0) translateY('+delta+'px)',
				'transform': 'translateZ(0) translateY('+delta+'px)',
			});
		} else { 
			faqsCategoriesContainer.removeClass('is-fixed').css({
				'left': 0,
				'top': 0,
			});
		}
	}

	function updateSelectedCategory() {
		faqsSections.each(function(){
			var actual = $(this),
				margin = parseInt($('.cd-faq-title').eq(1).css('marginTop').replace('px', '')),
				activeCategory = $('.cd-faq-categories a[href="#'+actual.attr('id')+'"]'),
				topSection = (activeCategory.parent('li').is(':first-child')) ? 0 : Math.round(actual.offset().top);
			
			if ( ( topSection - 20 <= $(window).scrollTop() ) && ( Math.round(actual.offset().top) + actual.height() + margin - 20 > $(window).scrollTop() ) ) {
				activeCategory.addClass('selected');
			}else {
				activeCategory.removeClass('selected');
			}
		});
	}
});
  </script>

</body>
</html>
