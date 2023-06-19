
package edu.global.friend.vo;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*�대�           ��?       ����            
------------ -------- ------------- 
CUSTNO       NOT NULL NUMBER        
CUSTID       NOT NULL VARCHAR2(15)  
CUSTPW       NOT NULL VARCHAR2(15)  
CUSTEMAIL    NOT NULL VARCHAR2(50)  
CUSTNAME     NOT NULL VARCHAR2(30)  
CUSTBIRTH    NOT NULL DATE          
CUSTLOC      NOT NULL VARCHAR2(150) 
CUSTRANK     NOT NULL VARCHAR2(10)  
CUSTDURATION          DATE          */

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class UserVO{
	private int custno;
	private String custid;
	private String custpw;
	private String custemail;
	private String custname;
	private Date custbirth;
	private String custloc;
	private String custrank;
	private Date custduration;
	private int custage;
	private String sex;
	
	private List<AuthVO> authList;
	private List<ImgVO> imgList;
	
	
	
}