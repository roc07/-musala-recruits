package com.musala.recruits.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.musala.recruits.service.RecruitService;


@Controller
@RequestMapping("/recruit")
public class RecruitController {

	@Autowired
	private RecruitService recruitService;
	
	@RequestMapping("/s")
	public String dso() {
		return null;
		
	}
}
