package com.liverpool.mvc00;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	@Autowired
	UserDAO dao;
	//회원가입
	public void insert(UserVO vo) {
		dao.insert(vo);
	}
	
	//아이디 중복 체크
	public int checkid(UserVO vo) {
		int idcheck = dao.checkid(vo);
		return idcheck;
	}
	
	//로그인
	public int login(UserVO vo) {
		int logincheck = dao.logincheck(vo);
		return logincheck;
	}
	
	
	
	
	
	
	
}
