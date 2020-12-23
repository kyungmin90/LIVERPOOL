package com.liverpool.mvc00;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	@Autowired
	BbsDAO dao;
	@Autowired
	BbsService service;

	@RequestMapping("bbs.do")
	public void bbs() {

	}

	// 게시판 글쓰기 페이지로 이동
	@RequestMapping("bbsWrite.do")
	public void bbsWrite() {

	}

	// 게시판 글쓰기
	@RequestMapping("bbsInsert.do")
	public void bbsInsert(BbsVO bbsVO) {
		service.insert(bbsVO);
	}

	// 게시판 글보기
	@RequestMapping("bbsRead.do")
	public void bbsRead(String BNO, Model model) {
		BbsVO vo = service.read(BNO);
		model.addAttribute("vo", vo);
	}

	// 게시판 수정페이지로 내용 불러와서 이동
	@RequestMapping("bbsUpdate.do")
	public void bbsUpdate(String BNO, Model model) {
		BbsVO vo = service.read(BNO);
		model.addAttribute("vo", vo);
	}

	// 게시판 수정
	@RequestMapping("bbsUpInsert.do")
	public void bbsUpInsert(BbsVO bbsVO) {
		service.upinsert(bbsVO);
	}

	// 게시판 삭제
	@RequestMapping("bbsDelete.do")
	public void bbsDel(String BNO) {
		service.delete(BNO);

	}
	
	// 게시판 검색
		@RequestMapping("search.do")
		public void search(Model model, BbsVO bbsVO) {
			List<BbsVO> list = service.search(bbsVO);
			model.addAttribute("list", list);
		}
		
		
	//내가쓴글
		@RequestMapping("myBBS.do")
		public void myBBS(Model model, BbsVO bbsVO) {
			List<BbsVO> list = service.mybbs(bbsVO);
			model.addAttribute("list", list);
		}
	

}
