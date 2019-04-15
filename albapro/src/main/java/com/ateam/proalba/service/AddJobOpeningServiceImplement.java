package com.ateam.proalba.service;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

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

	@Override
	public void addJobOpening(NoticeVO noticeVO) throws Exception {
		logger.info("service");
		addJobOepningDAO.addJobOpening(noticeVO);
	}

}
