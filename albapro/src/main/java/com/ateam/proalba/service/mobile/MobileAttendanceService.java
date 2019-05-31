package com.ateam.proalba.service.mobile;

import java.util.List;
import java.util.Map;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.domain.mobile.MobileWorkPlaceVO;
import com.ateam.proalba.domain.mobile.MobileWorkRecordVO;

public interface MobileAttendanceService {

	List<MobileAttendanceVO> mobileattendance(Map<String, String> id_map) throws Exception;
	List<MobileAttendanceVO> listCriteria(Criteria criteria) throws Exception;
	List<MobileWorkPlaceVO> mobileFoundWorkPlace(String id) throws Exception;
	List<MobileWorkRecordVO> mobileFoundWorkRecord(String sa_code) throws Exception;
	void mobileWorkRecordUpdate(Map<String, String> map) throws Exception;
	void mobileWorkRecordDelete(String delete_w_code) throws Exception;
}
