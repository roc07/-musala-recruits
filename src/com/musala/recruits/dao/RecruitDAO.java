package com.musala.recruits.dao;

import java.util.List;

import com.musala.recruits.entity.Recruit;

public interface RecruitDAO {

	public List<Recruit> getAllRecruits();
	
	public void saveRecruit(Recruit theRecruit);
	
	public Recruit getRecruit(int id);
	
	public void deleteRecruit(int id);
	
}

