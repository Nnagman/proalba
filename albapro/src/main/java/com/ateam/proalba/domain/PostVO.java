package com.ateam.proalba.domain;

import java.util.Date;

import lombok.Data;

@Data
public class PostVO {
	private int p_code; //게시물 번호
	private String id; //작성자 아이디
	private String m_code; //작성자 member id 
	private String name; //작성자 이름
	private String title; //제목
	private String p_content; //내용
	private Date p_date; //날짜
	private int viewcnt; //조회수
	private int recnt;	//댓글 수 
	private String[] files; //첨부파일 배열
}
