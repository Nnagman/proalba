package com.ateam.proalba.persistence;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.MemberVO;

public interface MemberDAO {

	//ȸ������ ó��
	public void register(MemberVO memberVO) throws Exception;
	
	//�α��� ó��
	public MemberVO login(LoginDTO loginDTO) throws Exception;
}
