package com.skilldistillery.jpafencingclubs.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpafencingclubs.data.FencingClubDAO;
import com.skilldistillery.jpafencingclubs.entities.FencingClub;


@Controller
public class FencingClubController {
	
	@Autowired
	private FencingClubDAO dao;
	
	@RequestMapping(path= {"/","home.do"})
	public String home(Model model) {
		List<FencingClub> clubs = dao.findAll();
		model.addAttribute("clubs", clubs);
		return "home";
	}
	
//	@RequestMapping(path= {"/", "home.do"})
//	public String index(Model model) {
//		List<FencingClub> films = dao.findAll();
//		model.addAttribute("films", films);
//		//	  return "WEB-INF/index.jsp";
//	   return "index"; // if using a ViewResolver.
//	}
	@RequestMapping(path="getClubById.do")
	public String showClub(Integer fid, Model model) {
		FencingClub club = dao.findById(fid);
		model.addAttribute("club", club);
		return "club/show";
	}

}
