package com.ateam.proalba.persistence.recruinfo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.NoticeVO;

@Repository
public class RecruinfoDAOImplement implements RecruinfoDAO {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "com.ateam.proalba.mapper.AddJobOpeningMapper";

	@Override
	public List<NoticeVO> get_notice_list() throws Exception {
		return sqlSession.selectList(NAMESPACE + ".get_notice_list");
	}
	
	@Override
	public List<NoticeVO> get_noticeDe_list(String n_code) throws Exception {
		return sqlSession.selectList(NAMESPACE + ".get_noticeDe_list",n_code);
	}

}
