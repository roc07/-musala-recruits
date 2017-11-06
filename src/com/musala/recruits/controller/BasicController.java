package com.musala.recruits.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.musala.recruits.entity.Recruit;
import com.musala.recruits.service.RecruitService;

@Controller
public class BasicController {
	
	@Autowired
	private RecruitService recruitService; 
	
	@RequestMapping("/")
	public String indexPage() {		
		return "base";
	}
	
	@GetMapping("/generalInfoPage")
	public String listRecruits(Model theModel) {
		
		//get recruits from DAO
		//save them to the page model
		
		
		List<Recruit> allRecruits = recruitService.getAllRecruits();
		theModel.addAttribute("allRecruits", allRecruits);
		
		//we need this, so /addRecruit will work
		theModel.addAttribute("recruit", new Recruit());
		
		return "general-info-page";
	}
	
	@GetMapping("/generateTemplate")
	public String generateScoreTemplate(@RequestParam("scoreValue") int score, Model theModel) {
		
		//get score test value, convert it to email template
		StringBuilder template = new StringBuilder();
		template.append("This field will hold the email template with value: " + score);
		
		theModel.addAttribute("scoreTextTemplate", template);
		List<Recruit> allRecruits = recruitService.getAllRecruits();
		theModel.addAttribute("allRecruits", allRecruits);
		
		return "general-info-page";
	}
	
	@GetMapping("/addRecruitPage")
	public String addRecruitPage(@ModelAttribute("recruit") Recruit recruit) {
		
		return "add-recruit";
	}
	
	@PostMapping("/addRecruit")
	public String quickAddRecruit(@ModelAttribute("recruit") Recruit recruit, Model theModel) {
		
		recruitService.saveRecruit(recruit);

		theModel.addAttribute("success", "Done!");
		
		return "add-recruit";
	}
	
	@GetMapping("/deleteRecruit")
	public String quickDeleteRecruit(@ModelAttribute("recruitId") int theId) {
		
		recruitService.deleteRecruit(theId);
		
		return "general-info-page";
	}
	
//	@GetMapping("/findRecruit")
//	public String findRecruit(@ModelAt) {
//		re
//	}
	
	
}
