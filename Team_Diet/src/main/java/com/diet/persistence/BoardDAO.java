package com.diet.persistence;

import java.util.List;
//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

import com.diet.domain.BoardVO;
import com.diet.domain.Criteria;
import com.diet.domain.SearchCriteria;

public interface BoardDAO {

	public void write(BoardVO vo) throws Exception;

	public BoardVO read(Integer boardNo) throws Exception;

	public void update(BoardVO vo) throws Exception;

	public void updateReplyCnt(Integer bno, int amount) throws Exception;

	public void updateViewCnt(Integer bno) throws Exception;

	public void delete(Integer bno) throws Exception;

	public List<BoardVO> listAll() throws Exception;

	public int countPaging(Criteria cri) throws Exception;

	// use for dynamic sql

	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

//	public void addAttach(String fullName)throws Exception;

//	public List<String> getAttach(Integer bno)throws Exception;
//
//	public void deleteAttach(Integer bno)throws Exception;
//
//	public void replaceAttach(String fullName, Integer bno)throws Exception;
}