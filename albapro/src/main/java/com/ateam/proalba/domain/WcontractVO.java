package com.ateam.proalba.domain;

import java.util.Date;

import lombok.Data;

@Data
public class WcontractVO {
	private int c_code;
	private String start_period;	//근로계약기간
	private String end_period;	//근로계약기간
	private String c_id;	//사업주아이디
	private String p_id;	//알바생아이디
	private String work_place_name;	//사업체명
	private String fileName; //파일위치랑 이름
	private int hour_wage; //시급
	private String dedicated_work; //업종
	private String work_place; //근무장소
	private String work_detail; //업무내용
	private String start_work_time; //근무시작시장
	private String end_work_time; //근무종료시간
	private String additional_wage; //기타급여지급여부
	private String payday; //월급일
	private String b_number; //사업자등록번호
	private String b_name; //대표자이름
	private String c_address; //사업장주소
	private String work_place_phone; //사업자연락처
	private String c_date;
	private String email_check;
}
