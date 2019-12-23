package com.diet.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

import com.diet.domain.BoardVO;
import com.diet.domain.Criteria;
import com.diet.domain.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.diet.mapper.boardMapper";

	// 글작성
	@Override
	public void write(BoardVO vo) throws Exception {
		session.insert(namespace + ".write", vo);
	}
	
	// 상세페이지
	@Override
	public BoardVO read(Integer bno) throws Exception {
		return session.selectOne(namespace + ".read", bno);
	}
	// 글수정
	@Override
	public void update(BoardVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}
	// 글삭제
	@Override
	public void delete(Integer boardno) throws Exception {
		session.delete(namespace + ".delete", boardno);
	}
	
	// 목록
	@Override
	public List<BoardVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {

		return session.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	
//	@Override
//	public void updateReplyCnt(Integer bno, int amount) throws Exception {
//
//		Map<String, Object> paramMap = new HashMap<String, Object>();
//		paramMap.put("bno", bno);
//		paramMap.put("amount", amount);
//		session.update(namespace + ".updateReplyCnt", paramMap);
//	}
	
	// 조회수
	@Override
	public void updateViewCnt(Integer boardNo) throws Exception {

		session.update(namespace + ".updateViewCnt", boardNo);

	}

//	@Override
//	public void addAttach(String fullName) throws Exception {
//
//		session.insert(namespace + ".addAttach", fullName);
//
//	}
//
//	@Override
//	public List<String> getAttach(Integer bno) throws Exception {
//		return session.selectList(namespace + ".getAttach", bno);
//	}
//
//	@Override
//	public void deleteAttach(Integer boardno) throws Exception {
//
//		session.delete(namespace + ".deleteAttach", boardno);
//
//	}
//
//	@Override
//	public void replaceAttach(String fullName, Integer bno) throws Exception {
//
//		Map<String, Object> paramMap = new HashMap<String, Object>();
//
//		paramMap.put("bno", bno);
//		paramMap.put("fullName", fullName);
//
//		session.insert(namespace + ".replaceAttach", paramMap);
//
//	}
}