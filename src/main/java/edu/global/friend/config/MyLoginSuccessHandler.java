package edu.global.friend.config;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class MyLoginSuccessHandler implements AuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication authentication) throws IOException, ServletException {

        // 로그인한 사용자 정보 가져오기
        String username = authentication.getName();
        String custid = request.getParameter("custid");
        String custpw = request.getParameter("custpw");

        // 세션에 사용자 정보 저장하기
        HttpSession session = request.getSession();
        session.setAttribute("username", username);
        session.setAttribute("custid", custid);
        session.setAttribute("custpw", custpw);

        // 쿠키에 사용자 정보 저장하기
        Cookie cookie = new Cookie("username", username);
        cookie.setMaxAge(3600); // 쿠키 유효 시간 설정 (1시간)
        response.addCookie(cookie);

        // 쿠키 배열 코드
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("username")) {
                    c.setValue("myNewCookieValue");
                    response.addCookie(c);
                }
            }
        }

        // 로그인 성공 후 리다이렉트할 페이지 설정
        String redirectUrl = request.getContextPath() + "/matchSearch";
        response.sendRedirect(redirectUrl);
    }
}