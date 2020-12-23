package com.liverpool.mvc00;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PlayerController {
	
	@Autowired
	PlayerService service;
	
	@Autowired
	PlayerDAO dao;
	
	@RequestMapping("playAjax.do")
	public void player(int NO, Model model) {
		PlayerVO vo = service.player(NO);
		model.addAttribute("vo", vo);
	}
}
