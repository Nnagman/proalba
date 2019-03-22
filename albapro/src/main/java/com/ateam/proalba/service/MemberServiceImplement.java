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

	//회원가입처리
	@Override
	public void register(MemberVO memberVO) throws Exception {
		memberDAO.register(memberVO);
	}

	//로그인처리
	@Override
	public MemberVO login(LoginDTO loginDTO) throws Exception {
		return memberDAO.login(loginDTO);
	}

}
