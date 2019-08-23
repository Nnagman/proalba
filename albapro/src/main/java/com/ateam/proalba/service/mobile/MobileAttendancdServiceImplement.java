package com.ateam.proalba.service.mobile;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.domain.mobile.MobileCWorkRecordVO;
import com.ateam.proalba.domain.mobile.MobileWorkManageVO;
import com.ateam.proalba.domain.mobile.MobileWorkPlaceVO;
import com.ateam.proalba.domain.mobile.MobileWorkRecordVO;
import com.ateam.proalba.persistence.mobile.MobileAttendanceDAO;

	@Service
	
public class MobileAttendancdServiceImplement implements MobileAttendanceService {
	
		@Autowired
		MobileAttendanceDAO mobileAttendanceDAO;
	

	@Override
	public List<MobileAttendanceVO> cmobileattendance(Map<String, String> id_map) throws Exception {
		return mobileAttendanceDAO.cmobileattendance(id_map);
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
	public List<MobileWorkRecordVO> mobileFoundWorkRecord(Map<String, String> map) throws Exception {
		return mobileAttendanceDAO.mobileFoundWorkRecord(map);
	}

	@Override
	public void mobileWorkRecordUpdate(Map<String, String> map) throws Exception {
		mobileAttendanceDAO.mobileWorkRecordUpdate(map);
	}

	@Override
	public void mobileWorkRecordDelete(String delete_w_code) throws Exception {
		mobileAttendanceDAO.mobileWorkRecordDelete(delete_w_code);
	}

	@Override
	public List<MobileAttendanceVO> mobileattendance(String id) throws Exception {
		return mobileAttendanceDAO.mobileattendance(id);
	}

	@Override
	public void mobileWorkRecordInsert(Map<String, String> map) throws Exception {		
		mobileAttendanceDAO.mobileWorkRecordInsert(map);
	}

	@Override
	public void mobileStartWork(Map<String, String> map) throws Exception {
		mobileAttendanceDAO.mobileStartWork(map);
	}

	@Override
	public void mobileEndWork(Map<String, String> map) throws Exception {
		mobileAttendanceDAO.mobileEndWork(map);
	}
	
	@Override
	public List<MobileCWorkRecordVO>mobileCFoundWorkRecord(Map<String, String> id_map) throws Exception {
		return mobileAttendanceDAO.mobileCFoundWorkRecord(id_map);
		
	}
 
	@Override
	public List<MobileAttendanceVO> fullcmobileattendance(String id) throws Exception {
		
		return mobileAttendanceDAO.fullcmobileattendance(id);
	}
 
	@Override
	public List<MobileWorkManageVO> mobileCWorkManage(String id) throws Exception {
		return mobileAttendanceDAO.mobileCWorkManage(id);
	}


}
