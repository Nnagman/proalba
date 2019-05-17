package com.ateam.proalba.service.mobile;

import java.util.List;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.domain.mobile.MobileWorkPlaceVO;
import com.ateam.proalba.domain.mobile.MobileWorkRecordVO;

public interface MobileAttendanceService {

	List<MobileAttendanceVO> mobileattendance(String id) throws Exception;
	List<MobileAttendanceVO> listCriteria(Criteria criteria) throws Exception;
	List<MobileWorkPlaceVO> mobileFoundWorkPlace(String id) throws Exception;
	List<MobileWorkRecordVO> mobileFoundWorkRecord(String sa_code) throws Exception;
}
