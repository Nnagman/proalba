package com.ateam.proalba.service;

import java.util.List;

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
	public List<WcontractVO> select_contract(LoginDTO loginDTO) throws Exception {
		return contractDAO.select_contract(loginDTO);
	}

	@Override
	public int count_contract(LoginDTO loginDTO) throws Exception {
		return contractDAO.count_contract(loginDTO);
	}

	@Override
	public List<WcontractVO> listCriteria(Criteria criteria) throws Exception {
		return  contractDAO.listCriteria(criteria);
	}

}
