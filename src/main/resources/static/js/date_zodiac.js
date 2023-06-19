function getConstellation() {
	var input = document.getElementById("custbirth"); //input 태그 가져오기
	var birthdate = new Date(input.value); //날짜형식으로 변환
	var month = birthdate.getMonth() + 1; //월 가져오기(0~11)
	var date = birthdate.getDate(); //일 가져오기(1~31)

	//월과 일을 조합하여 별자리 구하기
	if ((month == 1 && date <= 19) || (month == 12 && date >= 22)) {
		return "염소자리";
	} else if ((month == 1 && date >= 20) || (month == 2 && date <= 18)) {
		return "물병자리";
	} else if ((month == 2 && date >= 19) || (month == 3 && date <= 20)) {
		return "물고기자리";
	} else if ((month == 3 && date >= 21) || (month == 4 && date <= 19)) {
		return "양자리";
	} else if ((month == 4 && date >= 20) || (month == 5 && date <= 20)) {
		return "황소자리";
	} else if ((month == 5 && date >= 21) || (month == 6 && date <= 21)) {
		return "쌍둥이자리";
	} else if ((month == 6 && date >= 22) || (month == 7 && date <= 22)) {
		return "게자리";
	} else if ((month == 7 && date >= 23) || (month == 8 && date <= 22)) {
		return "사자자리";
	} else if ((month == 8 && date >= 23) || (month == 9 && date <= 22)) {
		return "처녀자리";
	} else if ((month == 9 && date >= 23) || (month == 10 && date <= 22)) {
		return "천칭자리";
	} else if ((month == 10 && date >= 23) || (month == 11 && date <= 21)) {
		return "전갈자리";
	} else {
		return "궁수자리";
	}

}

function showZodiac() {
    const dateInput = document.querySelector("#custbirth");
    const date = new Date(dateInput.value); // date 문자열을 Date 객체로 변환
    const zodiacSpan = document.querySelector(".zodiac");
    const zodiacInput = document.querySelector("#zodiac");
    const zodiac = getConstellation(date);
    zodiacSpan.textContent = zodiac;
    zodiacInput.value = zodiac;
  }