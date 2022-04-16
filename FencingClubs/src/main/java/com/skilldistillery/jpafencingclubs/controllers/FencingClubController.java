package com.skilldistillery.jpafencingclubs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpafencingclubs.data.FencingClubDAO;

@Controller
public class FencingClubController {
	
	@Autowired
	private FencingClubDAO dao;
	
	@RequestMapping(path= {"/","home.do"})
	public String home(Model model) {
		model.addAttribute("DEBUG", dao.findById(1));
		return "home";
	}

}
