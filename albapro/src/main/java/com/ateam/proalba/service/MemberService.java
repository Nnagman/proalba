package com.ateam.proalba.service;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.MemberVO;

public interface MemberService {

	//ȸ������ó��
	public void cregister(MemberVO memberVO) throws Exception;
	public void pregister(MemberVO memberVO) throws Exception;
	
	//�α���ó��
	public MemberVO login(LoginDTO loginDTO) throws Exception;
	
	public int idcheck(String id) throws Exception;
	public void pregisterModify(MemberVO memberVO) throws Exception;
	
}
