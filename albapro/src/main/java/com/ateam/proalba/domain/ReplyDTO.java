package com.ateam.proalba.domain;

import java.util.Date;
import lombok.Data;

@Data
public class ReplyDTO {
	private String r_code;		//댓글 코드 
	private String id; 		//댓글 작성자
	private int p_code;		//게시글 코드
	private String r_content;	//댓글 내용 
	private String m_code;	//작성자 member id 
	private String name;
	private Date r_date;
	private Date r_modify;
	private String secret_reply;
}