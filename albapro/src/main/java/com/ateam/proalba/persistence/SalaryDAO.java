package com.ateam.proalba.persistence;

import java.util.List;

import com.ateam.proalba.domain.SalaryVO;
import com.ateam.proalba.domain.Criteria;

public interface SalaryDAO {
	List<SalaryVO> listCriteria(Criteria criteria, String p_id) throws Exception;
	int countSalarys(Criteria criteria) throws Exception;
}