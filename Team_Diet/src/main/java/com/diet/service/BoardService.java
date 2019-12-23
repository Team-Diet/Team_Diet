package com.diet.service;

import java.util.List;

/*import org.zerock.domain.Criteria;
import org.zerock.domain.SearchCriteria;*/

import com.diet.domain.BoardVO;
import com.diet.domain.Criteria;
import com.diet.domain.SearchCriteria;

public interface BoardService {

	public void write(BoardVO board) throws Exception;

	public BoardVO read(Integer boardNo) throws Exception;

	public void modify(BoardVO board) throws Exception;

	public void remove(Integer bno) throws Exception;

	public List<BoardVO> listAll() throws Exception;

	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
//	public List<String> getAttach(Integer bno)throws Exception;

}