package com.ateam.proalba.service;

import java.util.List;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.SalaryVO;

public interface SalaryService {
	List<SalaryVO> listCriteria(Criteria criteria, String id) throws Exception;
	int countSalarys(Criteria criteria) throws Exception;
	SalaryVO select_salary(String sa_code) throws Exception;
}
