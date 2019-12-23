package com.diet.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

import com.diet.domain.BarchartVO2;
import com.diet.domain.BoardVO;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.diet.mapper.scheduleMapper";

	// 글작성
	@Override
	public BarchartVO2 chart_daytoday(Integer userNo) throws Exception{
		session.selectOne(namespace + ".delete", userNo);
		session.selectOne(namespace + ".car", userNo);
		return session.selectOne(namespace + ".readchart", userNo);
	
	}
	
	
}