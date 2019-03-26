package com.ateam.proalba.service;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.MemberVO;

public interface MemberService {

	//회원가입처리
	public void register(MemberVO memberVO) throws Exception;
	
	//로그인처리
	public MemberVO login(LoginDTO loginDTO) throws Exception;
	
}
