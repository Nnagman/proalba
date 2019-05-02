package com.ateam.proalba.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.WcontractVO;

@Repository
public class ContractDAOImplement implements ContractDAO {
	private static final Logger logger = LoggerFactory.getLogger(ContractDAOImplement.class);
	
	private static final String NAMESPACE = "com.ateam.proalba.mapper.ContractMapper";
	
	private final SqlSession sqlSession;
	
	@Inject
	public ContractDAOImplement(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void add_contract(WcontractVO wcontractVO) {
		try {
			sqlSession.insert(NAMESPACE + ".add_contract", wcontractVO);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<WcontractVO> select_contract(LoginDTO loginDTO) {
		return sqlSession.selectList(NAMESPACE + ".select_contract", loginDTO);
	}

	@Override
	public int count_contract(LoginDTO loginDTO) {
		return sqlSession.selectOne(NAMESPACE + ".count_contract", loginDTO);
	}

	@Override
	public List<WcontractVO> listPaging(int page) throws Exception {
		if (page <= 0) {
	        page = 1;
	    }

	    page = (page - 1) * 10;

		return sqlSession.selectList(NAMESPACE + ".listPaging", page);
	}

	@Override
	public List<WcontractVO> listCriteria(Criteria criteria) throws Exception {
		logger.info(Integer.toString(criteria.getPageStart()));
		logger.info(Integer.toString(criteria.getPerPageNum()+criteria.getPageStart()));
		return sqlSession.selectList(NAMESPACE + ".listCriteria", criteria);
	}

}
