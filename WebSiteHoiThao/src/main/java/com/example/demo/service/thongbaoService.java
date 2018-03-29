package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.example.demo.dao.thongbaoRepository;
import com.example.demo.model.thongbao;

@Service
@Transactional
public class thongbaoService  {
	private final thongbaoRepository thongbaorepository;

	public thongbaoService(thongbaoRepository thongbaorepository) {
		super();
		this.thongbaorepository = thongbaorepository;
	}
	
	public thongbao findthongbaoLast() {
		thongbao thongbaoLast = new thongbao();
		for(thongbao i:thongbaorepository.findAll()) {
			thongbaoLast = i;
			break;
		}
		return thongbaoLast;
	}
	
	public void save(thongbao thongbaocanluu) {
		thongbaorepository.save(thongbaocanluu);
	}
}
