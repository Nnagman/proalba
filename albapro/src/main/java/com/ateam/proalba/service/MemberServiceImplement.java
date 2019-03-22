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
	public void register(MemberVO memberVO) throws Exception {
		memberDAO.register(memberVO);
	}

	//�α���ó��
	@Override
	public MemberVO login(LoginDTO loginDTO) throws Exception {
		return memberDAO.login(loginDTO);
	}

}
