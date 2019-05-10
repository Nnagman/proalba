package com.ateam.proalba.persistence.qna;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.QnAVO;

@Repository
public class QnADAOImplement implements QnADAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "com.ateam.proalba.mapper.QnAMapper";
	
	@Override
	public void add_qna(QnAVO qnaVO) throws Exception {
		sqlSession.insert(NAMESPACE + ".add_qna", qnaVO);
	}

	@Override
	public void response_qna() throws Exception {
		
	}

	@Override
	public int count_qna(String id) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".count_qna", id);
	}

	@Override
	public List<QnAVO> listCriteria(Criteria criteria) throws Exception {
		return sqlSession.selectList(NAMESPACE + ".listCriteria", criteria);
	}

	@Override
	public QnAVO select_qna(Map<String, String> map) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".select_qna", map);
	}

}
