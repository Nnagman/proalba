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

	@Override
	public String getMcode(String id) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".checkM", id);
	}

	@Override
	public String getbnum(String id) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".gbnum", id);
	}

	@Override
	public String getArticles() throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".getArticles");
	}

	@Override
	public String getPdata() {
		return sqlSession.selectOne(NAMESPACE + ".getPdata");
	}

	@Override
	public void modifyPdata(String pdata) {
		sqlSession.update(NAMESPACE + ".modifyPdata",pdata);	
	}

	@Override
	public void modifyArticle(String articles) {
		sqlSession.update(NAMESPACE + ".modifyArticle",articles);	
		
	}

	@Override
	public String gethourWage() {
		return sqlSession.selectOne(NAMESPACE + ".gethourWage");

	}

	@Override
	public void hwModify(int hourWage) {
		sqlSession.update(NAMESPACE + ".hwModify",hourWage);	
	}

	@Override
	public String ceoCount() {
		return sqlSession.selectOne(NAMESPACE + ".ceoCount");
	}

	@Override
	public String perCount() {
		return sqlSession.selectOne(NAMESPACE + ".perCount");
	}

	@Override
	public String contCount() {
		return sqlSession.selectOne(NAMESPACE + ".contCount");
	}

	@Override
	public void withdraw(String mcode) {
		sqlSession.update(NAMESPACE + ".withdraw", mcode);
	}

	@Override
	public String is_withdraw(String mcode) {
		return sqlSession.selectOne(NAMESPACE + ".is_withdraw", mcode);

	}
}
