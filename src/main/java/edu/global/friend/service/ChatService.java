package edu.global.friend.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import edu.global.friend.vo.ChatListVO;
import edu.global.friend.vo.ChatVO;
import edu.global.friend.vo.ProfileVO;
import edu.global.friend.vo.UserVO;

@Service
public interface ChatService {
	
	//메시지입력
	public Map<String,Object> addMsg(Map<String,Object> param) throws Exception;
	
	//메시지 불러오기
	public List<ChatVO> getMsg(int chatno, int msgno) throws Exception;
	
	//채팅리스트 생성
	public Map<String, Object> doAddChatList(Map<String, Object> param);
	
	//채팅리스트 조회
	public List<ChatListVO> getChatList(int custno);
	
	//Like리스트 조회
	public List<UserVO> getLikeList(int custno);
	
	//Like리스트 삭제
	public int deleteLikeList(int custno, int partnerno);
	
	//프로필 불러오기
	public List<ProfileVO> getProfile(int custno) throws Exception;

	public List<UserVO> getLikeListRe(int custno);

	public Map<String, Object> recentMsg(Map<String, Object> param);
	
	//Like리스트 삭제
	public int deleteLikeListRe(int custno, int partnerno);
		
}