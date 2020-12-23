package com.liverpool.mvc00;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@Autowired
	UserDAO dao;
	@Autowired
	UserService service;
	
	//회원가입
	@RequestMapping("insert.do")
	public void insert(UserVO userVO) {
		service.insert(userVO);
	}
	
	//회원가입 시 아이디 중복 확인
	@RequestMapping("checkid.do")
	public void checkid(UserVO userVO, Model model) {
		int idcheck = service.checkid(userVO);
		model.addAttribute("result",idcheck);
	}
	
	//로그인
	@RequestMapping("logincheck.do")
	public void login(UserVO userVO,Model model, HttpSession session) {
		int logincheck = service.login(userVO);
		
		if(logincheck == 1) {
			//로그인 성공 시 아이디 세션 등록, result 값 1 넘기기
			session.setAttribute("ID", userVO.getId());
			model.addAttribute("result",logincheck);
		}else {
			model.addAttribute("result",logincheck);
		}
		System.out.println(session.getAttribute("ID"));
	}
	
	
}
