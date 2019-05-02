package com.ateam.proalba.mapper;

import java.util.ArrayList;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.WcontractVO;

public interface ContractMapper {
	public void add_contract(WcontractVO wcontractVO);
	public WcontractVO select_contract(LoginDTO loginDTO);
	public int count_contract(LoginDTO loginDTO);
	public ArrayList<WcontractVO> listPaging(int page);
	public ArrayList<WcontractVO> listCriteria(Criteria criteria);
}
