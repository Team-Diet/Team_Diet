package com.diet.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

import com.diet.domain.BoardVO;
import com.diet.domain.Criteria;
import com.diet.domain.SearchCriteria;
import com.diet.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
//	@Override
//	public List<String> getAttach(Integer boardNo) throws Exception {
//
//		return dao.getAttach(boardNo);
//	}
	
	//���ۼ�
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

	//��ȸ��,��������
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public BoardVO read(Integer boardNo) throws Exception {
		dao.updateViewCnt(boardNo);
		return dao.read(boardNo);
	}
	//����
	@Transactional
	@Override
	public void modify(BoardVO board) throws Exception {
		dao.update(board);

//		Integer boardNo = board.getboardNo();
//
//		dao.deleteAttach(boardNo);
//
//		String[] files = board.getFiles();
//
//		if (files == null) {
//			return;
//		}
//
//		for (String fileName : files) {
//			dao.replaceAttach(fileName,boardNo);
//		}
	}

	//����
	@Override
	public void remove(Integer boardNo) throws Exception {
//		dao.deleteAttach(boardNo);
		dao.delete(boardNo);
	}
	//���
	@Override
	public List<BoardVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {

		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return dao.listSearchCount(cri);
	}

}