package com.ateam.proalba.persistence.mobile;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.domain.mobile.MobileCWorkRecordVO;
import com.ateam.proalba.domain.mobile.MobileWorkPlaceVO;
import com.ateam.proalba.domain.mobile.MobileWorkRecordVO;
@Repository
public class MobileAttendanceDAOImplement implements MobileAttendanceDAO {

	private static final String NAMESPACE = "com.ateam.proalba.mapper.MobileAttendanceMapper";
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MobileAttendanceVO> cmobileattendance(Map<String, String> id_map) throws Exception {
		return sqlSession.selectList(NAMESPACE +".cmobileattendance", id_map);
	}

	@Override
	public List<MobileAttendanceVO> listCriteria(Criteria criteria) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+".listCriteria",criteria);
	}

	@Override
	public List<MobileWorkPlaceVO> mobileFoundWorkPlace(String p_id) throws Exception {
		return sqlSession.selectList(NAMESPACE+".mobileFoundWorkPlace",p_id);
	}

	@Override
	public List<MobileWorkRecordVO> mobileFoundWorkRecord(Map<String, String> map) throws Exception {
		return sqlSession.selectList(NAMESPACE+".mobileFoundWorkRecord", map);
	}
	
	@Override
	public List<MobileCWorkRecordVO>mobileCFoundWorkRecord(Map<String, String> id_map) throws Exception {
		return sqlSession.selectList(NAMESPACE+".mobileCFoundWorkRecord", id_map);
	}

	@Override
	public void mobileWorkRecordUpdate(Map<String, String> map) throws Exception {
		System.out.println(map);
		sqlSession.update(NAMESPACE+".mobileWorkRecordUpdate", map);
	}

	@Override
	public void mobileWorkRecordDelete(String delete_w_code) throws Exception {
		sqlSession.delete(NAMESPACE+".mobileWorkRecordDelete", delete_w_code);
	}

	@Override
	public List<MobileAttendanceVO> mobileattendance(String id) throws Exception {
		return sqlSession.selectList(NAMESPACE +".mobileattendance", id);
	}

	@Override
	public void mobileWorkRecordInsert(Map<String, String> map) throws Exception {
		sqlSession.insert(NAMESPACE+".mobileWorkRecordInsert", map);
	}

	@Override
	public void mobileStartWork(Map<String, String> map) throws Exception {
		sqlSession.insert(NAMESPACE+".mobileStartWork", map);
	}

	@Override
	public void mobileEndWork(Map<String, String> map) throws Exception {
		sqlSession.update(NAMESPACE+".mobileEndWork", map);
	}

	@Override
	public List<MobileAttendanceVO> fullcmobileattendance(String id) throws Exception {
		
		return sqlSession.selectList(NAMESPACE +".fullcmobileattendance", id);
	}
	
}
