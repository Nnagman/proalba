package com.ateam.proalba.persistence;

import java.util.HashMap;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.NoticeVO;
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
	public int add_contract(WcontractVO wcontractVO) {
		try {
			int result = sqlSession.insert(NAMESPACE + ".add_contract", wcontractVO);
			return result;
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<WcontractVO> select_contract(String id) {
		return sqlSession.selectList(NAMESPACE + ".select_contract", id);
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

	@Override
	public void update_contract(String fileName) throws Exception {
		sqlSession.update(NAMESPACE + ".update_contract", fileName);
	}

	@Override
	public WcontractVO select_contract2(Map<String, String[]> map) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE + ".select_contract2", map);
	}
	
	@Override
	public List<NoticeVO> select_contract5(String n_code) throws Exception {
		
		return sqlSession.selectList (NAMESPACE + ".select_contract5", n_code);
	}

	@Override
	public void send_contract(WcontractVO wcontractVO) {
		sqlSession.update(NAMESPACE + ".send_contract", wcontractVO);
	}

	@Override
	public WcontractVO select_contract3(String c_code) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".select_contract3", c_code);
	}

	@Override
	public void check_contract(WcontractVO wcontractVO) throws Exception {
		sqlSession.update(NAMESPACE + ".check_contract", wcontractVO);
	}

	@Override
	public void add_storeTXid(Map<String, Object> bmap) throws Exception {
		sqlSession.insert(NAMESPACE + ".add_storeTXid", bmap);
	}	
	
	@Override
	public WcontractVO select_contract4(Date date) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".select_contract4", date);
	}

	@Override
	public String getHsCont(String c_code) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".getHsCont", c_code);
	}
	
	

}
