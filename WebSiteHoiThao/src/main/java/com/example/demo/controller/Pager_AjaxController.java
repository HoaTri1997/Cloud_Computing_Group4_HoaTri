package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.service.tintucService;
import com.example.demo.service.thongbaoService;
import com.example.demo.model.tintuc;
import com.example.demo.model.thongbao;

@RestController
public class Pager_AjaxController {
	@Autowired
	tintucService tintucservice;
	
	@Autowired
	thongbaoService thongbaoservice;
	
	@PostMapping("/pagertintuc")
	public ResponseEntity<?> getTinTucAjax(){
		List<tintuc> tintucs = tintucservice.findAll();
		
		return ResponseEntity.ok(tintucs);
	}
	
	@PostMapping("/tintucdetailcontroller")
	public ResponseEntity<?> getTinTucDeTailAjax(HttpServletRequest request){
		int idTinTuc = Integer.valueOf(request.getParameter("idTinTuc"));
		tintuc tintucdetail = tintucservice.findById(idTinTuc);
		
		return ResponseEntity.ok(tintucdetail);
	}
	
	@PostMapping("/savethongbao")
	public ResponseEntity<?> saveThongBao(HttpServletRequest request){
		int kiemtra = 0;
		String noidungthongbao = request.getParameter("noidungthongbao");
		thongbao thongbaocanluu = new thongbao();
		thongbaocanluu.setId(1);
		thongbaocanluu.setNoidung(noidungthongbao);
		thongbaocanluu.setNgaytao(new Date());
		try {
			thongbaoservice.save(thongbaocanluu);
		}catch(Exception e) {
			kiemtra = 1;
		}
		
		if(kiemtra == 1)
			return ResponseEntity.ok("1");
		return ResponseEntity.ok("0");
	}
	
	@PostMapping("/gettintucganday")
	public ResponseEntity<?> getTinTucGanDAy(){
		List<tintuc> tintucs = new ArrayList<tintuc>();
		int dem = 0;
		for(tintuc i:tintucservice.findAll()) {
			tintucs.add(i);
			dem++;
			if(dem == 5)
				break;
		}
		
		return ResponseEntity.ok(tintucs);
	}
}
