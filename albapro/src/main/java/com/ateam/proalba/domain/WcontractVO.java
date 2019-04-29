package com.ateam.proalba.domain;

import java.util.Date;

import lombok.Data;

@Data
public class WcontractVO {
	private String c_code;		//계약서 코드 
	private String work_detail;		//업무내용
	private Date start_period;		//근로계약시작일
	private Date end_period;		//근로계약종료일
	private String work_place;		//근무장소 
	private int hour_wage;			//시급
	private int work_day;			//근무일
	private String start_work_time;		//근무시작시간
	private String end_work_time;		//근무종료시간
	private String start_break_time;	//휴게시작시간
	private String end_break_time;		//휴게종료시간
	private Date c_date;				//계약서작성일
	private String work_place_name;		//사업체명
	private String b_number;			//사업자등록번호
	private String c_name;			//사업주아이디
	private String p_name;			//근로자이름
	private String social_insurance;	//사회보험적용여부 
	private String work_palce_phone;	//근무지전화번호
	private String p_phone;			//알바생전화번호 
	private String p_address;		//알바생주소
	private String additional_wage;		//기타급여
	private String payday;			//임금지급일
	private String holyday;			//휴무일 
	private String c_address;		//사업체주소 
}
