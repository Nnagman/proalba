package com.ateam.proalba.persistence;

import java.util.List;

import com.ateam.proalba.domain.Criteria;
//import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.MobileAttendanceVO;


public interface MobileAttendanceDAO {
	
	List<MobileAttendanceVO> mobileattendance(String id) throws Exception;
	List<MobileAttendanceVO> listCriteria(Criteria criteria) throws Exception;
}
