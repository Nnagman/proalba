package com.ateam.proalba.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.Criteria;
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
	public int countCareers(Criteria criteria) throws Exception {
		return careerDAO.countCareers(criteria);
	}

}
