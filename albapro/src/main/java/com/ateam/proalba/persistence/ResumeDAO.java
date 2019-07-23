package com.ateam.proalba.persistence;

import java.util.List;
import java.util.Map;

import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.domain.ResumeVO;

public interface ResumeDAO {
	void write_resume(Map<String, String> map) throws Exception;
	List<ResumeVO> list_resume(String id) throws Exception;
	ResumeVO view_resume(String r_code) throws Exception;
	ResumeVO late_status(String r_code) throws Exception;
	void delete_resume(String r_code) throws Exception;
	void update_resume(Map<String, String > map) throws Exception;
	void apply_resume(Map<String, String> map) throws Exception;
	List<ResumeVO> checkResume(String n_code) throws Exception;
	List<NoticeVO> applyResumeList(String id) throws Exception;
}
