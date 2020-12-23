package com.liverpool.mvc00;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	//회원가입
	public void insert(UserVO vo) {
		mybatis.insert("mapper.insert", vo);
	}
	//아이디 중복 체크
	public int checkid(UserVO vo) {
		int idcheck = mybatis.selectOne("mapper.checkid",vo);
		return idcheck;
	}
	
	//로그인
		public int logincheck(UserVO vo) {
			int logincheck = mybatis.selectOne("mapper.login", vo);
			return logincheck;
		}
	
	
}




