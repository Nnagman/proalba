package com.ateam.proalba.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.persistence.AddJobOpeningDAO;

@Service
public class AddJobOpeningServiceImplement implements AddJobOpeningService {
	
	private final AddJobOpeningDAO addJobOepningDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(AddJobOpeningServiceImplement.class);
	
	@Inject
	public AddJobOpeningServiceImplement(AddJobOpeningDAO addJobOepningDAO) {
		this.addJobOepningDAO = addJobOepningDAO;
	}

	@Transactional
	@Override
	public void addJobOpening(NoticeVO noticeVO) throws Exception {
		logger.info("service");
		
		addJobOepningDAO.addJobOpening(noticeVO);		
		logger.info(noticeVO.getFile());
		addJobOepningDAO.addJobOpenAttach(noticeVO);
		
	}

	@Override
	public List<NoticeVO> jobOpeningManage(LoginDTO loginDTO) throws Exception {
		return addJobOepningDAO.jobOpeningManage(loginDTO);
	}

}
