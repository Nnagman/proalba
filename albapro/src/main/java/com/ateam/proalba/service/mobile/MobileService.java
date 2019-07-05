package com.ateam.proalba.service.mobile;


import java.util.List;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.domain.mobile.MobileNoticeVO;
import com.ateam.proalba.domain.mobile.MobileSalaryInfoVO;
import com.ateam.proalba.domain.mobile.MobileWorkInfoVO;

public interface MobileService {
	int count_mobile_workplace_info(String m_code) throws Exception;
	List<MobileWorkInfoVO> mobile_workplace_info(String id) throws Exception;
	List<MobileWorkInfoVO> listCriteria(Criteria criteria) throws Exception;
	List<MobileSalaryInfoVO> salaryInfo(String m_code) throws Exception;
	List<CareerVO> careerInfo(String m_code) throws Exception;
	List<MobileAttendanceVO> mo_attendance_check(String id) throws Exception;
	List<MobileNoticeVO> mobile_addjobopening_free_manage_list(String id)throws Exception;
	List<MobileNoticeVO> mobile_recruinfode(String n_code)throws Exception;
	List<MobileNoticeVO> mobile_recruinfo()throws Exception;
}
