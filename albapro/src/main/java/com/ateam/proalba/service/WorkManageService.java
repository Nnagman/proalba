package com.ateam.proalba.service;

import java.util.List;
import java.util.Map;

import com.ateam.proalba.domain.WorkManageVO;
import com.ateam.proalba.domain.mobile.MobileSalaryInfoVO;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;

public interface WorkManageService {
	List<WorkManageVO> listAll(String id) throws Exception;
	
	List<MobileSalaryInfoVO> csalary(String id) throws Exception;
	List<MobileAttendanceVO> workRecord(Map<String, String> map) throws Exception;
	
}
