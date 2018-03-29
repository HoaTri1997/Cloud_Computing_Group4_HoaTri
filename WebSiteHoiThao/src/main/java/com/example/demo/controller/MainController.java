package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.example.demo.model.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.service.thongbaoService;
import com.example.demo.service.tintucService;
import com.example.demo.service.userService;

@Controller
public class MainController {
	
	@Autowired
	private thongbaoService thongbaoservice;
	@Autowired
	private tintucService tintucservice;
	@Autowired
	private userService userservice;
	
	@GetMapping("/")
	public String home(HttpServletRequest request, HttpSession session) {
		request.setAttribute("thongbaoLast", thongbaoservice.findthongbaoLast());
		request.setAttribute("tintucganday", tintucservice.findTinTucGanDay());
		if(session.getAttribute("id") != null)
			request.setAttribute("dangnhap", 1);
		else
			request.setAttribute("dangnhap", 0);
		return "index";
	}
	
	@GetMapping("/tintucdetail")
	public String tintucDetail(HttpServletRequest request) {
		return "tintucdetail";
	}
	
	@GetMapping("/dangxuat")
	public String dangXuat(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/ToLogin")
	public String tologin(HttpServletRequest request) {
		
		return "dangnhap";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String findUser(@RequestParam String taikhoan,@RequestParam String matkhau, HttpServletRequest request, HttpSession session) {
		user us = new user();
		
			user u=	userservice.TK(taikhoan,matkhau);
			 if(u.getTaikhoan()=="")
			 {
				 String message = "Đăng nhập thất bại !!";
				 request.setAttribute("message",message);
				 return "dangnhap";
			 }
			 
			session.setAttribute("id", u.getId());
			return "redirect:/";
		
	}
}
