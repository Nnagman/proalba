package com.ateam.proalba.persistence;

import java.util.List;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;

public interface CareerDAO {

	List<CareerVO> listAll() throws Exception;
	List<CareerVO> listPaging(int page) throws Exception;
	List<CareerVO> listCriteria(Criteria criteria) throws Exception;
	int countCareers(LoginDTO loginDTO) throws Exception;
	List<CareerVO> selectCareers(String id) throws Exception;
}