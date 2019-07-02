package com.ateam.proalba.persistence;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.MemberVO;

public interface MemberDAO {

	//ȸ������ ó��
	public void cregister(MemberVO memberVO) throws Exception;
	
	public void pregister(MemberVO memberVO) throws Exception;
	
	public int idcheck(String id) throws Exception;
	
	//�α��� ó��
	public MemberVO login(LoginDTO loginDTO) throws Exception;

	public void pregisterModify(MemberVO memberVO);
	
	public void cregisterModify(MemberVO memberVO);
	
	public MemberVO getList(String id) throws Exception;

	public String getMcode(String id) throws Exception;

	public String getbnum(String id) throws Exception;
}
