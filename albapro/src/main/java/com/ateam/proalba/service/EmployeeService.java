package com.ateam.proalba.service;

import java.util.Map;

public interface EmployeeService {
	public void insert_employee(Map<String, Object> map) throws Exception;
	public void update_finger_id(Map<String, Object> map) throws Exception;
	public void remove_finger_id(Map<String, Object> map) throws Exception;
}
