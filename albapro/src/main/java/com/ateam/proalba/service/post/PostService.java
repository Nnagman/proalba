package com.ateam.proalba.service.post;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.ateam.proalba.domain.AttachVO;
import com.ateam.proalba.domain.PostVO;

public interface PostService {
	public List<PostVO> listAll(int start, int end, String search_option, String keyword) throws Exception;
	public int countArticle(String search_option, String keyword) throws Exception;
	public PostVO read(int p_code) throws Exception;
	public void create(PostVO vo) throws Exception;
	public String getMcode(String id) throws Exception;
	public List<AttachVO> listAttach(int p_code) throws Exception;	//첨부파일 조회 
	public void increaseViewcnt(int p_code, HttpSession session) throws Exception;
	public void deleteFile(String fullName) throws Exception;
	public void update(PostVO vo) throws Exception;
	public void delete(int p_code) throws Exception;
}
