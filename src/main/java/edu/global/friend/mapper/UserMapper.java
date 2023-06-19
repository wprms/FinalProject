
package edu.global.friend.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.global.friend.vo.AuthVO;
import edu.global.friend.vo.ImgVO;
import edu.global.friend.vo.InterestVO;
import edu.global.friend.vo.OptionVO;
import edu.global.friend.vo.ProfileVO;
import edu.global.friend.vo.UserVO;

@Mapper
public interface UserMapper {
	public void insertUser(UserVO user);

	public void insertAuthorities(AuthVO user);

	public void insertOption(OptionVO option);

	public void insertInterest(InterestVO interest);

	public void insertCustImage(ImgVO img);

	public UserVO getUser(String custid);

	public UserVO selectUserById(String custid);

	public List<ProfileVO> getProfileList(int custno);
	
	public UserVO read(int number);

	public void insertLike(int custno, int partnerno);

	public void insertDisLike(int custno, int partnerno);
	
}

