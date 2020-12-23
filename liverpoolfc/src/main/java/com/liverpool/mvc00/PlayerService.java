package com.liverpool.mvc00;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlayerService {
	@Autowired
	PlayerDAO dao;
	
	

		public PlayerVO player(int NO) {
			return dao.player(NO);
		}

}
