package com.ateam.proalba.persistence;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmployeeDAOImplement implements EmployeeDAO {
	
	private static final String NAMESPACE = "com.ateam.proalba.mapper.EmployeeMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert_employee(Map<String, Object> map) {
		sqlSession.insert(NAMESPACE + ".insert_employee", map);
	}

	@Override
	public void update_finger_id(Map<String, Object> map) {
		sqlSession.update(NAMESPACE + ".update_finger_id", map);
	}

	@Override
	public void remove_finger_id(Map<String, Object> map) {
		sqlSession.update(NAMESPACE + ".remove_finger_id", map);
	}

}
