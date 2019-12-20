package com.diet.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

import com.diet.domain.BoardVO;
import com.diet.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	@Override
	public List<String> getAttach(Integer bno) throws Exception {

		return dao.getAttach(bno);
	}
	
	//글작성
	@Transactional
	@Override
	public void write(BoardVO board) throws Exception {

		dao.write(board);

//		String[] files = board.getFiles();
//
//		if (files == null) {
//			return;
//		}
//
//		for (String fileName : files) {
//			dao.addAttach(fileName);
//		}
	}

	//조회수,상세페이지
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public BoardVO read(Integer boardNo) throws Exception {
		dao.updateViewCnt(boardNo);
		return dao.read(boardNo);
	}
	//수정
	@Transactional
	@Override
	public void modify(BoardVO board) throws Exception {
		dao.update(board);

//		Integer bno = board.getBno();
//
//		dao.deleteAttach(bno);
//
//		String[] files = board.getFiles();
//
//		if (files == null) {
//			return;
//		}
//
//		for (String fileName : files) {
//			dao.replaceAttach(fileName,bno);
//		}
	}

	//삭제
	@Override
	public void remove(Integer bno) throws Exception {
//		dao.deleteAttach(bno);
		dao.delete(bno);
	}
	//목록
	@Override
	public List<BoardVO> listAll() throws Exception {
		return dao.listAll();
	}


//	@Override
//	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
//
//		return dao.listCriteria(cri);
//	}
//
//	@Override
//	public int listCountCriteria(Criteria cri) throws Exception {
//
//		return dao.countPaging(cri);
//	}
//
//	@Override
//	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
//
//		return dao.listSearch(cri);
//	}
//
//	@Override
//	public int listSearchCount(SearchCriteria cri) throws Exception {
//
//		return dao.listSearchCount(cri);
//	}

}