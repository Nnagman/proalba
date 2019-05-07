package com.ateam.proalba.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.MobileWorkInfoVO;
import com.ateam.proalba.persistence.MobileDAO;

@Service
public class MobileServiceImplement implements MobileService { 
	private final MobileDAO mobileDAO;
	
	@Inject
	public  MobileServiceImplement(MobileDAO mobileDAO){
		this.mobileDAO=mobileDAO;
	}

	@Override
	public int count_mobile_workplace_info(String m_code) throws Exception {

		return mobileDAO.count_mobile_workplace_info(m_code);
	}

	@Override
	public List<MobileWorkInfoVO> mobile_workplace_info(String id) throws Exception {
		
		return mobileDAO.mobile_workplace_info(id);
	}

	@Override
	public List<MobileWorkInfoVO> listCriteria(Criteria criteria) throws Exception {
		
		return mobileDAO.listCriteria(criteria);
	}

}
