package com.ateam.proalba.persistence;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.MemberVO;

public interface MemberDAO {

	//회원가입 처리
	public void register(MemberVO memberVO) throws Exception;
	
	//로그인 처리
	public MemberVO login(LoginDTO loginDTO) throws Exception;
}
