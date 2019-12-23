package com.diet.persistence;

import java.util.List;
//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

import com.diet.domain.BarchartVO;
import com.diet.domain.BarchartVO2;
import com.diet.domain.BoardVO;

public interface ScheduleDAO {

	public BarchartVO2 chart_daytoday(Integer userno) throws Exception;

}