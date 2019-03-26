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
	
	//회원가입처리
	@Override
	public void register(MemberVO memberVO) throws Exception {
		sqlSession.insert(NAMESPACE + ".register", memberVO);	
		
	}

	//로그인처리
	@Override
	public MemberVO login(LoginDTO loginDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".login", loginDTO);
	}

}
