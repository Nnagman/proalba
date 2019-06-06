package com.ateam.proalba.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.SalaryVO;
import com.ateam.proalba.domain.Criteria;

@Repository
public class SalaryDAOImple implements SalaryDAO {
	private static final Logger logger = LoggerFactory.getLogger(SalaryDAOImple.class);

	private static final String NAMESPACE = "com.ateam.proalba.mapper.SalaryMapper";

	private final SqlSession sqlSession;

	@Inject
	public SalaryDAOImple(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<SalaryVO> listCriteria(Criteria criteria, String id) throws Exception {
		logger.info(Integer.toString(criteria.getPageStart()));
		logger.info(Integer.toString(criteria.getPerPageNum() + criteria.getPageStart()));
		Map<String, Object> map = new HashMap<String, Object>();

		/*
		 * LoginDTO loginDTO = new LoginDTO(); loginDTO.setId("p_id");
		 */ 
		map.put("criteria", criteria);
		map.put("id", id);

		return sqlSession.selectList(NAMESPACE + ".listCriteria", map);
	}

	@Override
	public int countSalarys(Criteria criteria) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".countSalarys", criteria);
	}

	@Override
	public SalaryVO select_salary(String sa_code) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".select_salary", sa_code);
	}

	@Override
	public void insert_salary(String sa_code) throws Exception {
		sqlSession.insert(NAMESPACE + ".insert_salary", sa_code);
	}
}
