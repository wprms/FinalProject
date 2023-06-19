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
<title>고객지원 페이지</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<link rel="stylesheet" type="text/css" href="./css/style_support.css">
</head>
<body>
<%@ include file="supportcenter_header.jsp" %>
  <img src="img/supportcenter.jpg" class="topimg" >
	<div class="container">
		<br><br>
		<h1>무엇을 도와드릴까요?</h1><br><br>
		<div class="box">
			<div class="links-box">
				<a href="/userGuide" class="link">유저 가이드</a>
				<a href="/userGuide" class="link">자주 묻는 질문</a>
				<a href="/supportBoard" class="link">관리자 문의</a>
				<a href="#" id="account-link" class="link" onclick="event.preventDefault();">계정 관리</a>
			</div>
		</div>
	</div>

	<div id="account-modal" class="modal">
		<div class="modal-content">
		  <span class="close">&times;</span>
		  <h2>Account Settings</h2>
		  <p>Please choose an option:</p>
		  <div class="link-box">
			<a href="#" class="link">Update Account</a>
			<a href="#" class="link" id="delete-account-link">Delete Account</a>
		  </div>
		</div>
	  </div>

	  <div id="delete-account-modal" class="modal">
		<div class="modal-content">
		  <span class="close">&times;</span>
		  <h2>Delete Account</h2>
		  <p>Please choose a reason for deleting your account:</p>
		  <form>
			<input type="radio" id="reason1" name="reason" value="reason1">
			<label for="reason1">I spend too much time on Facebook.</label>
			<input type="radio" id="reason2" name="reason" value="reason2">
			<label for="reason2">I have a privacy concern.</label><br>
			<input type="radio" id="reason3" name="reason" value="reason3">
			<label for="reason3">I don't feel safe on Facebook.</label><br>
			<input type="radio" id="reason4" name="reason" value="reason4">
			<label for="reason4">Fuck me</label><br>
			<input type="radio" id="reason5" name="reason" value="reason5">
			<label for="reason5">Fuck this shit</label><br><br>
			<label for="other">Others:</label>
			<input type="text" id="other-reason" name="other-reason"><br><br>
			<button type="submit" id="delete-account-button">Delete Account</button>
		  </form>

		</div>
	  </div>
<%@ include file="main_footer.jsp" %>
<script>
var accountModal = document.getElementById("account-modal");
var accountBtn = document.getElementById("account-link");
var accountSpan = accountModal.getElementsByClassName("close")[0];



accountBtn.onclick = function () {
  accountModal.style.display = "block";
}



accountSpan.onclick = function () {
  accountModal.style.display = "none";
}

window.onclick = function (event) {
  if (event.target == accountModal) {
    accountModal.style.display = "none";
  }
}

var deleteAccountModal = document.getElementById("delete-account-modal");
var deleteAccountBtn = document.getElementById("delete-account-link");
var deleteAccountSpan = deleteAccountModal.getElementsByClassName("close")[0];

deleteAccountBtn.onclick = function () {
  deleteAccountModal.style.display = "block";
}

deleteAccountSpan.onclick = function () {
  deleteAccountModal.style.display = "none";
}

window.onclick = function (event) {
  if (event.target == deleteAccountModal) {
    deleteAccountModal.style.display = "none";
  }
}
</script>
</body>
</html>