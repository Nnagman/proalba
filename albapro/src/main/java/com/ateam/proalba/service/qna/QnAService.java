package com.ateam.proalba.service.qna;

import java.util.List;
import java.util.Map;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.QnAVO;

public interface QnAService {
	public void add_qna(QnAVO qnaVO) throws Exception;
	public void response_qna(Map<String, String> map) throws Exception;
	public int count_qna(String id) throws Exception;
	public List<QnAVO> listCriteria(Criteria criteria) throws Exception;
	public QnAVO select_qna(String cs_code) throws Exception;
	public int count_all_qna() throws Exception;
	public List<QnAVO> adminListCriteria(Criteria criteria) throws Exception;
}
