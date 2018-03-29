package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.example.demo.dao.thongbaoRepository;
import com.example.demo.dao.userRepository;
import com.example.demo.model.thongbao;
import com.example.demo.model.user;

@Service
@Transactional
public class userService {
	private final userRepository userrepository;

	public userService(userRepository userrepository) {
		super();
		this.userrepository= userrepository;
	}
	
	public user TK(String taikhoan,String matkhau) {
		user u = new user(0, "", "");
		for(user i:userrepository.findAll())
		{
			if(i.getTaikhoan().equals(taikhoan))
				if(i.getMatkhau().equals(matkhau))
				{
					return i;
				}
		}
		
		return u;
	}

}
