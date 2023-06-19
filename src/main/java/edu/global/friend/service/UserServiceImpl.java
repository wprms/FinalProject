package edu.global.friend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import edu.global.friend.mapper.UserMapper;
import edu.global.friend.vo.AuthVO;
import edu.global.friend.vo.ImgVO;
import edu.global.friend.vo.InterestVO;
import edu.global.friend.vo.OptionVO;
import edu.global.friend.vo.ProfileVO;
import edu.global.friend.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public UserVO authenticateUser(String custid, String custpw) {
		UserVO user = userMapper.selectUserById(custid);
		System.out.println(user);
		if (user == null) {
			throw new BadCredentialsException("Invalid username or password.");
		}
		if (!passwordEncoder.matches(custpw, user.getCustpw())) {
			throw new BadCredentialsException("Invalid username or password.");
		}
		return user;
	}

	@Override
	public void addUser(UserVO user) throws Exception {
		userMapper.insertUser(user);
	}

	@Override
	public void setUserOption(OptionVO userOption) throws Exception {
		userMapper.insertOption(userOption);
	}

	@Override
	public void setUserInterest(InterestVO userInterest) throws Exception {
		userMapper.insertInterest(userInterest);
	}

	@Override
	public void setUserAuthorities(AuthVO user) throws Exception {
		userMapper.insertAuthorities(user);

	}

	@Override
	public void setUserImgs(ImgVO img) throws Exception {
		userMapper.insertCustImage(img);
	}

	@Override
	public List<ProfileVO> getProfileList(int custno) throws Exception {
		return userMapper.getProfileList(custno);
	}

	@Override
	public UserVO get(int number) {
		return userMapper.read(number);
	}

	@Override
	public void addLike(int custno, int partnerno) throws Exception {
		userMapper.insertLike(custno, partnerno);
		
	}

	@Override
	public void disLike(int custno, int partnerno) {
		userMapper.insertDisLike(custno, partnerno);
		
	}

}