package com.ateam.proalba.service;

import java.util.List;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.WcontractVO;

public interface ContractService {
	List<WcontractVO> listCriteria(Criteria criteria) throws Exception;
	void add_contract(WcontractVO wcontractVO) throws Exception;
	List<WcontractVO> select_contract(LoginDTO loginDTO) throws Exception;
	int count_contract(LoginDTO loginDTO) throws Exception;
}
