package com.ateam.proalba.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.domain.ResumeVO;

@Repository
public class ResumeDAOImplement implements ResumeDAO {
	
	private static final String NAMESPACE = "com.ateam.proalba.mapper.ResumeMapper";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void write_resume(Map<String, String> map) throws Exception {
		sqlSession.insert(NAMESPACE + ".write_resume", map);
	}

	@Override
	public List<ResumeVO> list_resume(String id) throws Exception {
		return sqlSession.selectList(NAMESPACE + ".list_resume", id);
	}

	@Override
	public ResumeVO view_resume(String r_code) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".view_resume", r_code);
	}

	@Override
	public void delete_resume(String r_code) throws Exception {
		sqlSession.delete(NAMESPACE + ".delete_resume", r_code);
	}

	@Override
	public void update_resume(Map<String, String> map) throws Exception {
		sqlSession.update(NAMESPACE + ".update_resume1", map);
		sqlSession.update(NAMESPACE + ".update_resume2", map);
	}

	@Override
	public void apply_resume(Map<String, String> map) throws Exception {
		sqlSession.insert(NAMESPACE + ".apply_resume", map);
	}

	@Override
	public List<ResumeVO> checkResume(String n_code) throws Exception {
		return sqlSession.selectList(NAMESPACE + ".checkResume", n_code);
	}

	@Override
	public ResumeVO late_status(String r_code) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".late_status", r_code);
	}

	@Override
	public List<NoticeVO> applyResumeList(String id) throws Exception {
		return sqlSession.selectList(NAMESPACE + ".applyResumeList", id);
	}

}
