package com.ateam.proalba.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.WcontractVO;
import com.ateam.proalba.persistence.ContractDAO;

@Service
public class ContractServiceImplement implements ContractService {

	private final ContractDAO contractDAO;
	@Inject
	public ContractServiceImplement(ContractDAO contractDAO) {
		this.contractDAO = contractDAO;
	}
	@Override
	public void add_contract(WcontractVO wcontractVO) throws Exception {
		contractDAO.add_contract(wcontractVO);
	}

	@Override
	public List<WcontractVO> select_contract(String id) throws Exception {
		return contractDAO.select_contract(id);
	}

	@Override
	public int count_contract(LoginDTO loginDTO) throws Exception {
		return contractDAO.count_contract(loginDTO);
	}

	@Override
	public List<WcontractVO> listCriteria(Criteria criteria) throws Exception {
		return  contractDAO.listCriteria(criteria);
	}
	@Override
	public void update_contract(String fileName) throws Exception {
		contractDAO.update_contract(fileName);
	}
	@Override
	public WcontractVO select_contract2(Map<String, String[]> map) throws Exception {
		return contractDAO.select_contract2(map);
	}
	@Override
	public void send_contract(WcontractVO wcontractVO) throws Exception {
		contractDAO.send_contract(wcontractVO);
	}
	@Override
	public WcontractVO select_contract3(String c_code) throws Exception {
		return contractDAO.select_contract3(c_code);
	}
	@Override
	public void check_contract(WcontractVO wcontractVO) throws Exception {
		contractDAO.check_contract(wcontractVO);
	}
	@Override
	public void add_storeTXid(Map<String, Object> bmap) throws Exception {
		contractDAO.add_storeTXid(bmap);
	}

	

}
