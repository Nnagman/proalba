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
	public List<SalaryVO> listCriteria(String id) throws Exception {
		return sqlSession.selectList(NAMESPACE + ".listCriteria", id);
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
	public void insert_salary(Map<String, String> map) throws Exception {
		sqlSession.insert(NAMESPACE + ".insert_salary", map);
	}

	@Override
	public List<SalaryVO> pserSalary(String id) {
		return sqlSession.selectList(NAMESPACE + ".pserSalary", id);
	}
}
