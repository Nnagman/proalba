package com.ateam.proalba.persistence;

import java.util.List;
import java.util.Map;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;

public interface CareerDAO {

	List<CareerVO> listAll() throws Exception;
	List<CareerVO> listPaging(int page) throws Exception;
	List<CareerVO> listCriteria(Criteria criteria) throws Exception;
	int countCareers(LoginDTO loginDTO) throws Exception;
	List<CareerVO> selectCareers(String id) throws Exception;
	void insert_career(Map<String, Object> map) throws Exception;
	void add_storeCTXid(Map<String, Object> cmap) throws Exception;
	void career_leave(String em_code) throws Exception;
}