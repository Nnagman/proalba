package com.ateam.proalba.persistence;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.MemberVO;

public interface MemberDAO {

	public void cregister(MemberVO memberVO) throws Exception;
	
	public void pregister(MemberVO memberVO) throws Exception;
	
	public int idcheck(String id) throws Exception;
	
	public MemberVO login(LoginDTO loginDTO) throws Exception;
	
	public MemberVO apiIdcheck(String email) throws Exception;

	public void pregisterModify(MemberVO memberVO);
	
	public void cregisterModify(MemberVO memberVO);
	
	public MemberVO getList(String id) throws Exception;

	public String getMcode(String id) throws Exception;

	public String getbnum(String id) throws Exception;

	public String getArticles() throws Exception;

	public String getPdata();

	public void modifyPdata(String pdata);

	public void modifyArticle(String articles);

	public String gethourWage();

	public void hwModify(int hourWage);

	public String ceoCount();

	public String perCount();

	public String contCount();

	public void withdraw(String mcode);

	public String is_withdraw(String mcode);

}
