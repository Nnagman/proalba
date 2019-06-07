package com.ateam.proalba.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.WorkManageVO;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;

@Repository
public class WorkManageDAOImpl implements WorkManageDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<WorkManageVO> listAll(String id) throws Exception {
		return sqlSession.selectList("workManage.listAll", id);
	}

	@Override
	public List<MobileAttendanceVO> workRecord(Map<String, String> map) throws Exception {
		System.out.println("workRecord map : "+map);
		return sqlSession.selectList("workManage.workRecord", map);
	}

}
