package com.liverpool.mvc00;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BbsService {
	@Autowired
	BbsDAO dao;

	// 게시판 글작성
	public void insert(BbsVO vo) {
		dao.insert(vo);
	}

	// 게시판 글보기, 수정페이지 내용 불러오기
	public BbsVO read(String BNO) {
		return dao.read(BNO);
	}

	// 게시판 글작성
	public void upinsert(BbsVO vo) {
		dao.upinsert(vo);
	}

	// 게시판 글삭제
	public BbsVO delete(String BNO) {
		return dao.delete(BNO);
	}

	// 검색 결과 list
	public List<BbsVO> search(BbsVO bbsVO) {
		List<BbsVO> search = dao.search(bbsVO);
		return search;
	}
	// 내가쓴글
		public List<BbsVO> mybbs(BbsVO bbsVO) {
			List<BbsVO> list = dao.mybbs(bbsVO);
			return list;
		}
	
	
}
