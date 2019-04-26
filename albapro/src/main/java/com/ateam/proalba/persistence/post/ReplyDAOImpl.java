package com.ateam.proalba.persistence.post;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.ReplyDTO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ReplyDTO> list(Integer p_code, int start, int end) {
		Map<String, Object> map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);
		map.put("p_code", p_code);
		return sqlSession.selectList("reply.list",map);
	}

	@Override
	public int count(int p_code) {
		return sqlSession.selectOne("reply.count", p_code);
	}

	@Override
	public void create(ReplyDTO dto) {
		sqlSession.insert("reply.insertReply", dto);
	}

	@Override
	public void update(ReplyDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Integer p_code) {
		// TODO Auto-generated method stub

	}

	@Override
	public ReplyDTO detail(int p_code) {
		// TODO Auto-generated method stub
		return null;
	}

}
