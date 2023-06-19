package edu.global.friend.service;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.friend.mapper.ChatMapper;
import edu.global.friend.vo.ChatListVO;
import edu.global.friend.vo.ChatVO;
import edu.global.friend.vo.ProfileVO;
import edu.global.friend.vo.UserVO;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired
	private ChatMapper chatMapper;

	// 채팅 리스트 불러오기
	@Override
	public List<ChatListVO> getChatList(int custno) {
		return chatMapper.getChatList(custno);
	}

	// 채팅 리스트 생성
	@Override
	public Map<String, Object> doAddChatList(Map<String, Object> param) {

		chatMapper.addChatList(param);
		Map<String, Object> rs = new HashMap<>();
		rs.put("chatno", param.get("chatno"));
		return rs;
	}
	
	// 메시지 조회
	public List<ChatVO> getMsg(int chatno,int msgno) throws Exception {
		return chatMapper.getMsg(chatno,msgno);

	}

	// 메시지 입력
	@Override
	public Map<String, Object> addMsg(Map<String, Object> param) throws Exception {

		chatMapper.addMsg(param);

		Map<String, Object> rs = new HashMap<>();

		int custno = ((Integer) param.get("custno")).intValue();
		rs.put("custno", custno);
		rs.put("chattime", param.get("chattime"));

		return rs;
	}
	
	//LikeList 조회
	@Override
	public List<UserVO> getLikeList(int custno) {
		return chatMapper.getLikeList(custno);
	}
	
	//LikeList 삭제
	@Override
	public int deleteLikeList(int custno, int partnerno) {
		return chatMapper.deleteLikeList(custno,partnerno);
	}

	@Override
	public List<ProfileVO> getProfile(int custno) throws Exception {
		return chatMapper.getProfile(custno);
	}

	@Override
	public List<UserVO> getLikeListRe(int custno) {
		return chatMapper.getLikeListRe(custno);
	}

	@Override
	public Map<String, Object> recentMsg(Map<String, Object> param) {
		chatMapper.recentMsg(param);

		Map<String, Object> rs = new HashMap<>();

		int custno = ((Integer) param.get("custno")).intValue();
		rs.put("custno", custno);
		rs.put("chattime", param.get("chattime"));

		return rs;
	}

	@Override
	public int deleteLikeListRe(int custno, int partnerno) {
		return chatMapper.deleteLikeListRe(custno,partnerno);
	}



}