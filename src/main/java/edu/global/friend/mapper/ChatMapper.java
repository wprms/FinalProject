package edu.global.friend.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import edu.global.friend.vo.ChatListVO;
import edu.global.friend.vo.ChatVO;
import edu.global.friend.vo.ProfileVO;
import edu.global.friend.vo.UserVO;

@Mapper
public interface ChatMapper {
	
	//메시지추가
	public int addMsg(Map<String,Object> param);
	//메시지조회
	public List<ChatVO> getMsg(int chatno,int msgno);
	//채팅List생성
	public void addChatList(Map<String, Object> param);
	//채팅List조회
	public List<ChatListVO> getChatList(int custno);
	//LikeList조회
	public List<UserVO> getLikeList(int custno);
	//LikeList삭제
	public int deleteLikeList(int custno, int partnerno);
	//프로필 불러오기	
	public List<ProfileVO> getProfile(int custno);
	//LikeListRe조회
	public List<UserVO> getLikeListRe(int custno);
	//recentMsg수정
	public int recentMsg(Map<String, Object> param);
	//LikeListRe삭제
	public int deleteLikeListRe(int custno, int partnerno);
	
}