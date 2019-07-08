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
	public void cregisterModify(MemberVO memberVO) throws Exception;
	
	public MemberVO getList(String id) throws Exception;
	public String getMcode(String id) throws Exception;
	public String getbnum(String id) throws Exception;
	public String getArticles() throws Exception;
	public String getPdata();
	public void modifyPdata(String pdata);
	public void modifyArticle(String articles);
	public String gethourWage();
	public void hwModify(int hourWage);
}
