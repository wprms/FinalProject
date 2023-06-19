
package edu.global.friend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.friend.mapper.SearchMapper;
import edu.global.friend.vo.UserVO;

@Service
public class SearchServiceImpl implements SearchService {
		
	@Autowired 
	private SearchMapper searchMapper;

	@Override
	public List<UserVO> getSearchList(int custno) {
		
		return searchMapper.getSearchList(custno);
	}

	@Override
	public List<UserVO> getSexSearchList(int custno) {
		return searchMapper.getSexSearchList(custno);
	}
	 
	
	
}

