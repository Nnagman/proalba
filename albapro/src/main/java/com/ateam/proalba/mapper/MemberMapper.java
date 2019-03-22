package com.ateam.proalba.mapper;

import java.util.ArrayList;

import com.ateam.proalba.domain.MemberVO;

public interface MemberMapper {

	public ArrayList<MemberVO> getList();
	public void register(MemberVO memberVO) throws Exception;
}
