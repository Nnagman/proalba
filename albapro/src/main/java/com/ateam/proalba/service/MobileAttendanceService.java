package com.ateam.proalba.service;

import java.util.List;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.MobileAttendanceVO;
import com.ateam.proalba.domain.MobileWorkPlaceVO;

public interface MobileAttendanceService {

	List<MobileAttendanceVO> mobileattendance(String id) throws Exception;
	List<MobileAttendanceVO> listCriteria(Criteria criteria) throws Exception;
	List<MobileWorkPlaceVO> mobileFoundWorkPlace(String id) throws Exception;
}
