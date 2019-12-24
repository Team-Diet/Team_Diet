package com.diet.service;

import java.util.List;

import com.diet.domain.BarchartVO2;

/*import org.zerock.domain.Criteria;
import org.zerock.domain.SearchCriteria;*/

import com.diet.domain.BoardVO;
import com.diet.domain.UsergoalVO;

public interface ScheduleService {

	public BarchartVO2 chart_daytoday(Integer userno) throws Exception;
	public UsergoalVO chart_goal(Integer userno) throws Exception;
}