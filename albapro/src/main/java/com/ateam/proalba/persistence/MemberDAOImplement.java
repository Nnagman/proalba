package com.ateam.proalba.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.MemberVO;

@Repository
public class MemberDAOImplement implements MemberDAO {

	private static final String NAMESPACE = "com.ateam.proalba.mapper.MemberMapper";
	private final SqlSession sqlSession;
	
	@Inject
	public MemberDAOImplement(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//ȸ������ó��
	@Override
	public void cregister(MemberVO memberVO) throws Exception {
		sqlSession.insert(NAMESPACE + ".cregister", memberVO);	
	}

	//�α���ó��
	@Override
	public MemberVO login(LoginDTO loginDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".login", loginDTO);
	}

	@Override
	public void pregister(MemberVO memberVO) throws Exception {
		sqlSession.insert(NAMESPACE + ".pregister", memberVO);
	}

	@Override
	public int idcheck(String id) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".idcheck", id);
	}

	@Override
	public void pregisterModify(MemberVO memberVO) {
		sqlSession.update(NAMESPACE + ".pregisterModify", memberVO);
		
	}

	@Override
	public MemberVO getList(String id) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".getList", id);
	}

	@Override
	public void cregisterModify(MemberVO memberVO) {
		sqlSession.update(NAMESPACE + ".cregisterModify", memberVO);
	}
}
