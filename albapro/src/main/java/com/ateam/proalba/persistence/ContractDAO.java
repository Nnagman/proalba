package com.ateam.proalba.persistence;

import java.util.Date;

import java.util.List;
import java.util.Map;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.WcontractVO;

public interface ContractDAO {
	void add_contract(WcontractVO wcontractVO) throws Exception;
	List<WcontractVO> select_contract(String id) throws Exception;
	WcontractVO select_contract2(Map<String, String[]> map) throws Exception;
	WcontractVO select_contract3(String c_code) throws Exception;
	WcontractVO select_contract4(Date date) throws Exception;
	List<WcontractVO> listPaging(int page) throws Exception;
	List<WcontractVO> listCriteria(Criteria criteria) throws Exception;
	int count_contract(LoginDTO loginDTO) throws Exception; 
	void update_contract(String preFileName) throws Exception;
	void send_contract(WcontractVO wcontractVO) throws Exception;
	void check_contract(WcontractVO wcontractVO) throws Exception;
	void add_storeTXid(Map<String, Object> bmap) throws Exception;

}
