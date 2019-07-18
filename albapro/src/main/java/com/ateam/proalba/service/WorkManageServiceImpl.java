package com.ateam.proalba.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.WorkManageVO;
import com.ateam.proalba.domain.mobile.MobileSalaryInfoVO;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.persistence.WorkManageDAO;

@Service
public class WorkManageServiceImpl implements WorkManageService {
	
	@Autowired
	WorkManageDAO workManage;
	
	@Override
	public List<WorkManageVO> listAll(String id) throws Exception {
		return workManage.listAll(id);
	}

	@Override
	public List<MobileSalaryInfoVO> csalary(String id) throws Exception {
		return workManage.csalary(id);
	}
	
	public List<MobileAttendanceVO> workRecord(Map<String, String> map) throws Exception {
		return workManage.workRecord(map);
	}

	@Override
	public List<CareerVO> workPlace(String m_code) throws Exception {
		return workManage.workPlace(m_code);
	}

}
