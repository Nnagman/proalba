package com.ateam.proalba.service.mobile;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.domain.mobile.MobileNoticeVO;
import com.ateam.proalba.domain.mobile.MobileSalaryInfoVO;
import com.ateam.proalba.domain.mobile.MobileWorkInfoVO;
import com.ateam.proalba.persistence.mobile.MobileDAO;

@Service
public class MobileServiceImplement implements MobileService { 
	private final MobileDAO mobileDAO;
	
	@Inject
	public  MobileServiceImplement(MobileDAO mobileDAO){
		this.mobileDAO=mobileDAO;
	}

	@Override
	public int count_mobile_workplace_info(String m_code) throws Exception {

		return mobileDAO.count_mobile_workplace_info(m_code);
	}

	@Override
	public List<MobileWorkInfoVO> mobile_workplace_info(String id) throws Exception {
		
		return mobileDAO.mobile_workplace_info(id);
	}

	@Override
	public List<MobileWorkInfoVO> listCriteria(Criteria criteria) throws Exception {
		
		return mobileDAO.listCriteria(criteria);
	}

	@Override
	public List<MobileSalaryInfoVO> salaryInfo(String m_code) throws Exception {
		return mobileDAO.salaryInfo(m_code);
	}
	
	@Override
	public List<CareerVO> careerInfo(String m_code) throws Exception {
		return mobileDAO.careerInfo(m_code);
	}

	@Override
	public List<MobileAttendanceVO> mo_attendance_check(String id) throws Exception {
		
		return mobileDAO.mo_attendance_check(id);
	}

	@Override
	public List<MobileNoticeVO> mobile_addjobopening_free_manage_list(String id) throws Exception {
		
		return mobileDAO.mobile_addjobopening_free_manage_list(id);
	}

	@Override
	public List<MobileNoticeVO> mobile_recruinfode(String n_code) throws Exception {
		
		return mobileDAO.mobile_recruinfode(n_code);
		
	}

	@Override
	public List<MobileNoticeVO> mobile_recruinfo() throws Exception {
		
		return mobileDAO.mobile_recruinfo();
	}

	@Override
	public List<CareerVO> mobile_inqcareer(String m_code) throws Exception {
		return mobileDAO.mobile_inqcareer(m_code);
	}


}
