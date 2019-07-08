package com.ateam.proalba.persistence.recruinfo;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.NoticeVO;

@Repository
public class RecruinfoDAOImplement implements RecruinfoDAO {
	private static final Logger logger = LoggerFactory.getLogger(RecruinfoDAOImplement.class);

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

	@Override
	public List<NoticeVO> get_addjobopening_free_manage_list(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".get_addjobopening_free_manage_list",id);
	}

	@Override
	public List<NoticeVO> get_addjobopening_free_manage_delete(String delete_n_code) throws Exception {
	
		return sqlSession.selectList(NAMESPACE + ".get_addjobopening_free_manage_delete",delete_n_code);
	}

	@Override
	public int nCount() {
		return sqlSession.selectOne(NAMESPACE + ".nCount");
	}

	@Override
	public void deleteChedNo(String[] deleteChedNo) throws Exception {
		logger.info("NoticeArrayDAO:  " +deleteChedNo);
		List<String> list = new ArrayList<String>();
		for(String notice : deleteChedNo) {
			list.add(notice);
		}
		logger.info(list.toString());
		sqlSession.delete(NAMESPACE + ".deleteNotice", list);
	}

}
