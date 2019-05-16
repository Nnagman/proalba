package com.ateam.proalba.domain;



import java.util.Date;

import lombok.Data;

@Data
public class MobileAttendanceVO {
	private Date work_start_time;
	private String attendance_status;
	private String sa_code;

}
