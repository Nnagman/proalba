package com.ateam.proalba.service;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.MemberVO;

public interface MemberService {

	//ȸ������ó��
	public void register(MemberVO memberVO) throws Exception;
	
	//�α���ó��
	public MemberVO login(LoginDTO loginDTO) throws Exception;
	
}
