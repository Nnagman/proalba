package com.ateam.proalba.domain.mobile;

import lombok.Data;

@Data
public class MobileCWorkRecordVO {
	private String w_code;
	private String sa_c;
	private String sa_start;
	private String sa_end;
	private int working_hours;
	private String work_place_name;
}
