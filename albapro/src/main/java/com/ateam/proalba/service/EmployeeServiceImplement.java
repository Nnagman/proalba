package com.ateam.proalba.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ateam.proalba.persistence.EmployeeDAO;

@Service
public class EmployeeServiceImplement implements EmployeeService {

	@Autowired
	EmployeeDAO employeeDAO;
	
	@Override
	public void insert_employee(Map<String, Object> map) throws Exception {
		employeeDAO.insert_employee(map);
	}

	@Override
	public void update_finger_id(Map<String, Object> map) throws Exception {
		employeeDAO.update_finger_id(map);
	}

	@Override
	public void remove_finger_id(Map<String, Object> map) throws Exception {
		employeeDAO.remove_finger_id(map);
	}

}
