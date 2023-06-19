
package edu.global.friend.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.global.friend.service.ChatService;
import edu.global.friend.service.UserService;
import edu.global.friend.vo.ChatVO;
import edu.global.friend.vo.ProfileVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ChatController {

	@Autowired
	private ChatService chatService;
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/myProfile")
	public String myProfile(Model model, HttpSession session) throws Exception {
		log.info("myProfile()..");
				
		int custno = (int)session.getAttribute("custno");
		
		List<ProfileVO> profile = chatService.getProfile(custno);
		System.out.println(profile);
		
		model.addAttribute("profile", profile.get(0));
		model.addAttribute("chatList", chatService.getChatList(custno));
		
		return "myProfile";
	}
	
	@GetMapping("/chat")
	public String chat(Model model, HttpSession session) {
		log.info("chat()..");
				
		int custno = (int)session.getAttribute("custno");
		model.addAttribute("chatList", chatService.getChatList(custno));
		
		return "chat";
	}
			
	// 라이크 리스트 조회
	@GetMapping("/likeList")
	public String getLikeList(Model model, HttpSession session) {
		log.info("getChatList()..");
		
		int custno = (int)session.getAttribute("custno");
		model.addAttribute("chatList", chatService.getChatList(custno));
		model.addAttribute("likeList", chatService.getLikeList(custno));
				
		return "likeList";
	}
	
	// 라이크 리스트 조회
	@GetMapping("/likeListRe")
	public String getlikeListReList(Model model, HttpSession session) {
		log.info("getChatList()..");
		
		int custno = (int)session.getAttribute("custno");
		model.addAttribute("chatList", chatService.getChatList(custno));
		model.addAttribute("likeList", chatService.getLikeListRe(custno));
				
		return "likeListRe";
	}
	
	@GetMapping("/likeprofile")
	public String profile(@RequestParam("custno") int custno, Model model, HttpSession session) throws Exception {
		
		List<ProfileVO> profileList = userService.getProfileList(custno);
		System.out.println(profileList);
				
		model.addAttribute("profile", profileList.get(0));
		
		model.addAttribute("chatList", chatService.getChatList((int)session.getAttribute("custno")));

		
		log.info("profile() ... ");
		
		return "likeprofile";
	}
	
	// 채팅 리스트 생성
	@PostMapping("/doAddChatList")
	@ResponseBody
	public String doAddChat(@RequestParam Map<String, Object> param, HttpSession session) {
	
		int custno = (int)session.getAttribute("custno");
		String custname = (String)session.getAttribute("custname");
		
		param.put("custno", custno);
		param.put("custname", custname);
		
		Map<String, Object> rs = chatService.doAddChatList(param);
								
		return   rs + "채팅방이 생성되었습니다.";
	}
	
	// 라이크 리스트 삭제
	@PostMapping("/deleteLikeList/{partnerno}")
	@ResponseBody
	public ResponseEntity<String> deleteLikeList(@PathVariable("partnerno") int partnerno, HttpSession session) {
		
		int custno = (int)session.getAttribute("custno");
		System.out.println(partnerno);
		ResponseEntity<String> entity = null;
	    try {
	        int rn = chatService.deleteLikeList(custno, partnerno);
	        log.info("delete 넘어온 숫자:::::" + rn);
	        entity = new ResponseEntity<>(String.valueOf(rn), HttpStatus.OK);
	    } catch (Exception e) {
	        e.printStackTrace();
	        entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
	    }
	    return entity;
	}
	
	// 라이크 리스트 삭제
		@PostMapping("/deleteLikeListRe/{partnerno}")
		@ResponseBody
		public ResponseEntity<String> deleteLikeListRe(@PathVariable("partnerno") int partnerno, HttpSession session) {
			
			int custno = (int)session.getAttribute("custno");
			System.out.println(partnerno);
			ResponseEntity<String> entity = null;
		    try {
		        int rn = chatService.deleteLikeListRe(custno, partnerno);
		        log.info("delete 넘어온 숫자:::::" + rn);
		        entity = new ResponseEntity<>(String.valueOf(rn), HttpStatus.OK);
		    } catch (Exception e) {
		        e.printStackTrace();
		        entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		    }
		    return entity;
		}
	
	// 메세지 가져오기
	@GetMapping("/chat/getNewMsg")
	@ResponseBody	
	public List<ChatVO> getNewMsg(@RequestParam("chatno") int chatno,@RequestParam("msgno") int msgno) throws Exception{
		System.out.println("chatno =" + chatno);
		List<ChatVO> messages = chatService.getMsg(chatno,msgno);				
		return messages;
	}
	
	// 메세지 입력
	@RequestMapping("/chat/doAddMsg")
	@ResponseBody	
	public void doAddMsg(@RequestParam Map<String, Object> param, HttpSession session) throws Exception {
		
		int custno = (int)session.getAttribute("custno");		
		param.put("custno", custno);		
		System.out.println(param);
		chatService.addMsg(param);
		//채팅리스트 recentMsg 변경
		chatService.recentMsg(param);
	}
	
	
	

}