package com.ateam.proalba.persistence.mobile;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.domain.ResumeVO;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.domain.mobile.MobileNoticeVO;
import com.ateam.proalba.domain.mobile.MobileSalaryInfoVO;
import com.ateam.proalba.domain.mobile.MobileWorkInfoVO;

@Repository
public class MobileDAOImplement implements MobileDAO {

	
	private static final String NAMESPACE = "com.ateam.proalba.mapper.MobileMapper";
	@Autowired
	private SqlSession sqlSession;
	@Override
	public int count_mobile_workplace_info(String m_code) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".count_mobile_workplace_info", m_code);
	}

	@Override
	public List<MobileWorkInfoVO> mobile_workplace_info(String id) throws Exception {
		return sqlSession.selectList(NAMESPACE +".mobile_workplace_info", id);
	}

	@Override
	public List<MobileWorkInfoVO> listCriteria(Criteria criteria) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+".listCriteria",criteria);
	}

	@Override
	public List<MobileSalaryInfoVO> salaryInfo(String m_code) throws Exception {
		return sqlSession.selectList(NAMESPACE+".salaryInfo", m_code);
	}
	
	@Override
	public List<CareerVO> careerInfo(String m_code) throws Exception {
		return sqlSession.selectList(NAMESPACE+".cInqcareer", m_code);
	}

	@Override
	public List<MobileAttendanceVO> mo_attendance_check(String id) throws Exception {
	
		return  sqlSession.selectList(NAMESPACE+".mo_attendance_check", id);
	}

	@Override
	public List<MobileNoticeVO> mobile_addjobopening_free_manage_list(String id) throws Exception {
	
		return sqlSession.selectList(NAMESPACE+".mobile_addjobopening_free_manage_list", id);
	}

	@Override
	public List<MobileNoticeVO> mobile_recruinfode(String n_code) throws Exception {
	
		return sqlSession.selectList(NAMESPACE+".mobile_recruinfode", n_code);
	}

	@Override
	public List<MobileNoticeVO> mobile_recruinfo() throws Exception {
		
		return sqlSession.selectList(NAMESPACE+".mobile_recruinfo");
	}

	@Override
	public List<CareerVO> mobile_inqcareer(String m_code) throws Exception {
		return sqlSession.selectList(NAMESPACE+".mobile_inqcareer", m_code);
	}
	
	@Override
	public List<ResumeVO> mobile_view_resume(String r_code) throws Exception {
		return sqlSession.selectList(NAMESPACE+".mobile_view_resume", r_code);
	}
}
