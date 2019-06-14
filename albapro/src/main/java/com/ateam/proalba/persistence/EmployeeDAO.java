package com.ateam.proalba.persistence;

import java.util.Map;

public interface EmployeeDAO {
	public void insert_employee(Map<String, Object> map);
	public void update_finger_id(Map<String, Object> map);
	public void remove_finger_id(Map<String, Object> map);
}
