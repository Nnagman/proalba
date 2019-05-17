package com.ateam.proalba.persistence.mobile;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.domain.mobile.MobileWorkPlaceVO;
import com.ateam.proalba.domain.mobile.MobileWorkRecordVO;
@Repository
public class MobileAttendanceDAOImplement implements MobileAttendanceDAO {

	private static final String NAMESPACE = "com.ateam.proalba.mapper.MobileAttendanceMapper";
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MobileAttendanceVO> mobileattendance(String id) throws Exception {
		return sqlSession.selectList(NAMESPACE +".mobileattendance", id);
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
	public List<MobileWorkRecordVO> mobileFoundWorkRecord(String sa_code) throws Exception {
		return sqlSession.selectList(NAMESPACE+".mobileFoundWorkRecord",sa_code);
	}
	
}
