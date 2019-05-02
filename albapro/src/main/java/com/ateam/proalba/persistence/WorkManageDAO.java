package com.ateam.proalba.persistence;

import java.util.List;

import com.ateam.proalba.domain.WorkManageVO;

public interface WorkManageDAO {
	
	List<WorkManageVO> listAll(String id) throws Exception;

}
