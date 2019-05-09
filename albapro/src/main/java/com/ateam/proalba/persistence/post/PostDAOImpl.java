package com.ateam.proalba.persistence.post;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.AttachVO;
import com.ateam.proalba.domain.PostVO;

@Repository
public class PostDAOImpl implements PostDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<PostVO> listAll(int start, int end, String search_option, String keyword) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start" , start);
		map.put("end", end);
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		return sqlSession.selectList("post.listAll", map);
	}

	@Override
	public int countArticle(String search_option, String keyword) throws Exception {
		//검색 옵션 맵에다가 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("search_option" , search_option);
		map.put("keyword", keyword);
		return sqlSession.selectOne("post.countArticle",map);
	}

	@Override
	public PostVO read(int p_code) throws Exception {
		return sqlSession.selectOne("post.view", p_code);
	}

	@Override
	public int create(PostVO vo) throws Exception {
		sqlSession.insert("post.insert", vo);
		System.out.println("p_code : "+vo.getP_code());
		return vo.getP_code();
	}

	@Override
	public String getMcode(String id) throws Exception {
		return sqlSession.selectOne("post.getMcode", id);
	}

	@Override
	public void addAttach(String fullName, int p_code) {
		Map<String, Object> map = new HashMap<>();
		map.put("fullName", fullName);
		map.put("p_code", p_code);
		sqlSession.insert("post.addAttach", map);
		System.out.println("ATTACHE");		
	}

	@Override
	public List<AttachVO> listAttach(int p_code) throws Exception {
		return sqlSession.selectList("post.listAttach", p_code);

	}

	@Override
	public void increaseViewcnt(int p_code) throws Exception {
		sqlSession.update("post.increaseViewcnt", p_code);
		
	}

	@Override
	public void deleteFile(String fullName) {
		sqlSession.delete("post.deleteAttach", fullName);
	}

	@Override
	public void update(PostVO vo) throws Exception {
		sqlSession.update("post.update", vo);		
	}

	@Override
	public void delete(int p_code) throws Exception {
		sqlSession.delete("post.deletePost",p_code);
		
	}

}
