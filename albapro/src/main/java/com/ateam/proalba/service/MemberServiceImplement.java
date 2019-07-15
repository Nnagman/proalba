package com.ateam.proalba.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.MemberVO;
import com.ateam.proalba.persistence.MemberDAO;

@Service
public class MemberServiceImplement implements MemberService {
	
	private final MemberDAO memberDAO;
	
	@Inject
	public MemberServiceImplement(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	//ȸ������ó��
	@Override
	public void cregister(MemberVO memberVO) throws Exception {
		memberDAO.cregister(memberVO);
	}

	//�α���ó��
	@Override
	public MemberVO login(LoginDTO loginDTO) throws Exception {
		return memberDAO.login(loginDTO);
	}

	@Override
	public void pregister(MemberVO memberVO) throws Exception {
		memberDAO.pregister(memberVO);
	}

	@Override
	public int idcheck(String id) throws Exception {
		return memberDAO.idcheck(id);
	}

	@Override
	public void pregisterModify(MemberVO memberVO) throws Exception{
		memberDAO.pregisterModify(memberVO);
		
	}

	@Override
	public MemberVO getList(String id) throws Exception {
		return memberDAO.getList(id);
	}

	@Override
	public void cregisterModify(MemberVO memberVO) throws Exception {
		memberDAO.cregisterModify(memberVO);
	}

	@Override
	public String getMcode(String id) throws Exception {
		return memberDAO.getMcode(id);
	}

	@Override
	public String getbnum(String id) throws Exception{
		return memberDAO.getbnum(id);
	}

	@Override
	public String getArticles() throws Exception {
		return memberDAO.getArticles();
	}

	@Override
	public String getPdata() {
		return memberDAO.getPdata();
	}

	@Override
	public void modifyPdata(String pdata) {
		memberDAO.modifyPdata(pdata);
	}

	@Override
	public void modifyArticle(String articles) {
		memberDAO.modifyArticle(articles);
		
	}

	@Override
	public String gethourWage() {
		return memberDAO.gethourWage();
	}

	@Override
	public void hwModify(int hourWage) {
		memberDAO.hwModify(hourWage);		
	}

	@Override
	public String ceoCount() {
		return memberDAO.ceoCount();		
	}

	@Override
	public String perCount() {
		return memberDAO.perCount();		
	}

	@Override
	public String contCount() {
		return memberDAO.contCount();		
	}

	@Override
	public void withdraw(String mcode) {
		memberDAO.withdraw(mcode);
	}

	@Override
	public String is_withdraw(String mcode) {
		return memberDAO.is_withdraw(mcode);
	}

	@Override
	public MemberVO apiIdcheck(String email) throws Exception {
		return memberDAO.apiIdcheck(email);
	}

}
