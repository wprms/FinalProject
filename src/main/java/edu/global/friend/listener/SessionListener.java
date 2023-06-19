package edu.global.friend.listener;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import edu.global.friend.vo.UserVO;

@Component
public final class SessionListener implements HttpSessionListener {
	
	public SessionListener() {
		
	}
	
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        HttpSession session = se.getSession();
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal() instanceof UserVO) {
            UserVO user = (UserVO) authentication.getPrincipal();
            session.setAttribute("user", user);
        }
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        // 세션 종료 시 필요한 처리
    }

}
