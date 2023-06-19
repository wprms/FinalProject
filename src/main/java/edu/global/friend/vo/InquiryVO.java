package edu.global.friend.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*이름           널?       유형             
------------ -------- -------------- 
TEXTNO       NOT NULL NUMBER         
USERS_CUSTNO NOT NULL NUMBER         
CUSTNAME              VARCHAR2(10)   
TITLE                 VARCHAR2(50)   
CONTENT               VARCHAR2(1500) 
INQDATE      NOT NULL DATE           
REPLYNO               NUMBER         
*/

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
@Component
public class InquiryVO implements Serializable {
	private int textno;
	private int custno;
	private String custname;
	private String title;
	private Date inqdate;
	private int replyno;
}