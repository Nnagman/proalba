package com.ateam.proalba.persistence;

import java.util.List;

import com.ateam.proalba.domain.WorkManageVO;
import com.ateam.proalba.domain.mobile.MobileSalaryInfoVO;

public interface WorkManageDAO {
	
	List<WorkManageVO> listAll(String id) throws Exception;
	
	List<MobileSalaryInfoVO> csalary(String id) throws Exception;
}
