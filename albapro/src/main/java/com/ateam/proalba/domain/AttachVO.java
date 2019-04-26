package com.ateam.proalba.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AttachVO {
	private String fullname;	//저장된 파일 이름
	private int p_code;			//파일이 저장된 게시물 번호
	private Date p_date;	//파일이 수정된 날짜
}
