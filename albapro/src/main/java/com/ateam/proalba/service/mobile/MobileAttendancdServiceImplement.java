package com.ateam.proalba.service.mobile;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.domain.mobile.MobileWorkPlaceVO;
import com.ateam.proalba.domain.mobile.MobileWorkRecordVO;
import com.ateam.proalba.persistence.mobile.MobileAttendanceDAO;

	@Service
	
public class MobileAttendancdServiceImplement implements MobileAttendanceService {
	
		@Autowired
		MobileAttendanceDAO mobileAttendanceDAO;
	

	@Override
	public List<MobileAttendanceVO> mobileattendance(String id) throws Exception {
		return mobileAttendanceDAO.mobileattendance(id);
	}

	@Override
	public List<MobileAttendanceVO> listCriteria(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MobileWorkPlaceVO> mobileFoundWorkPlace(String p_id) throws Exception {
		return mobileAttendanceDAO.mobileFoundWorkPlace(p_id);
	}

	@Override
	public List<MobileWorkRecordVO> mobileFoundWorkRecord(String sa_code) throws Exception {
		return mobileAttendanceDAO.mobileFoundWorkRecord(sa_code);
	}

}
