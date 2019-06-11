package com.ateam.proalba.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.SalaryVO;
import com.ateam.proalba.persistence.SalaryDAO;

@Service
public class SalaryServiceImple implements SalaryService{
	
	private final SalaryDAO salaryDAO;

    @Inject
    public SalaryServiceImple(SalaryDAO salaryDAO) {
        this.salaryDAO = salaryDAO;
    }
	@Override
	public List<SalaryVO> listCriteria(String id) throws Exception {
		return salaryDAO.listCriteria(id);
	}
	@Override
	public int countSalarys(Criteria criteria) throws Exception {
		return salaryDAO.countSalarys(criteria);
	}
	@Override
	public SalaryVO select_salary(String sa_code) throws Exception {
		return salaryDAO.select_salary(sa_code);
	}
	@Override
	public void insert_salary(String sa_code) throws Exception {
		salaryDAO.insert_salary(sa_code);
	}
	@Override
	public List<SalaryVO> pserSalary(Map<String, String> map) {
		return salaryDAO.pserSalary(map);
	}
}
