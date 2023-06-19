package edu.global.friend.service;

import java.util.List;

import org.springframework.stereotype.Service;

import edu.global.friend.vo.AuthVO;
import edu.global.friend.vo.ImgVO;
import edu.global.friend.vo.InterestVO;
import edu.global.friend.vo.OptionVO;
import edu.global.friend.vo.ProfileVO;
import edu.global.friend.vo.UserVO;

@Service
public interface UserService {
	public UserVO authenticateUser(String custid, String custpw);

	public void addUser(UserVO user) throws Exception;
	
	public void setUserOption(OptionVO userOption) throws Exception;
	
	public void setUserInterest(InterestVO userInterest) throws Exception;
	
	public void setUserAuthorities(AuthVO user) throws Exception;

	public void setUserImgs(ImgVO img) throws Exception;

	public List<ProfileVO> getProfileList(int custno) throws Exception;
	
	public void addLike(int custno, int partnerno) throws Exception;

	public UserVO get(int number);

	public void disLike(int custno, int partnerno);



}