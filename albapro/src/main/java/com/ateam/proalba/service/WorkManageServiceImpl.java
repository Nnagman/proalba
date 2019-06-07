package com.ateam.proalba.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.WorkManageVO;
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
	public List<MobileAttendanceVO> workRecord(Map<String, String> map) throws Exception {
		return workManage.workRecord(map);
	}

}
