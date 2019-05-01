package com.ateam.proalba.persistence.post;

import java.util.List;

import com.ateam.proalba.domain.AttachVO;
import com.ateam.proalba.domain.PostVO;

public interface PostDAO {
	public List<PostVO> listAll(int start, int end, String search_option, String keyword) throws Exception;

	public int countArticle(String search_option, String keyword) throws Exception;

	public PostVO read(int p_code) throws Exception;

	public int create(PostVO vo) throws Exception;

	public String getMcode(String id) throws Exception;

	public void addAttach(String fullName, int p_code);	//첨부파일 저장 

	public List<AttachVO> listAttach(int p_code) throws Exception;

	public void increaseViewcnt(int p_code) throws Exception;

	public void deleteFile(String fullName);

	public void update(PostVO vo) throws Exception;

	public void delete(int p_code) throws Exception;
}
