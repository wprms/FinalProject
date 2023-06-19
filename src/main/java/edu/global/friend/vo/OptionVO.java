package edu.global.friend.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class OptionVO {
	private int custno;
	private String zodiac;
	private String mbti;
	private String sns;
	private String edu;
	private String height;
	private String job;
	
	List<UserVO> userList;
}
