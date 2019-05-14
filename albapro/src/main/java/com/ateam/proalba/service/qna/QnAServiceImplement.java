package com.ateam.proalba.service.qna;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.QnAVO;
import com.ateam.proalba.persistence.qna.QnADAO;

@Service
public class QnAServiceImplement implements QnAService {
	
	@Autowired
	QnADAO qnaDAO;

	@Override
	public void add_qna(QnAVO qnaVO) throws Exception {
		qnaDAO.add_qna(qnaVO);
	}

	@Override
	public void response_qna(Map<String, String> map) throws Exception {
		qnaDAO.response_qna(map);
	}

	@Override
	public int count_qna(String id) throws Exception {
		return qnaDAO.count_qna(id);
	}

	@Override
	public List<QnAVO> listCriteria(Criteria criteria) throws Exception {
		return qnaDAO.listCriteria(criteria);
	}

	@Override
	public QnAVO select_qna(String cs_code) throws Exception {
		return qnaDAO.select_qna(cs_code);
	}

	@Override
	public int count_all_qna() throws Exception {
		return qnaDAO.count_all_qna();
	}

	@Override
	public List<QnAVO> adminListCriteria(Criteria criteria) throws Exception {
		return qnaDAO.adminListCriteria(criteria);
	}

}
