package com.ateam.proalba.persistence;

import java.util.List;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.MobileWorkInfoVO;


public interface MobileDAO {
	int count_mobile_workplace_info(String m_code) throws Exception;
	List<MobileWorkInfoVO> mobile_workplace_info(String id) throws Exception;
	List<MobileWorkInfoVO> listCriteria(Criteria criteria) throws Exception;
}
