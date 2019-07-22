package com.ateam.proalba.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.persistence.CareerDAO;

@Service
public class CareerServiceImplement implements CareerService {
	
	private final CareerDAO careerDAO;

    @Inject
    public CareerServiceImplement(CareerDAO careerDAO) {
        this.careerDAO = careerDAO;
    }

	@Override
	public List<CareerVO> listAll() throws Exception {
		return careerDAO.listAll();
	}

	@Override
	public List<CareerVO> listCriteria(Criteria criteria) throws Exception {
		return careerDAO.listCriteria(criteria);
	}

	@Override
	public int countCareers(LoginDTO loginDTO) throws Exception {
		return careerDAO.countCareers(loginDTO);
	}
	
	@Override
	public List<CareerVO> selectCareers(String id) throws Exception {
		return careerDAO.selectCareers(id);
	}

	@Override
	public void insert_career(Map<String, Object> map) throws Exception {
		careerDAO.insert_career(map);
	}

	@Override
	public void add_storeCTXid(Map<String, Object> cmap) throws Exception {
		careerDAO.add_storeCTXid(cmap);
		
	}

	@Override
	public void career_leave(String em_code) throws Exception {
		careerDAO.career_leave(em_code);
	}

	@Override
	public List<CareerVO> pselectCareers(String id) throws Exception {
		// TODO Auto-generated method stub
		return careerDAO.pselectCareers(id);
	}

}
