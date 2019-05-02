package com.ateam.proalba.service;

import java.util.List;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.SalaryVO;

public interface SalaryService {
	List<SalaryVO> listCriteria(Criteria criteria, String p_id) throws Exception;
	int countSalarys(Criteria criteria) throws Exception;
}
