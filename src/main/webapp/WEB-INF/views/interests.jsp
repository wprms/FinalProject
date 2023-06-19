<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>관심사</h3>
	<h5>최대 10개 항목까지 선택 가능합니다.</h5>
	<select id="interests" name="userInterest" multiple size="5">
		<optgroup label="음악" id="music">
			<option value="POP">POP</option>
			<option value="K-POP">K-POP</option>
			<option value="J-POP">J-POP</option>
			<option value="C-POP">C-POP</option>
			<option value="락">락</option>
			<option value="발라드">발라드</option>
			<option value="댄스">댄스</option>
			<option value="힙합">힙합</option>
			<option value="CLASSIC">CLASSIC</option>
			<option value="재즈">재즈</option>
			<option value="CCM">CCM</option>
		</optgroup>
		<optgroup label="운동" id="exercise">
			<option value="산책">산책</option>
			<option value="달리기">달리기</option>
			<option value="등산">등산</option>
			<option value="수영">수영</option>
			<option value="축구">축구</option>
			<option value="야구">야구</option>
			<option value="농구">농구</option>
			<option value="배구">배구</option>
			<option value="테니스">테니스</option>
			<option value="배드민턴">배드민턴</option>
			<option value="필라테스">필라테스</option>
			<option value="요가">요가</option>
			<option value="헬스">헬스</option>
		</optgroup>
		<optgroup label="반려동물" id="pet">
			<option value="개">개</option>
			<option value="고양이">고양이</option>
			<option value="토끼">토끼</option>
			<option value="햄스터">햄스터</option>
			<option value="새">새</option>
			<option value="파충류">파충류</option>
			<option value="물고기">물고기</option>
		</optgroup>
		<optgroup label="여행" id="travel">
			<option value="국내여행">국내여행</option>
			<option value="해외여행">해외여행</option>
		</optgroup>
		<optgroup label="책" id="book">
			<option value="소설">소설</option>
			<option value="에세이">에세이</option>
			<option value="만화">만화</option>
			<option value="참고서">참고서</option>
			<option value="정보">정보</option>
			<option value="자기계발">자기계발</option>
			<option value="종교">종교</option>
			<option value="역사">역사</option>
		</optgroup>
		<optgroup label="종교" id="religion">
			<option value="불교">불교</option>
			<option value="기독교">기독교</option>
			<option value="천주교">천주교</option>
			<option value="이슬람">이슬람</option>
			<option value="힌두교">힌두교</option>
			<option value="유교">유교</option>
		</optgroup>
		<optgroup label="패션" id="fashion">
			<option value="캐주얼">캐주얼</option>
			<option value="클래식">클래식</option>
			<option value="스트릿">스트릿</option>
			<option value="스포티">스포티</option>
			<option value="빈티지">빈티지</option>
			<option value="비즈니스">비즈니스</option>
		</optgroup>
		<optgroup label="공부" id="study">
			<option value="외국어">외국어</option>
			<option value="자격증">자격증</option>
			<option value="수능">수능</option>
			<option value="공시">공시</option>
			<option value="IT">IT</option>
		</optgroup>
		<optgroup label="음식" id="food">
			<option value="한식">한식</option>
			<option value="중식">중식</option>
			<option value="일식">일식</option>
			<option value="양식">양식</option>
			<option value="분식">분식</option>
			<option value="디저트">디저트</option>
		</optgroup>
		<optgroup label="음주 여부" id="drink">
			<option value="마셔요">마셔요</option>
			<option value="안마셔요">안마셔요</option>
		</optgroup>
		<optgroup label="흡연 여부" id="smoke">
			<option value="해요">해요</option>
			<option value="안해요">안해요</option>
		</optgroup>
		<optgroup label="라이프스타일" id="lifestyle">
			<option value="연애">연애</option>
			<option value="결혼">결혼</option>
			<option value="친구">친구</option>
		</optgroup>		
	</select>
	<div id="result"></div>
	<script src="./js/select_interests.js"></script>
</body>
</html>