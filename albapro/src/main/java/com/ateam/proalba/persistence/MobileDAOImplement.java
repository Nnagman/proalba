package com.ateam.proalba.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.MobileWorkInfoVO;

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
 
}
