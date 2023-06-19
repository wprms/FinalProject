package edu.global.friend.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*이름           널?       유형           
------------ -------- ------------ 
USERS_CUSTNO NOT NULL NUMBER       
MUSIC                 VARCHAR2(20) 
EXERCISE              VARCHAR2(20) 
PET                   VARCHAR2(20) 
TRAVEL                VARCHAR2(20) 
BOOK                  VARCHAR2(20) 
RELIGION              VARCHAR2(20) 
FASHION               VARCHAR2(20) 
STUDY                 VARCHAR2(20) 
FOOD                  VARCHAR2(20) 
DRINK                 VARCHAR2(20) 
SMOKE                 VARCHAR2(20) 
LIFESTYLE             VARCHAR2(20) */

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class InterestVO {
	private int custno;
	private String music;
	private String exercise;
	private String pet;
	private String travel;
	private String book;
	private String religion;
	private String fashion;
	private String study;
	private String food;
	private String drink;
	private String smoke;
	private String lifestyle;
	
	List<UserVO> userList;
}