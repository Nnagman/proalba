package com.ateam.proalba.persistence;

import java.util.List;
import java.util.Map;

import com.ateam.proalba.domain.ResumeVO;

public interface ResumeDAO {
	void write_resume(Map<String, String> map) throws Exception;
	List<ResumeVO> list_resume(String id) throws Exception;
	ResumeVO view_resume(String r_code) throws Exception;
	void delete_resume(String r_code) throws Exception;
	void update_resume(Map<String, String > map) throws Exception;
}
