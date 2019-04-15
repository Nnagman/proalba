package com.ateam.proalba.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.NoticeVO;

@Repository
public class AddJobOpeningDAOImplement implements AddJobOpeningDAO {
	
	private static final String NAMESPACE = "com.ateam.proalba.mapper.AddJobOpeningMapper";
	private static final Logger logger = LoggerFactory.getLogger(AddJobOpeningDAOImplement.class);
	
	private final SqlSession sqlSession;
	
	@Inject
	public AddJobOpeningDAOImplement(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void addJobOpening(NoticeVO noticeVO) throws Exception {
		
		logger.info("DAO");
		sqlSession.insert(NAMESPACE + ".addJobOpening", noticeVO);	
	}

}
