package com.liverpool.mvc00;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class PlayerDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;

	
	// 선수개인정보
	
	public PlayerVO player(int NO) {
	return mybatis.selectOne("mapper.player", NO);
	}
}
