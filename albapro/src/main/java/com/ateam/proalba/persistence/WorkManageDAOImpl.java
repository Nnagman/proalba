package com.ateam.proalba.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.WorkManageVO;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.domain.mobile.MobileSalaryInfoVO;

@Repository
public class WorkManageDAOImpl implements WorkManageDAO {

	private static final String NAMESPACE = "com.ateam.proalba.mapper.MobileMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<WorkManageVO> listAll(String id) throws Exception {
		return sqlSession.selectList("workManage.listAll", id);
	}

	@Override
	public List<MobileSalaryInfoVO> csalary(String id) throws Exception {
		return sqlSession.selectList(NAMESPACE + ".csalary", id);
	}
	
	public List<MobileAttendanceVO> workRecord(Map<String, String> map) throws Exception {
		System.out.println("workRecord map : "+map);
		return sqlSession.selectList("workManage.workRecord", map);
	}

	@Override
	public List<CareerVO> workPlace(String m_code) throws Exception {
		return sqlSession.selectList("workManage.workPlace", m_code);
	}

}
