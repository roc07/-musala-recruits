package com.musala.recruits.service;

import java.util.List;

import com.musala.recruits.entity.Recruit;

public interface RecruitService {

	public List<Recruit> getAllRecruits();
	
	public void saveRecruit(Recruit theRecruit);
	
	public Recruit getRecruit(int id);
	
	public void deleteRecruit(int id);
	
}
