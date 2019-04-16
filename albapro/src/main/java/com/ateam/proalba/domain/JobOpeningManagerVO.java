package com.ateam.proalba.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class JobOpeningManagerVO {
	private Date p_date;
	/* private String status; */
	private String title;
	private int viewcnt;

}
