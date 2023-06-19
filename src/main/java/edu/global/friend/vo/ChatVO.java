
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
@Data
@Component
public class ChatVO {
	
	private int chatno;
	private int custno;
	private String msg;
	private Date chattime;
	private int msgno;
		
}
