package com.skilldistillery.jpafencingclubs.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	@RequestMapping(path="getClubByID.do", method = RequestMethod.GET)
	public String showClub(Integer clubId, Model model) {
		FencingClub club = dao.findById(clubId);
		model.addAttribute("club", club);
		return "fencingClub/show";
	}
	
	@RequestMapping(path="getClubByState.do")
	public String showClubsByState(String clubState, Model model) {
		FencingClub club = dao.findByState(clubState);
		model.addAttribute("club", club);
		return "fencingClub/show";
	}
	
	@RequestMapping(path="addClub.do")
	public String addClub(FencingClub club, Model model) {
		club = dao.create(club);
		model.addAttribute("club", club);
		return "club/show";
	}
	
	@RequestMapping(path="updateClub.do")
	public String updateClub(Integer clubId, Model model) {
		FencingClub club = dao.update(clubId, null);
		model.addAttribute("club", club);
		return "club/show";
	}
	
	@RequestMapping(path="removeClub.do")
	public String deleteClub(Integer clubId, Model model) {
		boolean club = dao.destroy(clubId);
		model.addAttribute("club", club);
		return "club/show";
	}

}
