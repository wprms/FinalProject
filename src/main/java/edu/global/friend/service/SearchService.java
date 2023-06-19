package edu.global.friend.service;

import java.util.List;

import org.springframework.stereotype.Service;

import edu.global.friend.vo.UserVO;

@Service
public interface SearchService {

	public List<UserVO> getSearchList(int custno);

	public List<UserVO> getSexSearchList(int custno);

}
