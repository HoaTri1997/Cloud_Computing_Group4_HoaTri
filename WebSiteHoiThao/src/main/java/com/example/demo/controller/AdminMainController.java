package com.example.demo.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.tintuc;
import com.example.demo.service.tintucService;

@Controller
public class AdminMainController {
	
	@Autowired
	private tintucService conferService;
	
	
	@GetMapping("/AdminManaged")
	public String AdminManaged(HttpServletRequest request){
		request.setAttribute("conferences", conferService.findAllPhuc());		
		return "AdminManaged";
	}
	
	@GetMapping("/AdminNotificationManaged")
	public String AdminNotificationManaged(HttpServletRequest request){
		return "AdminNotificationManaged";
	}
	
	@PostMapping("/publish-article")
	public String PublishArticle(@ModelAttribute tintuc conference, BindingResult bindingResult, HttpServletRequest request){
		conference.setNgaytao(new Date());
		conferService.Save(conference);
		request.setAttribute("conferences", conferService.findAllPhuc());
		return "AdminManaged";
	}
	
	@GetMapping("/add-article")
	public String AddArticle(HttpServletRequest request){
		return "AdminAddArticle";
	}
	@GetMapping("/delete-article")
	public String DeleteArticle(@RequestParam int id, HttpServletRequest request){
		conferService.Delete(id);
		request.setAttribute("conferences", conferService.findAllPhuc());	
		return "AdminManaged";
	}
	@GetMapping("/update-article")
	public String UpdateArticle(@RequestParam int id, HttpServletRequest request){		
		request.setAttribute("conference", conferService.findConference(id));	
		return "AdminAddArticle";
	}
}
