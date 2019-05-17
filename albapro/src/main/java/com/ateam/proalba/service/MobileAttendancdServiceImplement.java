package com.ateam.proalba.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.MobileAttendanceVO;
import com.ateam.proalba.domain.MobileWorkPlaceVO;
import com.ateam.proalba.persistence.MobileAttendanceDAO;
import com.ateam.proalba.persistence.post.PostDAO;

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

}
