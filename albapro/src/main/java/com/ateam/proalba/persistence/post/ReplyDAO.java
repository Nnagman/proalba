package com.ateam.proalba.persistence.post;

import java.util.List;

import com.ateam.proalba.domain.ReplyDTO;


public interface ReplyDAO {
	public List<ReplyDTO> list(Integer p_code, int start, int end);
	public int count(int p_code);
	public void create(ReplyDTO dto);
	public void update(ReplyDTO dto);
	public void delete(Integer p_code);
	public ReplyDTO detail(int p_code);
}
