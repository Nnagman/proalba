package com.ateam.proalba.mapper;

import java.util.ArrayList;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.Criteria;

public interface CareerMapper {
	
	public ArrayList<CareerVO> listAll();
	public ArrayList<CareerVO> listPaging(int page);
	public ArrayList<CareerVO> listCriteria(Criteria criteria);
	public int countCareers();
}
