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
<title>회원가입</title>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/style_joinform.css">
<link rel="stylesheet" type="text/css" href="./css/style_interests.css">

<script src="./js/custloc.js"></script>
<script src="./js/date_zodiac.js"></script>
</head>
<body>
	<%@ include file="main_header.jsp"%>
	<main class="support">
		<div class="menu_wrap">
			<h2>회원 가입</h2>
			<form action="/addUser" method="post" enctype="multipart/form-data">
				<h3>기본 정보</h3>
				<p>
					<label for="custid"><span>ID</span></label><input type="text"
						id="custid" name="custid" required />
				</p>
				<p>
					<label for="custpw"><span>비밀번호</span></label><input type="password"
						id="custpw" name="custpw" required />
				</p>
				<p>
					<label for="sex"><span>성별</span></label><select id="sex"
						name="sex">
						<option value="남">남</option>
						<option value="여">여</option>						
					</select>
				</p>
				<p>
					<label for="custemail"><span>이메일</span></label><input type="email"
						id="custemail" name="custemail" required>
				</p>
				<p>
					<label for="custname"><span>이름</span></label><input type="text"
						id="custname" name="custname" required />
				</p>
				<p>
					<label for="custbirth"><span>생년월일</span></label> <input type="date"
						id="custbirth" name="custbirth" onchange="showZodiac()" required>
				</p>
				<p>
					<span>위치</span><input type="text" id="custloc" name="custloc"
						required>
				</p>
				<hr />

				<h3>선택 정보</h3>
				<p>
					<label for="zodiac"><span>별자리</span></label> <span class="zodiac"
						name="zodiac"></span> <input type="hidden" class="zodiac"
						name="zodiac" id="zodiac">
				</p>
				<p>
					<label for="mbti"><span>MBTI</span></label><select id="mbti"
						name="mbti">
						<option value="">--MBTI--</option>
						<option value="ESFP">ESFP</option>
						<option value="ESFJ">ESFJ</option>
						<option value="ESTP">ESTP</option>
						<option value="ESTJ">ESTJ</option>
						<option value="ENFP">ENFP</option>
						<option value="ENFJ">ENFJ</option>
						<option value="ENTP">ENTP</option>
						<option value="ENTJ">ENTJ</option>
						<option value="ISFP">ISFP</option>
						<option value="ISFJ">ISFJ</option>
						<option value="ISTP">ISTP</option>
						<option value="ISTJ">ISTJ</option>
						<option value="INFP">INFP</option>
						<option value="INFJ">INFJ</option>
						<option value="INTP">INTP</option>
						<option value="INTJ">INTJ</option>
					</select>
				</p>
				<p>
					<label for="sns"><span>SNS</span></label><select id="sns_option"
						onchange="combineValues()">
						<option value="">-- 선택 --</option>
						<option value="http://www.facebook.com/">페이스북</option>
						<option value="http://www.twitter.com/">트위터</option>
						<option value="http://www.instagram.com/">인스타그램</option>
					</select> <input type="text" id="input_value" onchange="combineValues()">
					<script src="./js/sns.js"></script>
				</p>
				<p>
					<label for="edu"><span>학력</span></label> <select id="edu"
						name="edu">
						<option value="">-- 학력 --</option>
						<option value="중졸">중졸</option>
						<option value="고졸">고졸</option>
						<option value="대졸">대졸</option>
						<option value="석사">석사</option>
						<option value="박사">박사</option>
					</select>
				</p>
				<p>
					<label for="height"><span>신장</span></label><input type="number">
					cm
				</p>
				<p>
					<label for="job"><span>직업</span><input type="text"></label>
				</p>
				<hr />
				<%@ include file="interests.jsp"%>
				<hr />
				<p>
					<input type="submit" value="가입하기" /> <input type="reset"
						value="다시하기" />
				</p>
			</form>
		</div>
	</main>
	<%@ include file="main_footer.jsp"%>
</body>
</html>