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

}
