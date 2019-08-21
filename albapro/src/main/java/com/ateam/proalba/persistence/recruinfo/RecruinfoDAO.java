package com.ateam.proalba.persistence.recruinfo;

import java.util.List;

import com.ateam.proalba.domain.NoticeVO;

public interface RecruinfoDAO {
	public List<NoticeVO> get_notice_list() throws Exception;
	public List<NoticeVO> get_noticeDe_list(String n_code) throws Exception;
	public List<NoticeVO> get_addjobopening_free_manage_list(String id) throws Exception;
	public List<NoticeVO> get_addjobopening_free_manage_delete(String delete_n_code) throws Exception;
	public int nCount();
}
