package edu.global.friend.controller;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.global.friend.service.ChatService;
import edu.global.friend.service.SearchService;
import edu.global.friend.service.UserService;
import edu.global.friend.vo.AuthVO;
import edu.global.friend.vo.ImgVO;
import edu.global.friend.vo.InterestVO;
import edu.global.friend.vo.OptionVO;
import edu.global.friend.vo.ProfileVO;
import edu.global.friend.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private ChatService chatService;
	
	@Autowired
	private SearchService searchService;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@GetMapping("/")
	public String home() {
		log.info("main");
		return "main";
	}

	@GetMapping("/join")
	public void join() {
		log.info("join");
	}

	@GetMapping("/login")
	public void login() {
		log.info("login");
	}
	
	@PostMapping("/loginProcess")
	public String loginProcess(@RequestParam("custid") String custid, @RequestParam("custpw") String custpw,
	        Model model, HttpSession session) {
	    // 사용자 이름과 비밀번호를 이용하여 로그인 처리
		UserVO User = userService.authenticateUser(custid, custpw);
		System.out.println(User);
		if (User != null) {
	        // 인증 성공 시 세션에 사용자 정보를 저장하고 홈 화면으로 이동	    	
	        session.setAttribute("custno", User.getCustno());
	        System.out.println(session.getAttribute("custno"));
	        return "redirect:/matchSearch";
	    } else {
	        // 인증 실패 시 로그인 화면으로 이동
	        model.addAttribute("error", "Invalid username or password");
	        return "redirect:/login";
	    }
	}

	@PostMapping("/logout")
	public String logout(HttpSession session) {
	    // 세션에서 "user" 속성을 삭제
	    session.removeAttribute("currentUser");
	    // 로그인 페이지로 이동
	    return "redirect:/login";
	}

	@Transactional
	@PostMapping("/addUser")
	public String addUser(@ModelAttribute("user") UserVO user, OptionVO userOption, @RequestParam("userInterest") String[] userInterestValues, AuthVO userAuth, @RequestParam("custpw") String custpw,
	                      @RequestParam("custbirth") @DateTimeFormat(pattern = "yyyy-MM-dd") String custbirth) throws Exception {
		user.setCustpw(passwordEncoder.encode(custpw.toString().trim()));
	    user.setCustbirth(java.sql.Date.valueOf(custbirth));
	    userService.addUser(user);
	    userService.setUserOption(userOption);
		/*
		 * System.out.println(userInterest); userService.setUserInterest(userInterest);
		 */
	    
	    InterestVO userInterest = new InterestVO();
	    for (String interest : userInterestValues) {
	        setUserInterestValue(userInterest, interest);
	    }

	    userService.setUserInterest(userInterest);
	    
	    userService.setUserAuthorities(userAuth);
	    return "redirect:/uploadImg";
	}
	
	private void setUserInterestValue(InterestVO interestVO, String interest) {
	    switch (interest) {
	        case "POP":
	        case "K-POP":
	        case "J-POP":
	        case "C-POP":
	        case "락":
	        case "발라드":
	        case "댄스":
	        case "힙합":
	        case "CLASSIC":
	        case "재즈":
	        case "CCM":
	            interestVO.setMusic(interest);
	            break;
	        case "산책":
	        case "달리기":
	        case "등산":
	        case "수영":
	        case "축구":
	        case "야구":
	        case "농구":
	        case "배구":
	        case "테니스":
	        case "배드민턴":
	        case "필라테스":
	        case "요가":
	        case "헬스":
	            interestVO.setExercise(interest);
	            break;
	        case "개":
	        case "고양이":
	        case "토끼":
	        case "햄스터":
	        case "새":
	        case "파충류":
	        case "물고기":
	            interestVO.setPet(interest);
	            break;
	        case "국내여행":
	        case "해외여행":
	            interestVO.setTravel(interest);
	            break;
	        case "소설":
	        case "에세이":
	        case "만화":
	        case "참고서":
	        case "정보":
	        case "자기계발":
	        case "종교":
	        case "역사":
	            interestVO.setBook(interest);
	            break;
	        case "불교":
	        case "기독교":
	        case "천주교":
	        case "이슬람":
	        case "힌두교":
	        case "유교":
	            interestVO.setReligion(interest);
	            break;
	        case "캐주얼":
	        case "클래식":
	        case "스트릿":
	        case "스포티":
	        case "빈티지":
	        case "비즈니스":
	            interestVO.setFashion(interest);
	            break;
	        case "외국어":
	        case "자격증":
	        case "수능":
	        case "공시":
	        case "IT":
	            interestVO.setStudy(interest);
	            break;
	        case "한식":
	        case "중식":
	        case "일식":
	        case "양식":
	        case "분식":
	        case "디저트":
	            interestVO.setFood(interest);
	            break;
	        case "마셔요":
	        case "안마셔요":
	            interestVO.setDrink(interest);
	            break;
	        case "해요":
	        case "안해요":
	            interestVO.setSmoke(interest);
	            break;
	        case "연애":
	        case "결혼":
	        case "친구":
	            interestVO.setLifestyle(interest);
	            break;
	    }
	}
	
	@GetMapping("/uploadImg")
	public void uploadimg() {
		log.info("upload img");
	}
				
	@Transactional
	@PostMapping("/applyImg")
	public String applyImg(@ModelAttribute("user") ImgVO img, HttpServletRequest request) throws Exception {
	   // 파일 업로드 처리
	   List<MultipartFile> imageFiles = new ArrayList<>();
	   imageFiles.add(img.getImageFile1());
	   imageFiles.add(img.getImageFile2());
	   imageFiles.add(img.getImageFile3());
	   imageFiles.add(img.getImageFile4());
	   imageFiles.add(img.getImageFile5());
	   imageFiles.add(img.getImageFile6());
	   
	   // 파일 저장 경로 설정 (원하는 경로로 변경해주세요)
	   String uploadDir = "C:\\Users\\USER\\Documents\\FinalProject\\spring_boot_friend\\src\\main\\resources\\static\\img\\";
	   
	   // 파일 업로드 처리
	   for (int i = 0; i < imageFiles.size(); i++) {
	      MultipartFile imageFile = imageFiles.get(i);
	      
	      if (imageFile != null && !imageFile.isEmpty()) {
	         String fileName = UUID.randomUUID().toString(); // 파일명 중복 방지를 위해 유니크한 파일명 생성
	         String fileExtension = getFileExtension(imageFile.getOriginalFilename()); // 파일 확장자 추출
	         String savedFileName = fileName + fileExtension; // 저장될 파일명 설정
	         
	         // 파일 저장
	         Path filePath = Paths.get(uploadDir, savedFileName);
	         imageFile.transferTo(filePath.toFile());
	         
	         // ImgVO에 파일명 저장
	         img.getClass().getMethod("setImgname" + (i + 1), String.class).invoke(img, savedFileName);
	      }
	   }
	   
	   // ImgVO 객체를 사용하여 DB에 저장 등의 작업 수행
	   System.out.println(img);
	   userService.setUserImgs(img);
	   
	   log.info("apply img");
	   return "redirect:/login";
	}

	// 파일 확장자 추출
	private String getFileExtension(String fileName) {
	   int dotIndex = fileName.lastIndexOf(".");
	   if (dotIndex != -1 && dotIndex < fileName.length() - 1) {
	      return fileName.substring(dotIndex);
	   }
	   return "";
	}

	
	@GetMapping("/matchSearch")
	public String match(Model model, HttpSession session) {
		log.info("matchsearch");

		// 세션에서 로그인된 사용자 정보를 가져옴
		String custid = (String) session.getAttribute("custid");
		String custpw = (String) session.getAttribute("custpw");
		
		UserVO User = userService.authenticateUser(custid, custpw);
		System.out.println(User);
		if (User != null) {
	        // 인증 성공 시 세션에 사용자 정보를 저장하고 홈 화면으로 이동	    	
	        session.setAttribute("custno", User.getCustno());
	        session.setAttribute("custname", User.getCustname());
	        session.setAttribute("custrank", User.getCustrank());
	        System.out.println(session.getAttribute("custno"));	       
	    } else {
	        // 인증 실패 시 로그인 화면으로 이동
	        model.addAttribute("error", "Invalid username or password");	        
	    }
		
		int custno = (int)session.getAttribute("custno");
		System.out.println(custno);
		
		model.addAttribute("chatList", chatService.getChatList(custno));
		model.addAttribute("getSearchList", searchService.getSearchList(custno));
		
		

		return "matchSearch";
	}
	
	@GetMapping("/matchSexSearch")
	public String matchSex(Model model, HttpSession session) {
		log.info("matchSexSearch");     
	    
		int custno = (int)session.getAttribute("custno");
		System.out.println(custno);
		
		model.addAttribute("chatList", chatService.getChatList(custno));
		model.addAttribute("getSearchList", searchService.getSexSearchList(custno));
		
		return "matchSexSearch";
	}
	

	@GetMapping("/profile")
	public String profile(@RequestParam("custno") int custno, Model model, HttpSession session) throws Exception {
		
		List<ProfileVO> profileList = userService.getProfileList(custno);
		System.out.println(profileList);
		
		model.addAttribute("profile", profileList.get(0));
		model.addAttribute("chatList", chatService.getChatList((int)session.getAttribute("custno")));
		
		log.info("profile() ... ");
		
		return "profile";
	}
	
    @PostMapping("/like")
    public void addLike(@RequestParam("partnerno") int partnerno, HttpSession session) throws Exception {
    	int custno = (int)session.getAttribute("custno");
       userService.addLike(custno,partnerno);
    }
    
    @PostMapping("/dislike")
    public void addDisLike(@RequestParam("partnerno") int partnerno, HttpSession session) throws Exception {
    	int custno = (int)session.getAttribute("custno");
       userService.disLike(custno,partnerno);
    }

}

