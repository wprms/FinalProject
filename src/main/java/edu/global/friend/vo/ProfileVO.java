package edu.global.friend.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

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
public class ProfileVO {
	private int custno;
	private String custname;
	private String custrank;
	private Date custbirth;
	private String custage;
	private String custloc;
	private String zodiac;
	private String mbti;
	private String sns;
	private String imgname1;

	List<ImgVO> imgList;
	List<UserVO> userList;
	List<OptionVO> optionList;

}
