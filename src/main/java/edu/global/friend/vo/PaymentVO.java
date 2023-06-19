package edu.global.friend.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*이름           널?       유형           
------------ -------- ------------ 
ORDERNO      NOT NULL NUMBER       
USERS_CUSTNO NOT NULL NUMBER       
CUSTRANK     NOT NULL VARCHAR2(10) 
AMOUNT       NOT NULL VARCHAR2(10) 
DURATION     NOT NULL VARCHAR2(10) 
SALESDATE    NOT NULL DATE       */

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
@Component
public class PaymentVO implements Serializable {
	private int orderno;
	private int custno;
	private String custrank;
	private String amount;
	private String duration;
	private Date salesdate;
}