package edu.global.friend.mapper;



import static org.junit.jupiter.api.Assertions.*;

import java.sql.Date;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import edu.global.friend.mapper.UserMapper;
import edu.global.friend.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
public class UserMapperTest {

	@Autowired
	private UserMapper userMapper;

	@Autowired
	private UserVO user;

	@Test
	public void testInsertUser() {
		// log.info("UserVO : " + user);
		int custno = 42;
		user.setCustno(custno);
		user.setCustid("usertest1");
		String password = "password1";
		
		String encodedPassword = "{bcrypt}" + new BCryptPasswordEncoder().encode(password);
		    user.setCustpw(encodedPassword);
		
		user.setCustemail("test@test.com");
		user.setCustname("testName");
		user.setCustbirth(new Date(2000, 01, 01));
		user.setCustloc("testLocation");
		user.setCustrank("일반");
		log.info("UserVO : " + user);
		userMapper.insertUser(user);
		//userMapper.insertAuthorities(user);

		/*
		 * UserVO insertedUser = userMapper.getUser("testId");
		 * assertNotNull(insertedUser); assertEquals(user.getCustid(),
		 * insertedUser.getCustid()); assertEquals(user.getCustpw(),
		 * insertedUser.getCustpw()); assertEquals(user.getCustemail(),
		 * insertedUser.getCustemail()); assertEquals(user.getCustname(),
		 * insertedUser.getCustname()); assertEquals(user.getCustbirth(),
		 * insertedUser.getCustbirth()); assertEquals(user.getCustloc(),
		 * insertedUser.getCustloc());
		 */

	}
	

		@Disabled
		@Test
	    public void testPasswordEncoder() {
	        String password = "password1";
	        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	        String encodedPassword = encoder.encode(password);
	        
	        assertTrue(encoder.matches(password, encodedPassword));
	    }
}
