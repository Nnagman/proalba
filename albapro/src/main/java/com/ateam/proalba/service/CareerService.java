package com.ateam.proalba.service;

import java.util.List;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;

public interface CareerService {
	List<CareerVO> listAll() throws Exception;
	List<CareerVO> listCriteria(Criteria criteria) throws Exception;
	int countCareers(LoginDTO loginDTO) throws Exception;
}
