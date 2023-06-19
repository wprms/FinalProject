package edu.global.friend.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import edu.global.friend.mapper.UserMapper;
import edu.global.friend.vo.UserDetailsVO;
import edu.global.friend.vo.UserVO;
import lombok.extern.slf4j.Slf4j;



@Slf4j
@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.warn("Load User By UserVO number: " + username);
		UserVO vo = userMapper.getUser(username);

		UserDetailsVO userDetails = vo == null ? null : new UserDetailsVO(vo);
        if (userDetails != null) {
            // Store the user details in the session
            Authentication authentication = new UsernamePasswordAuthenticationToken(
            userDetails, null, userDetails.getAuthorities());
            SecurityContextHolder.getContext().setAuthentication(authentication);
        }

        return userDetails;
	}

}
