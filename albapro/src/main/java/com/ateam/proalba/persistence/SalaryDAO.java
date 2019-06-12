package com.ateam.proalba.persistence;

import java.util.List;
import java.util.Map;

import com.ateam.proalba.domain.SalaryVO;
import com.ateam.proalba.domain.Criteria;

public interface SalaryDAO {
	List<SalaryVO> listCriteria(String id) throws Exception;
	int countSalarys(Criteria criteria) throws Exception;
	SalaryVO select_salary(String sa_code) throws Exception;
	void insert_salary(String sa_code) throws Exception;
	List<SalaryVO> pserSalary(Map<String, String> map);
}
