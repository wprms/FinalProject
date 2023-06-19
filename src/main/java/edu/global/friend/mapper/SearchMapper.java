package edu.global.friend.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import edu.global.friend.vo.ChatListVO;
import edu.global.friend.vo.ChatVO;
import edu.global.friend.vo.SearchVO;
import edu.global.friend.vo.UserVO;

@Mapper
public interface SearchMapper {

	public List<UserVO> getSearchList(int custno);

	public List<UserVO> getSexSearchList(int custno);
	
	
}
