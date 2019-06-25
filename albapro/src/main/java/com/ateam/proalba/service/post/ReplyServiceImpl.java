package com.ateam.proalba.service.post;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.ReplyDTO;
import com.ateam.proalba.persistence.post.ReplyDAO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyDAO dao;
	
	@Override
	public List<ReplyDTO> list(Integer p_code, int start, int end) {
		return dao.list(p_code, start, end);
	}

	@Override
	public int count(int p_code) {
		return dao.count(p_code);
	}

	@Override
	public void create(ReplyDTO dto) {
		dao.create(dto);
	}

	@Override
	public void update(ReplyDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteReply(String r_code) {
		dao.deleteReply(r_code);
	}

	@Override
	public ReplyDTO detail(int p_code) {
		// TODO Auto-generated method stub
		return null;
	}

}
