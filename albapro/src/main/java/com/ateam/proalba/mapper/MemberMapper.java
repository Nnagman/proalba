package com.ateam.proalba.mapper;

import java.util.ArrayList;

import com.ateam.proalba.domain.MemberVO;

public interface MemberMapper {

	public ArrayList<MemberVO> getList();
	public void cregister(MemberVO memberVO) throws Exception;
	public void pregister(MemberVO memberVO) throws Exception;
	public void idcheck(MemberVO memberVO) throws Exception;
}
