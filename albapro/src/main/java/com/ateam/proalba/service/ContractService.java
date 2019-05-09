package com.ateam.proalba.service;

import java.util.List;
import java.util.Map;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.WcontractVO;

public interface ContractService {
	List<WcontractVO> listCriteria(Criteria criteria) throws Exception;
	void add_contract(WcontractVO wcontractVO) throws Exception;
	List<WcontractVO> select_contract(LoginDTO loginDTO) throws Exception;
	int count_contract(LoginDTO loginDTO) throws Exception;
	void update_contract(String fileName) throws Exception;
	WcontractVO select_contract2(Map<String, String[]> hashMap) throws Exception;
}
