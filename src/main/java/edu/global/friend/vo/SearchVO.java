package edu.global.friend.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*?´ë?           ???       ????            
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
@Data
public class SearchVO {
	private String partnername;
	private int partnerage;
	private String partnerloc;
	private String partnerimg;
	
	List<ImgVO> iList;
}
