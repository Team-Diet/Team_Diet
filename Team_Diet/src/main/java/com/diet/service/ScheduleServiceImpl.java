package com.diet.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

import com.diet.domain.BarchartVO2;
import com.diet.domain.BoardVO;
import com.diet.persistence.BoardDAO;
import com.diet.persistence.ScheduleDAO;

@Service
public class ScheduleServiceImpl implements ScheduleService {

	@Inject
	private ScheduleDAO dao;
	
	//일별비교
	@Override
	public BarchartVO2 chart_daytoday(Integer userno) throws Exception{
		return dao.chart_daytoday(userno);
	}

		



}