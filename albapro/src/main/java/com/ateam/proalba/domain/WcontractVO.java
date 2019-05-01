package com.ateam.proalba.domain;

import lombok.Data;

@Data
public class WcontractVO {
	private String start_period;	//근로계약기간
	private String end_period;	//근로계약기간
	private String work_place_name;	//사업체명
	private String c_id;	//사업주아이디
	private String p_id;	//알바생아이디
	private String fileName; //파일위치랑 이름
}
