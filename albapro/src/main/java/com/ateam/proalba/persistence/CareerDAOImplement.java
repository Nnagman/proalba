package com.ateam.proalba.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;

@Repository
public class CareerDAOImplement implements CareerDAO {
	private static final Logger logger = LoggerFactory.getLogger(CareerDAOImplement.class);
	
	private static final String NAMESPACE = "com.ateam.proalba.mapper.CareerMapper";
			
	private final SqlSession sqlSession;
	
	@Inject
	public CareerDAOImplement(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<CareerVO> listAll() throws Exception {
		return sqlSession.selectList(NAMESPACE + ".listAll");
	}

	@Override
	public List<CareerVO> listPaging(int page) throws Exception {
		
		if (page <= 0) {
	        page = 1;
	    }

	    page = (page - 1) * 10;

		return sqlSession.selectList(NAMESPACE + ".listPaging", page);
	}

	@Override
	public List<CareerVO> listCriteria(Criteria criteria) throws Exception {
		logger.info(Integer.toString(criteria.getPageStart()));
		logger.info(Integer.toString(criteria.getPerPageNum()+criteria.getPageStart()));
		return sqlSession.selectList(NAMESPACE + ".listCriteria", criteria);
	}

	@Override
	public int countCareers(LoginDTO loginDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".countCareers", loginDTO);
	}

	@Override
	public List<CareerVO> selectCareers(String id) throws Exception {
		return sqlSession.selectList(NAMESPACE + ".selectCareers", id);
	}

	@Override
	public void insert_career(Map<String, Object> map) throws Exception {
		sqlSession.insert(NAMESPACE + ".insert_career", map);
	}

	@Override
	public void add_storeCTXid(Map<String, Object> cmap) throws Exception {
		sqlSession.insert(NAMESPACE + ".careerTXid", cmap);
		
	}

	@Override
	public void career_leave(String em_code) throws Exception {
		sqlSession.update(NAMESPACE + ".career_leave", em_code);
	}

}
