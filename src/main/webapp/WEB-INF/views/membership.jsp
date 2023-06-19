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
<title>멤버십 페이지</title>
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
   integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
   crossorigin="anonymous">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<link rel="stylesheet" type="text/css" href="./css/style_membership.css">
</head>
<body>
	   <div class="wrap">
      <header>
         <h1><a href="/"><img src="./img/logo.png" width="150px" style="cursor:pointer"></a></h1>
         <nav>
            <ul>
               <li><a href="#"><i class="fas fa-home"></i></a></li>
               <li><a href="#"><i class="fas fa-bars"></i></a></li>
            </ul>
         </nav>
      </header>      
    <h1>Choose your subscription</h1>
    <div class="subscription">
      <div class="subscription-box">
        <div class="level-header">
          <h3>Bronze</h3>
        </div>
        <div class="subscription-content">
          <p>Explanation Explanation</p>
        </div>
        <div class="subscription-footer">
          <hr class="footer-divider" />
          <p>$10/month</p>
          <button id="bronze-button">Subscribe</button>
        </div>
      </div>

      <div class="subscription-box gold">
        <div class="level-header">
          <h2>Gold</h2>
        </div>
        <div class="subscription-content-recommend">
          <p>Explanation Explanation</p>
        </div>
        <div class="subscription-footer">
          <hr class="footer-divider" />
          <p>$20/month</p>
          <button id="gold-button">Subscribe</button>
        </div>
      </div>

      <div class="subscription-box">
        <div class="level-header">
          <h3>Silver</h3>
        </div>
        <div class="subscription-content">
          <p>Explanation Explanation</p>
        </div>
        <div class="subscription-footer">
          <hr class="footer-divider" />
          <p>$15/month</p>
          <button id="silver-button">Subscribe</button>
        </div>
      </div>
    </div>

    <div id="bronzeModal" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <img src="img/fflogo.png" />
        <h2>Bronze</h2>
        <form>
          <label>
            <input type="radio" name="subscription-length" value="B1-month" checked>
            <div class="clickable-box">              
              <p id="length-option">1month</p><br><br><br>
              <p id="length-price">7990원/month</p>
            </div>
          </label>
          <label>
            <input type="radio" name="subscription-length" value="B3-months">
            <div class="clickable-box">
              <p id="length-option">3months</p><br><br><br>
              <p id="length-price">5990원/month</p>
              <p id="discount-3m">25% off</p>
            </div>
          </label>
          <label>
            <input type="radio" name="subscription-length" value="B12-months">
            <div class="clickable-box">
              <p id="length-option">12months</p><br><br><br>
              <p id="length-price">2990원/month</p>
              <p id="discount-12m">62% off</p>
            </div>
          </label>
           <input type="submit" value="Subscribe">
        </form>
        </div>
      </div>
    </div>

    <div id="goldModal" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <img src="img/fflogo.png" />
        <h2>Gold</h2>
        <form>
          <label>
            <input type="radio" name="subscription-length" value="B1-month" checked>
            <div class="clickable-box">              
              <p id="length-option">1month</p><br><br><br>
              <p id="length-price">11990원/month</p>
            </div>
          </label>
          <label>
            <input type="radio" name="subscription-length" value="B3-months">
            <div class="clickable-box">
              <p id="length-option">3months</p><br><br><br>
              <p id="length-price">8990원/month</p>
              <p id="discount-3m">25% off</p>
            </div>
          </label>
          <label>
            <input type="radio" name="subscription-length" value="B12-months">
            <div class="clickable-box">
              <p id="length-option">12months</p><br><br><br>
              <p id="length-price">4500원/month</p>
              <p id="discount-12m">62% off</p>
            </div>
          </label>
           <input type="submit" value="Subscribe">
        </form>
        </div>
      </div>
    </div>

    <div id="silverModal" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <img src="img/fflogo.png" />
        <h2>Silver</h2>
        <form>
          <label>
            <input type="radio" name="subscription-length" value="B1-month" checked>
            <div class="clickable-box">              
              <p id="length-option">1month</p><br><br><br>
              <p id="length-price">9990원/month</p>
            </div>
          </label>
          <label>
            <input type="radio" name="subscription-length" value="B3-months">
            <div class="clickable-box">
              <p id="length-option">3 months</p><br><br><br>
              <p id="length-price">7490 won/month</p>
              <p id="discount-3m">25% off</p>
            </div>
          </label>
          <label>
            <input type="radio" name="subscription-length" value="B12-months">
            <div class="clickable-box">
              <p id="length-option">12months</p><br><br><br>
              <p id="length-price">3790원/month</p>
              <p id="discount-12m">62% off</p>
            </div>
          </label>
           <input type="submit" value="Subscribe">
        </form>
        </div>
      </div>
    </div>

   </div>
   <aside>
      <div class="user_profile">
         <a href="#">
            <i class="fas fa-user-circle fa-3x"></i>
            <h4>김채연</h4>
            <span>등급</span>
         </a>
         
      </div>
      <div>
         <ul class="chat_list">
            <li><a href="#">
                  <i class="fas fa-user-circle fa-2x"></i>
                  <div class="name">김지수</div>
                  <span class="recent_msg">안녕하세요</span>
            </a></li>
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

	var bronzeModal = document.getElementById("bronzeModal");
	var silverModal = document.getElementById("silverModal");
	var goldModal = document.getElementById("goldModal");


	var bronzeBtn = document.getElementById("bronze-button");
	var silverBtn = document.getElementById("silver-button");
	var goldBtn = document.getElementById("gold-button");


	var bronzeClose = bronzeModal.querySelector(".close");
	var silverClose = silverModal.querySelector(".close");
	var goldClose = goldModal.querySelector(".close");


	bronzeBtn.onclick = function() {
	  bronzeModal.style.display = "block";
	}
	silverBtn.onclick = function() {
	  silverModal.style.display = "block";
	}
	goldBtn.onclick = function() {
	  goldModal.style.display = "block";
	}


	bronzeClose.onclick = function() {
	  bronzeModal.style.display = "none";
	}
	silverClose.onclick = function() {
	  silverModal.style.display = "none";
	}
	goldClose.onclick = function() {
	  goldModal.style.display = "none";
	}


	window.onclick = function(event) {
	  if (event.target == bronzeModal) {
	    bronzeModal.style.display = "none";
	  }
	  if (event.target == silverModal) {
	    silverModal.style.display = "none";
	  }
	  if (event.target == goldModal) {
	    goldModal.style.display = "none";
	  }
	}


	</script>
	<%@ include file="main_footer.jsp"%>
</body>
</html>