package com.liverpool.mvc00;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BbsDAO {
	@Autowired
	SqlSessionTemplate mybatis;

	// 게시판 글작성
	public void insert(BbsVO vo) {
		mybatis.insert("mapper.bbsinsert", vo);
	}

	// 게시판 글 보기, 수정페이지 내용 불러오기
	public BbsVO read(String BNO) {
		return mybatis.selectOne("mapper.bbsread", BNO);
	}

	// 게시판 글작성
	public void upinsert(BbsVO vo) {
		mybatis.update("mapper.bbsupinsert", vo);
	}

	// 게시판 글 삭제
	public BbsVO delete(String BNO) {
		return mybatis.selectOne("mapper.bbsdelete", BNO);
	}

	// 검색
	public List<BbsVO> search(BbsVO bbsVO) {
		List<BbsVO> search = mybatis.selectList("mapper.search", bbsVO);
		System.out.println("리스트불러오니?");
		System.out.println(search);
		return search;
	}
	
	// 내가쓴글검색
		public List<BbsVO> mybbs(BbsVO bbsVO) {
			List<BbsVO> mybbs = mybatis.selectList("mapper.mybbs", bbsVO);
			return mybbs;
		}

}
