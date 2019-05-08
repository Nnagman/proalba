package com.ateam.proalba.persistence;

import java.util.List;
import java.util.Map;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.WcontractVO;

public interface ContractDAO {
	void add_contract(WcontractVO wcontractVO) throws Exception;
	List<WcontractVO> select_contract(LoginDTO loginDTO) throws Exception;
	WcontractVO select_contract2(Map<String, String[]> map) throws Exception;
	List<WcontractVO> listPaging(int page) throws Exception;
	List<WcontractVO> listCriteria(Criteria criteria) throws Exception;
	int count_contract(LoginDTO loginDTO) throws Exception; 
	void update_contract(String preFileName) throws Exception;
}